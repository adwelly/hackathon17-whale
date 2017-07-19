# hackathon17-whale

Install a recent version of Docker and docker compose

To build and run the container 
```
$ docker-compose build
$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
mongo               0.1                 38668c5b900b        27 minutes ago      633 MB
help-to-save-stub   0.1                 2bf5d07d8c39        29 minutes ago      1.21 GB
ubuntu              16.04               104bec311bcd        7 months ago        129 MB
ubuntu              latest              104bec311bcd        7 months ago        129 MB

$ docker-compose up
```
You can test the  help-to-save-container with a curl command which should return an unauthorized response:
```
curl -H "Content-Type: application/json" -v -X POST -d '{}' http://localhost:7002/help-to-save-stub/squid/create-account 
Note: Unnecessary use of -X or --request, POST is already inferred.
*   Trying ::1...
* TCP_NODELAY set
* Connected to localhost (::1) port 7002 (#0)
> POST /help-to-save-stub/squid/create-account HTTP/1.1
> Host: localhost:7002
> User-Agent: curl/7.51.0
> Accept: */*
> Content-Type: application/json
> Content-Length: 2
> 
* upload completely sent off: 2 out of 2 bytes
< HTTP/1.1 401 Unauthorized
< Cache-Control: no-cache,no-store,max-age=0
< Content-Length: 0
< Date: Wed, 19 Jul 2017 13:14:29 GMT
< 
* Curl_http_done: called premature == 0
* Connection #0 to host localhost left intact
```
You can test the mongo container with an nc command:
```
$ nc localhost 27017
```

