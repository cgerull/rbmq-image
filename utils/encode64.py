import base64
import sys

password = "AdminP@ssw0rd"

def encode(string):
    # URL and Filename Safe Base64 Encoding
    encodedBytes = base64.urlsafe_b64encode(string.encode("utf-8"))
    encodedString = encodedBytes.decode('utf-8')
    return encodedString

if __name__ == '__main__':
    if 2 == len(sys.argv):
        print(encode(sys.argv[1]))
    else:
        print("Usage: \nencode64.py String_to_encode")
