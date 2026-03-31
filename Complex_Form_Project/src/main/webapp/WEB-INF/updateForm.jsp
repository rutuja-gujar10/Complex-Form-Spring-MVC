<%@page import="java.util.*"%>
<%@page import="com.mvc.entity.Student"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>

<style>

/* Reset */
*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Segoe UI', sans-serif;
}

/* Background */
body{
background:#f5f1e6; /* beige */
display:flex;
justify-content:center;
align-items:flex-start;
padding:40px 0;
}

/* Container */
.container{
background:#ffffff;
padding:40px;
border-radius:12px;
width:700px;
box-shadow:0 6px 18px rgba(0,0,0,0.15);
}

/* Title */
h1{
text-align:center;
color:#8b5e3c; /* brown */
margin-bottom:20px;
}

/* Labels */
label{
font-weight:600;
display:block;
margin-top:12px;
color:#5a3e2b;
}

/* Inputs */
input,
select,
textarea{
width:100%;
padding:10px;
margin-top:5px;
border:1px solid #dcdcdc;
border-radius:6px;
outline:none;
font-size:14px;
transition:0.2s;
}

/* Focus */
input:focus,
select:focus,
textarea:focus{
border-color:#a67c52;
box-shadow:0 0 5px rgba(166,124,82,0.3);
}

/* Radio */
.inline{
width:auto;
margin-right:8px;
}

/* Courses */
.courseRow{
display:grid;
grid-template-columns:repeat(3,1fr);
gap:10px;
margin-top:8px;
}

.courseRow label{
display:flex;
align-items:center;
gap:6px;
padding:8px;
border-radius:6px;
background:#f8f4ec;
border:1px solid #e0d6c8;
cursor:pointer;
transition:0.3s;
}

.courseRow label:hover{
background:#efe4d3;
border-color:#a67c52;
}

.courseRow input{
accent-color:#a67c52;
}

/* Textarea */
textarea{
resize:vertical;
min-height:80px;
background:#faf8f3;
}

/* Button */
button{
width:100%;
padding:12px;
margin-top:20px;
border:none;
border-radius:8px;
background:#a67c52;
color:white;
font-size:16px;
cursor:pointer;
transition:0.3s;
}

button:hover{
background:#8b5e3c;
}

/* Bottom Buttons */
.links{
margin-top:20px;
text-align:center;
}

.links a{
text-decoration:none;
margin:5px;
padding:10px 18px;
border-radius:6px;
background:#6f4e37;
color:white;
display:inline-block;
transition:0.3s;
}

.links a:hover{
background:#5a3e2b;
}

/* Responsive */
@media (max-width:768px){

.container{
width:90%;
padding:25px;
}

.courseRow{
grid-template-columns:repeat(2,1fr);
}

}

@media (max-width:480px){

.courseRow{
grid-template-columns:1fr;
}

}

</style>

</head>
<body>

<%
Student s = (Student)request.getAttribute("s");
String path = request.getContextPath();
List<String> courses = s.getCourses();
%>

<div class="container">

<h1>Update Student</h1>

<form action="<%=path%>/updateSuccess" method="post">

<input type="hidden" name="id" value="<%=s.getId()%>">

<label>First Name</label>
<input type="text" name="firstName" value="<%=s.getFirstName()%>">

<label>Middle Name</label>
<input type="text" name="middleName" value="<%=s.getMiddleName()%>">

<label>Last Name</label>
<input type="text" name="lastName" value="<%=s.getLastName()%>">

<label>Email</label>
<input type="email" name="email" value="<%=s.getEmail()%>">

<label>Branch</label>
<select name="branch">
<option <%=s.getBranch().equals("CSE")?"selected":""%> value="CSE">CSE</option>
<option <%=s.getBranch().equals("IT")?"selected":""%> value="IT">IT</option>
<option <%=s.getBranch().equals("ME")?"selected":""%> value="ME">ME</option>
<option <%=s.getBranch().equals("CE")?"selected":""%> value="CE">CE</option>
<option <%=s.getBranch().equals("EE")?"selected":""%> value="EE">EE</option>
<option <%=s.getBranch().equals("ECE")?"selected":""%> value="ECE">ECE</option>
<option <%=s.getBranch().equals("AI")?"selected":""%> value="AI">AI</option>
<option <%=s.getBranch().equals("DS")?"selected":""%> value="DS">DS</option>
</select>

<label>College</label>
<input type="text" name="collegeName" value="<%=s.getCollegeName()%>">

<label>Gender</label>
<input class="inline" type="radio" name="gender" value="Male"
<%=s.getGender().equals("Male")?"checked":""%>> Male

<input class="inline" type="radio" name="gender" value="Female"
<%=s.getGender().equals("Female")?"checked":""%>> Female

<input class="inline" type="radio" name="gender" value="Other"
<%=s.getGender().equals("Other")?"checked":""%>> Other

<label>Age</label>
<input type="number" name="age" value="<%=s.getAge()%>">

<label>Nationality</label>
<input type="text" name="nationality" value="<%=s.getNationality()%>">

<label>Blood Group</label>
<input type="text" name="bloodGroup" value="<%=s.getBloodGroup()%>">

<label>Permanent Address</label>
<input type="text" name="address.address1" value="<%=s.getAddress().getAddress1()%>">

<label>Current Address</label>
<input type="text" name="address.address2" value="<%=s.getAddress().getAddress2()%>">

<label>City</label>
<input type="text" name="address.city" value="<%=s.getAddress().getCity()%>">

<label>State</label>
<input type="text" name="address.state" value="<%=s.getAddress().getState()%>">

<label>Country</label>
<input type="text" name="address.country" value="<%=s.getAddress().getCountry()%>">

<label>Courses</label>

<label>Courses</label>

<div class="courseRow">

<label><input type="checkbox" name="courses" value="Java"
<%=courses.contains("Java")?"checked":""%>> Java</label>

<label><input type="checkbox" name="courses" value="Python"
<%=courses.contains("Python")?"checked":""%>> Python</label>

<label><input type="checkbox" name="courses" value="C++"
<%=courses.contains("C++")?"checked":""%>> C++</label>

<label><input type="checkbox" name="courses" value="JavaScript"
<%=courses.contains("JavaScript")?"checked":""%>> JavaScript</label>

<label><input type="checkbox" name="courses" value="Data Science"
<%=courses.contains("Data Science")?"checked":""%>> Data Science</label>

<label><input type="checkbox" name="courses" value="Machine Learning"
<%=courses.contains("Machine Learning")?"checked":""%>> ML</label>

<label><input type="checkbox" name="courses" value="Web Development"
<%=courses.contains("Web Development")?"checked":""%>> Web Development</label>

<label><input type="checkbox" name="courses" value="DevOps"
<%=courses.contains("DevOps")?"checked":""%>> DevOps</label>

<label><input type="checkbox" name="courses" value="Cybersecurity"
<%=courses.contains("Cybersecurity")?"checked":""%>> Cybersecurity</label>

</div>

<label>Feedback</label>
<textarea name="feedback"><%=s.getFeedback()%></textarea>

<button type="submit">Update</button>

</form>

<div class="links">
<a href="<%=path%>/display">Display</a>
<a href="<%=path%>/index">Home</a>
</div>

</div>

</body>
</html>