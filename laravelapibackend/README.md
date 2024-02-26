## Installation Guide
For Admin : 
Email : admin@gmail.com
Password: 123456

For User:
Email: user@gmail.com
Password : 123456

## The default migration sets the usertype as admin.

After goes through the frontend admin can add user and book.

API End Point :
* Login : /api/login
Description: Used for user authentication and obtaining access tokens.
Method ```Post```


* Get user details : /api/user 
Method ```Post```, ```GET```, ```PUT```,```DELETE```
Description: Allows retrieval, modification, and deletion of user details.


* Get book details : /api/book
Method ```Post```, ```GET```, ```PUT```,```DELETE```
Description: Allows retrieval, modification, and deletion of book details.

* logout : /api/logout
Method ```GET```
Description: Terminates the current session and invalidates the access token.

```
Authentication Package : Postman
Laravel Version : 10
MySQL Database
Database for testing included on : DBs Folder
```