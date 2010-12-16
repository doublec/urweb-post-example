# Ur/Web Post Example

This is an example of handling POST requests from external services using Ur/Web. A function is created to store the POST data in the database which the main page displays. A 'dummy' function is needed containing a FORM that posts to this function to get the program to compile.

Requires:

* Ur/Web - http://www.impredicative.com/ur/
* SQLite - http://www.sqlite.org

To build:

    $ git clone git://github.com/doublec/urweb-post-example
    $ cd urweb-post-example
    $ make

To run:

    $ ./post.exe

To post data to the external POST interface:

    $ curl -F "message=hello" http://127.0.0.1:8080/notifyMessage

To display posted message go to http://localhost:8080/main in a web browser.

