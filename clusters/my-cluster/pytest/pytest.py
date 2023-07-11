#!/usr/bin/python3

import http.server
import socketserver

## Testing commit tag
# Define the port to listen on
PORT = 8080

# Create a request handler class
class MyRequestHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/html')
        self.end_headers()
        self.wfile.write(b'Hello, World! v1.21.0')

# Create a socket server and bind it to the specified port
with socketserver.TCPServer(("", PORT), MyRequestHandler) as httpd:
    print(f"Server listening on port {PORT}")
    # Start the server
    httpd.serve_forever()
