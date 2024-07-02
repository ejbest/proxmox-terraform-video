# hash_password.py
import hashlib
import sys
import json

password = sys.argv[1]
hashed_password = hashlib.sha256(password.encode()).hexdigest()

print(json.dumps({"hashed_password": hashed_password}))
