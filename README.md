# 🎓 Student Management System

A complete **Student Management System** developed using **Spring MVC**, **Hibernate**, **JSP**, and **MySQL**.  
This project demonstrates CRUD (Create, Read, Update, Delete) operations with proper MVC architecture and database integration.

---

# 📌 Project Overview

The Student Management System is a web application that helps manage student information efficiently.  
Users can:

- Add new students
- View student records
- Update existing student details
- Delete student information

The project follows the **MVC Architecture** using Spring Framework and Hibernate ORM for database operations.

---

# 🚀 Features

✅ Add Student Records  
✅ Display All Students  
✅ Update Student Details  
✅ Delete Student Records  
✅ Hibernate ORM Integration  
✅ Spring MVC Architecture  
✅ MySQL Database Connectivity  
✅ Form Validation Support  
✅ Exception Handling  
✅ Responsive User Interface  

---

# 🛠️ Technologies Used

| Technology | Description |
|------------|-------------|
| Java | Backend Programming Language |
| Spring MVC | Web Framework |
| Hibernate ORM | Database ORM Framework |
| MySQL | Relational Database |
| JSP | View Technology |
| JSTL | JSP Tag Library |
| Maven | Dependency Management |
| Apache Tomcat | Application Server |

---

# 📂 Project Structure

```bash
Student-Management-System/
│
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/
│   │   │       └── mvc/
│   │   │           ├── controller/
│   │   │           ├── entity/
│   │   │           ├── repository/
│   │   │           ├── service/
│   │   │           └── exception/
│   │   │
│   │   ├── resources/
│   │   │
│   │   └── webapp/
│   │       ├── WEB-INF/
│   │       └── views/
│   │
│   └── test/
│
├── pom.xml
└── README.md
```

---

# ⚙️ Prerequisites

Before running this project, ensure you have installed:

- Java JDK 8 or above
- Apache Maven
- MySQL Server
- Apache Tomcat
- IDE (Eclipse / IntelliJ / STS)

---

# 🗄️ Database Configuration

## Step 1: Create Database

Open MySQL and execute:

```sql
CREATE DATABASE student_management;
```

---

## Step 2: Configure Database Credentials

Update your database configuration file.

Example:

```properties
jdbc.driver=com.mysql.cj.jdbc.Driver
jdbc.url=jdbc:mysql://localhost:3306/student_management
jdbc.username=root
jdbc.password=your_password
hibernate.dialect=org.hibernate.dialect.MySQL8Dialect
hibernate.hbm2ddl.auto=update
hibernate.show_sql=true
```

---

# 📦 Maven Dependencies

Add the following dependencies in `pom.xml`.

## Spring MVC

```xml
<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-webmvc</artifactId>
    <version>5.3.23</version>
</dependency>
```

## Hibernate

```xml
<dependency>
    <groupId>org.hibernate</groupId>
    <artifactId>hibernate-core</artifactId>
    <version>5.6.10.Final</version>
</dependency>
```

## MySQL Connector

```xml
<dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>8.0.30</version>
</dependency>
```

## JSTL

```xml
<dependency>
    <groupId>javax.servlet</groupId>
    <artifactId>jstl</artifactId>
    <version>1.2</version>
</dependency>
```

---

# ▶️ How to Run the Project

## Step 1: Clone Repository

```bash
git clone <repository-url>
```

---

## Step 2: Import Project

Import the project into:

- Eclipse
- IntelliJ IDEA
- Spring Tool Suite (STS)

as a **Maven Project**.

---

## Step 3: Build Project

```bash
mvn clean install
```

---

## Step 4: Deploy on Tomcat

- Copy generated WAR file
- Paste into Tomcat `webapps` folder
- Start Tomcat Server

---

## Step 5: Open in Browser

```bash
http://localhost:8080/StudentManagementSystem/
```

---

# 📄 Application Pages

| Module | Description |
|--------|-------------|
| Home Page | Landing page |
| Add Student | Add student details |
| Display Students | View all students |
| Update Student | Edit student data |
| Delete Student | Remove student record |

---

# 🧩 CRUD Operations

## ➕ Add Student

Users can enter:

- Student Name
- Email
- Course
- Address
- Phone Number

and save the data into the database.

---

## 📋 Display Students

Displays all students in tabular format.

---

## ✏️ Update Student

Allows editing of existing student details.

---

## ❌ Delete Student

Deletes student record using student ID.

---

# 🏗️ MVC Architecture Used

## Model

Handles database entities and business logic.

## View

JSP pages for user interface.

## Controller

Receives user requests and processes responses.

---


# 🔐 Exception Handling

The project includes:

- Global exception handling
- Validation error handling
- Database exception management

---

# 📚 Learning Objectives

This project helps in understanding:

- Spring MVC workflow
- Hibernate ORM mapping
- CRUD operations
- MVC architecture
- JSP integration
- Database connectivity

---

# 🤝 Future Enhancements

- User Authentication
- Role-Based Access
- Search & Filter Functionality
- Pagination
- REST API Integration
- Spring Boot Migration

---

# 👨‍💻 Author

Developed as a practice project for learning:

- Java Web Development
- Spring Framework
- Hibernate ORM
- MVC Architecture

---

# 📄 License

This project is open-source and available for educational purposes.

---

# ⭐ Support

If you like this project:

⭐ Star the repository  
⭐ Fork the project  
⭐ Contribute improvements  

---

# 📬 Contact

For suggestions or improvements, feel free to contribute or raise issues.

---
