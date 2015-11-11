# 建立 SSL 憑證

```
openssl req -x509 -newkey rsa:4086 -keyout key.pem -out cert.pem -days 3650 -nodes -sha256
```
