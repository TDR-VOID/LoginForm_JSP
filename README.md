# JSP User Authentication Demo

## Introduction

This repository contains a simple web-based login form for user authentication. The web application is designed to demonstrate the fundamental concepts of user login functionality. Built using Java Server Pages (JSP) and the NetBeans Integrated Development Environment (IDE), this project serves as a practical example of integrating server-side scripting with a relational database. The application is hosted locally using the Apache Tomcat server, making it easy to deploy and test in a development environment.   
<br>
 
The repository includes two versions of the login page:

1. [**Login_JSP:**](Login_JSP) This version uses a hardcoded user email and password for authentication.  

2. [**Login_JSP_MySQL:**](Login_JSP_MySQL) This version uses a MySQL database to store and authenticate user emails and passwords. MySQL is run using XAMPP.

<details>
<summary>Screenshots of the Web Pages</summary>
  <div style="display: flex; justify-content: center;">
  <img src="Screenshots/Home_Page.png" alt="Home_Page" width="500" />
  <img src="Screenshots/Login_Page.png" alt="Login_Page" width="500" />
  <img src="Screenshots/Welcome_Page.png" alt="Configure Apache Tomcat" width="500" />
</div>
</details>




<br>
Screenshots and steps for setting up the project and connecting the Tomcat server with NetBeans are provided in the setup section below.


## Setup

### Initial Project Setup and Connecting Tomcat Server with NetBeans
<br>

1. Download and Install NetBeans:
- Download the latest version of NetBeans from the [official website.](https://netbeans.apache.org/front/main/download/)
- Follow the installation instructions provided.

2. Download and Install Apache Tomcat:
- Download Apache Tomcat from the [official website.](https://tomcat.apache.org/whichversion.html)
- Extract the downloaded ZIP file to a preferred location on your system.
  
3. Configure Apache Tomcat in NetBeans:
- Open NetBeans.
- Go to Tools > Servers.
- Click the "Add Server" in the Servers window.
- Choose Apache Tomcat and specify the location of your Tomcat installation.
- Complete the configuration by following the on-screen instructions.

<details>
<summary>Configure Apache Tomcat</summary>
  <div style="display: flex; justify-content: center;">
  <img src="Screenshots/Servers_Window.png" alt="Configure Apache Tomcat" width="500" />
</div>
</details>

<br>

### Setting Up MySQL Database
<br>

1. Download and Install XAMPP:
- Download XAMPP from the [official website.](https://www.apachefriends.org/download.html)
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

## Project Structure

1. Login_JSP:

- Contains a simple login form with hardcoded user credentials.
- No database connection is used.

2. Login_JSP_MySQL:

- Connects to a MySQL database to validate user credentials.
- Uses JDBC to interact with the database.

## Running the Application

1. Deploying on Apache Tomcat:

- Open the project in NetBeans.
- Right-click on the project and select Run.
- The project will be deployed on the Apache Tomcat server.

<details>
<summary>Run project in NetBeans</summary>
  <div style="display: flex; justify-content: center;">
  <img src="Screenshots/Run_Project.png" alt="Run project in NetBeans" width="500" />
</div>
</details>

2. Accessing the Login Page:

- Open your web browser and go to http://localhost:8080/YourProjectName/Login.jsp (replace YourProjectName with your actual project name).


## Additional Notes
- Ensure the MySQL JDBC driver (mysql-connector-java-...jar) is added to your project's WEB-INF/lib directory.
- Update the database connection details (URL, username, password) in the Validation.jsp file according to your MySQL setup.
- Follow the setup instructions carefully to get the project running on your local machine.


