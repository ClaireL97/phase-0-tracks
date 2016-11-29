#Release 0

What are some common HTTP status codes?

* 200 OK (When a request has succeeded)
* 300 Multiple Choices (The requested resource has  different choices and cannot be resolved into one)
* 301 Moved Permanently (The resource has been assigned new permanent URRI and any future references to this resource should use one 
of the returned URIs.)
* 500 Internal Server Error (The server encounted an unexpected condition which prevented it from fulfilling the request)

What is the difference between a GET request and a POST request? When might each be used?

* GET requests data from a specified resource
* GET requests can be cached
* GET requests can be bookmarked

* POST submits data to be processesed to a specified resource
* POST requests are never cached
* POST requests do not remain in history and can't be bookmarked


**Optional bonus question**: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

* A cookie is a small text file that is stored by a browser that contain informatino that needs to be stored. Thenn it sends the info back when certain requests are called. HTTP requests can call the cookies and are created when requests are made.
