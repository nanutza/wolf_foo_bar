#9.1 How the Web Works

 Release 0: View HTTP Requests
----
##
1. What are some common HTTP status codes?
Every HTTP transaction has a status code sent back by the server to define how the server handled the transaction. Here is a list of the most common ones

###List of Common HTTP Status Codes

1. 200 OK
2. 300 Multiple Choices
3. 301 Moved Permanently
4. 302 Found
5. 304 Not Modified
6. 307 Temporary Redirect
7. 400 Bad Request
8. 401 Unauthorized
9. 403 Forbidden
10. 404 Not Found
11. 410 Gone
12. 500 Internal Server Error
13. 501 Not Implemented
14. 503 Service Unavailable
15. 550 Permission denied

see [W3C - 10 Status Code Definitions](https://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10)

----
##
2) What is the difference between a GET request and a POST request? When might each be used?

Two HTTP Request Methods: GET and POST
Two commonly used methods for a request-response between a client and server are: GET and POST.

*GET - Requests data from a specified resource
*POST - Submits data to be processed to a specified resource

see [HTTP Methods: GET vs. POST]
(http://www.w3schools.com/tags/ref_httpmethods.asp)

----
##
3) What is a cookie? How does it relate to HTTP requests?


###What is a cookie?

Quite simply, a cookie is a small text file that is stored by a browser on the user’s machine. Cookies are plain text; they contain no executable code. A web page or server instructs a browser to store this information and then send it back with each subsequent request based on a set of rules. Web servers can then use this information to identify individual users. Most sites requiring a login will typically set a cookie once your credentials have been verified, and you are then free to navigate to all parts of the site so long as that cookie is present and validated. Once again, the cookie just contains data and isn’t harmful in and of itself.

see [HTTP cookies explained]
(https://www.nczonline.net/blog/2009/05/05/http-cookies-explained/)