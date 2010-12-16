all: post.exe example.db

post.exe: post.ur post.urs post.urp
	urweb -dbms sqlite post

example.db: example.sql 
	-rm example.db
	sqlite3 example.db <example.sql

clean:
	-rm example.db
	-rm example.sql
	-rm post.exe
