
**TestSSLServer** is a SSL/TLS scanner application written by Thomas Pornin. I've dockerised this application using a lightweight Alpine Linux & Mono base.

TestSSLServer is a command-line tool which contacts a SSL/TLS server and obtains some information on its configuration. It aims at providing (part of) the functionality of Internet-based tools like Qualys SSL Server Test, but without the requirement of the server being Internet-reachable. You can use TestSSLServer on your internal network, to test your servers while they are not (yet) accessible from the outside.

Further details here: (http://www.bolet.org/TestSSLServer/)

To run the server (and have it clean up afterwards) simply run: 

```docker run -it --rm marklkelly/test-sslserver www.server-you-want-to-test.com```

There are a number of command-line arguments that can also be used:

```docker run -it --rm marklkelly/test-sslserver [ options ] servername [ port]```

Options:
  **-h**                print this help
  **-v**               verbose operation
  **-all**              exhaustive cipher suite enumeration
  **-min version**      set minimum version (SSLv3, TLSv1, TLSv1.1...)
  **-max version**      set maximum version (SSLv3, TLSv1, TLSv1.1...)
  **-sni name**         override the SNI contents (use '-' as name to disable)
  **-certs**            include full certificates in output
  **-t delay**          set read timeout (in seconds) for non-SSL detection
  **-prox name:port**   connect through HTTP proxy
  **-proxssl**          use SSL/TLS to connect to proxy
  **-ec**               add a 'supported curves' extension for all connections
  **-noec**             try connecting without a 'supported curves' extension
  **-text fname**       write text report in file 'fname' ('-' = stdout)
  **-json fname**       write JSON report in file 'fname' ('-' = stdout)


  Maintainer: [Mark L Kelly](www.twitter.com/marklkelly)
