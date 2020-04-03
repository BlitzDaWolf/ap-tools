# Gets the key from a prompt
read -p "Enter your key: " KEY
echo $KEY
exit

echo "Adding a ssh Key"

# Zorg dat je zeker in je home directory staat
cd ~

if [ -d ~/.ssh ]; then
	echo ".ssh Already exsits"
else
	# Aanmaken van de juiste directory. Geeft geen foutmelding als de directory reeds bestaat
	mkdir -p ~/.ssh

	# Zorg dat de juiste rechten staan op de .ssh folder
	chmod 700 ~/.ssh
fi

### Op de lijn hieronder je eigen public key invullen, deze wordt toegevoegd aan het juiste bestand
echo "$KEY" >> .ssh/authorized_keys
	
# En op de authorized_keys file
chmod 600 ~/.ssh/authorized_keys
