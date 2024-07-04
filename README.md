# JSP User Authentication Demo

## Introduction

This repository contains a simple web-based login form for user authentication. The web application is designed to demonstrate the fundamental concepts of user login functionality. Built using Java Server Pages (JSP) and the NetBeans Integrated Development Environment (IDE), this project serves as a practical example of integrating server-side scripting with a relational database. The application is hosted locally using the Apache Tomcat server, making it easy to deploy and test in a development environment.   
<br>
 
The repository includes two versions of the login page:

1. Login_jsp: This version uses a hardcoded user email and password for authentication.
2. Login_jsp_mysql: This version uses a MySQL database to store and authenticate user emails and passwords. MySQL is run using XAMPP.

<br>
Screenshots and steps for setting up the project and connecting the Tomcat server with NetBeans are provided in the setup section below.


## Setup

### Initial Project Setup and Connecting Tomcat Server with NetBeans
<br>
1. Download and Install NetBeans:

- Download the latest version of NetBeans from the official website.
- Follow the installation instructions provided.

2. Download and Install Apache Tomcat:

- Download Apache Tomcat from the official website.
- Extract the downloaded ZIP file to a preferred location on your system.

3. Configure Apache Tomcat in NetBeans:
- Open NetBeans.
- Go to Services > Servers.
- Right-click on Servers and select Add Server.
- Choose Apache Tomcat and specify the location of your Tomcat installation.
- Complete the configuration by following the on-screen instructions.

### Setting Up MySQL Database
<br>
1. Download and Install XAMPP:
- Download XAMPP from the official website.
- Follow the installation instructions provided.

2. Start MySQL:

- Open XAMPP Control Panel.
- Start the MySQL service.

3. Create and Populate the Database:

- Open phpMyAdmin from the XAMPP Control Panel.
- Create a new database named userdb.
- Run the following SQL queries to create and populate the users table:

```SQL

CREATE DATABASE userdb;

USE userdb;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO users (email, password) VALUES ('user@example.com', 'password123');
```
