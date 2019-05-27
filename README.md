# dhso/ngrok
> Another ngrok client by python.

# start ngrokd service 
```bash
docker run -d \
--name ngrokd \
--net=host \
--restart=always \
sequenceiq/ngrokd:latest \
-httpAddr=:4480 \
-httpsAddr=:4444 \
-domain=xxx.com
```

# run ngrok client
```bash
docker run -d \
--name ngrok \
--net=host \
--restart=always \
-e NGROK_HOST=xxx.com|xxx.xxx.xxx.xxx \
-e NGROK_PORT=4443 \
-e NGROK_BUFSIZE=8192 \
-v ngrok_app:/app \
dhso/ngrok:latest
```

# config

| ENV | VAL |
| --- | --- |
| NGROK_HOST | your ngrokd domain or IP |
| NGROK_PORT | default 4443 |
| NGROK_BUFSIZE | default 8192 |


```bash
in ngrok container
cd /app
edit ngrok.json
save ngrok.json and restart ngrok container
```

# ngrok.json example
```json
[{
    "protocol": "http",
    "hostname": "www.xxx.com",
    "subdomain": "",
    "rport": 0,
    "lhost": "127.0.0.1",
    "lport": 80
},{
    "protocol": "http",
    "hostname": "",
    "subdomain": "www",
    "rport": 0,
    "lhost": "127.0.0.1",
    "lport": 80
},{
    "protocol": "tcp",
    "hostname": "",
    "subdomain": "",
    "rport": 2222,
    "lhost": "127.0.0.1",
    "lport": 22
}]
```