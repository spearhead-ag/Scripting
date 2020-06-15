#!/usr/bin/python3
from urllib.request import urlopen, hashlib

#hidden password hash
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"

#convert common passwords to string generated from the given URL
common_Passwords = str(urlopen('https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-10000.txt').read(), 'utf-8')

#splits password into individual list
for passwordCheck in common_Passwords.split('\n'):
    #hash the passwords
    hashPassword = hashlib.sha256(bytes(passwordCheck, 'utf-8')).hexdigest()
    #check if password is the same against hidden password given
    if hashPassword == passwordHash:
        print(f"Password has been cracked! It was {passwordCheck}")
        quit()
    elif hashPassword != passwordHash:
        print(f"Password did not matched! Checking {passwordCheck}... {hashPassword}")
print("Password not available.")