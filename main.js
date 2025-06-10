// Import the http module to create an HTTP server
const http = require('http');

// Define the host and port for the server
const hostname = '127.0.0.1'; // Listen on all network interfaces
const port = 3000;

// Create an HTTP server
const server = http.createServer((req, res) => {
  // Set the response HTTP header with HTTP status and content type
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');

  // Send the response body "Hello, World!"
  res.end('Hello, World!\n');
});

// Make the server listen on the specified host and port
server.listen(port, hostname, () => {
  // Log a message to the console when the server starts
  console.log(`Server running at http://${hostname}:${port}/`);
});
