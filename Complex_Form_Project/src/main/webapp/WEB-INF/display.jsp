<%@ page import="java.util.*" %>
<%@ page import="com.mvc.entity.Student" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Students</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>

/* Reset */
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

/* Background (Beige) */
body{
    font-family: 'Segoe UI', sans-serif;
    background:#f5efe6;
}

/* NAVBAR */
.navbar{
    position:fixed;
    top:0;
    width:100%;
    padding:15px;
    background:#6d4c41; /* brown */
    color:white;
    text-align:center;
    font-size:20px;
    font-weight:bold;
    box-shadow:0 3px 10px rgba(0,0,0,0.2);
}

/* CONTENT */
.content{
    margin-top:80px;
    padding:20px;
}

/* Title */
h2{
    text-align:center;
    margin-bottom:20px;
    color:#5d4037;
}

/* TABLE */
table{
    width:100%;
    border-collapse:collapse;
    background:#fffaf3;
    border:1px solid #d7ccc8;
    box-shadow:0 4px 12px rgba(0,0,0,0.1);
}

/* Header */
th{
    background:#a1887f;
    color:white;
    padding:12px;
    border:1px solid #d7ccc8;
}

/* Cells */
td{
    padding:10px;
    border:1px solid #e0d7cf;
    text-align:center;
}

/* Row styling */
tr:nth-child(even){
    background:#f9f5f0;
}

tr:hover{
    background:#efe7dd;
}

/* Boxes */
.addressBox, .courseBox, .feedbackBox{
    text-align:left;
    font-size:12px;
}

.feedbackBox{
    max-width:200px;
    word-break:break-word;
}

/* Buttons */
.update{
    background:#8d6e63;
    color:white;
    padding:6px 10px;
    border-radius:5px;
    text-decoration:none;
}

.update:hover{
    background:#6d4c41;
}

.delete{
    background:#d32f2f;
    color:white;
    padding:6px 10px;
    border-radius:5px;
    text-decoration:none;
}

.delete:hover{
    background:#b71c1c;
}

/* Bottom Buttons */
.bottom-buttons{
    margin-top:25px;
    display:flex;
    justify-content:center;
    gap:15px;
    flex-wrap:wrap;
}

.bottom-buttons a{
    padding:10px 18px;
    background:#8d6e63;
    color:white;
    border-radius:6px;
    text-decoration:none;
    transition:0.3s;
}

.bottom-buttons a:hover{
    background:#6d4c41;
}

/* Mobile */
@media (max-width:768px){
    table{
        font-size:12px;
    }
}

</style>

</head>
<body>

<!-- Centered Navbar Title -->
<div class="navbar">
    Student Management System
</div>

<div class="content">

<h2>Student List</h2>

<table>

<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Branch</th>
<th>College</th>
<th>Gender</th>
<th>Age</th>
<th>Address</th>
<th>Courses</th>
<th>Feedback</th>
<th>Update</th>
<th>Delete</th>
</tr>

<%
List<Student> list = (List<Student>) request.getAttribute("listOfStudent");
String path = request.getContextPath();

if(list != null){
for(Student s : list){
%>

<tr>

<td><%= s.getId() %></td>

<td>
<%= s.getFirstName() %>
<%= s.getMiddleName() %>
<%= s.getLastName() %>
</td>

<td><%= s.getEmail() %></td>
<td><%= s.getBranch() %></td>
<td><%= s.getCollegeName() %></td>
<td><%= s.getGender() %></td>
<td><%= s.getAge() %></td>

<td class="addressBox">
<b>Permanent:</b><br>
<%= s.getAddress().getAddress1() %><br><br>

<b>Current:</b><br>
<%= s.getAddress().getAddress2() %><br><br>

<b>City:</b> <%= s.getAddress().getCity() %><br>
<b>State:</b> <%= s.getAddress().getState() %><br>
<b>Country:</b> <%= s.getAddress().getCountry() %>
</td>

<td class="courseBox">
<%
if(s.getCourses()!=null){
for(String c : s.getCourses()){
%>
• <%= c %><br>
<%
}
}
%>
</td>

<td class="feedbackBox">
<%= s.getFeedback() %>
</td>

<td>
<a class="update" href="<%=path%>/update/<%=s.getId()%>">
<i class="fa fa-edit"></i>
</a>
</td>

<td>
<a class="delete" href="<%=path%>/delete/<%=s.getId()%>">
<i class="fa fa-trash"></i>
</a>
</td>

</tr>

<%
}
}
%>

</table>

<!-- Bottom Buttons -->
<div class="bottom-buttons">
    <a href="<%=path%>/index">Home</a>
    <a href="<%=path%>/addStudent">Add Student</a>
</div>

</div>

</body>
</html>