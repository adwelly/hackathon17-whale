# hackathon17-whale

Install a recent version of Docker

To build the container (assuming the Docker file and entry script are in directory mvp):
```
$ docker build
$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
<none>              <none>              65dbb6844c86        25 minutes ago      1.43 GB
$ docker run -p 7002:7002 65db
```
You can test this particular container with a curl command which should return an unauthorized response:
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
