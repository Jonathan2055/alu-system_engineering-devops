SH Project
This project contains a few bash scripts related to SSH key generation and connection setup.

Files and What They Do
0-use_a_private_key
A script to connect to a server using SSH and a private key.

Uses the key: ~/.ssh/school

Connects with the user: ubuntu

Uses only short flags (no -l)

Run with:

bash
Copy
Edit
./0-use_a_private_key
1-create_ssh_key_pair
This script creates an RSA key pair called school.

4096 bits

Protected with passphrase betty

Run with:

bash
Copy
Edit
./1-create_ssh_key_pair
It will create:

school (private key)

school.pub (public key)

2-ssh_config
This is an SSH config file that lets you connect without typing the full command each time.

Uses ~/.ssh/school as the key

Disables password authentication

Sample config:

perl
Copy
Edit
Host my-server
    HostName 98.98.98.98
    User ubuntu
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
3-let_me_in
You need to add this SSH public key to your server:

Copy
Edit
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNdtrNGtTXe5Tp1EJQop8mOSAuRGLj...
Add it like this:

bash
Copy
Edit
echo "ssh-rsa AAAAB3..." >> ~/.ssh/authorized_keys

