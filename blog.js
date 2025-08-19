
const http = require('http');

const messageFromHost = "This is the blog subdomain"
http.createServer(function (req, res) {
	res.write("oh yeah we got a subdomain with a different app running!" + "\n" + messageFromHost) ;
	res.end();
}
).listen(3002);

console.log("Server started on port 3002")
