#!/usr/bin/python3
import hashlib 
from itertools import product

passwordHash = "5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5" 
chars = 'abcdefghijklmnopqrstuvwxyz0123456789A'


for length in range(0,1000):
    to_attempt = product(chars, repeat=length)
    for attempt in to_attempt:
        stri = (''.join(attempt))
        hashtry = hashlib.sha256(stri.encode("utf-8")).hexdigest() 
        print(hashtry)
        if ( hashtry == passwordHash ):
            print("found match")
            break
        else:
            print("was not a match") 
