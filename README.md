# rbmq-image

Generic Rabbit image for internal testing.

## Configure

Add and / or change the predifined user as fit.

The supplied passwords should be base64 encoded. You can use an online tool
like [Base64 Encode and Decode - Online](https://www.base64encode.org/) or use
a Python script like this.

```python
import base64
import sys

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
```

Default passwords:

```json
"password_hash": "cmJtcV9wYXNz"    #"rbmq_pass",

"password_hash": "QWRtaW5QQHNzdzByZA=="  #"AdminP@ssw0rd",
```

## Build

```bash
sudo docker build -t rbmq:<tag> .
```

## Run

```bash
sudo docker run -d --name rbmq -p 5671:5672 -p 15671:15671 rbmq:<tag>
```
