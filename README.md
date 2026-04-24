# 🎓 Student Management System (Spring MVC + Hibernate)

A modern **Student Management System** built using Spring MVC, Hibernate, JSP, and MySQL.  
This project demonstrates a complete **CRUD-based web application** following a layered architecture (Controller → Service → Repository → Entity), ensuring scalability and maintainability.

---

## 🚀 Features
✅ Add Student  
✅ Update Student  
✅ Delete Student  
✅ Display All Students  
✅ Layered Architecture (Controller → Service → Repository → Entity)  
✅ Spring MVC Configuration  
✅ Hibernate ORM Integration  
✅ JSP-based UI with modern design  
✅ Maven Project Structure  

---

##🏗️ Project Architecture
com.mvc
│
├── controller
│ └── StudentController
│
├── service
│ ├── StudentService
│ └── StudentServiceImpl
│
├── repository
│ └── StudentRepository
│
├── entity
│ └── Student
│
└── webapp
└── WEB-INF
└── pages
├── index.jsp
├── addStudent.jsp
├── display.jsp
└── updateForm.jsp

---

## ⚙️ Technologies Used
- Java 8+  
- Spring MVC  
- Hibernate (ORM)  
- JSP & Servlet  
- Maven  
- MySQL  
- HTML / CSS  
- Apache Tomcat Server  

---

## 🧩 Layered Flow
JSP → Controller → Service → Repository → Hibernate → Database  

---

## 📸 UI Pages
- Home Page  
- Add Student Form  
- Display Students Table  
- Update Student Form  

✨ UI Highlights:
- Glassmorphism effect  
- CSS transitions  
- Responsive layout  
- Styled forms  

---

## 🛠️ Configuration

### View Resolver
/WEB-INF/pages/
.jsp

### Example Controller Mapping
```java
@RequestMapping("/display")
public String getAllData(Model model) {
    List<Student> list = service.getAllStudentsData();
    model.addAttribute("listOfStudent", list);
    return "display";
}
▶️ How to Run
Clone the repository
git clone https://github.com/your-repo-name.git
Import as Maven Project
Configure MySQL database
Run on Apache Tomcat Server
Open in browser
http://localhost:8080/
📌 Database Table

student

id
name
marks
branch
college

✅ CRUD Operations
| Operation   | URL              |
| ----------- | ---------------- |
| Home        | `/`              |
| Add         | `/addStudent`    |
| Save        | `/addSuccess`    |
| Display     | `/display`       |
| Delete      | `/delete/{id}`   |
| Update Form | `/update/{id}`   |
| Update Save | `/updateSuccess` |

💡 Learning Purpose

This project helps in understanding:

Spring MVC fundamentals
Hibernate ORM integration
MVC architecture design
JSP form handling
CRUD operations
Real-world project structuring
