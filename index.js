const http = require('http');

const PORT = 80;

const server = http.createServer((req, res) => {
  res.end('Hello from Node.js App!');
});

server.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
