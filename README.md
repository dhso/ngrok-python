# dhso/ngrok

# run 
```
docker run -d \
--name ngrok \
--net=host \
-e NGROK_HOST=xxx.xxx.xxx.xxx \
-e NGROK_PORT=4443 \
-e NGROK_BUFSIZE=8192 \
-v ngrok_app:/app \
dhso/ngrok:latest
```