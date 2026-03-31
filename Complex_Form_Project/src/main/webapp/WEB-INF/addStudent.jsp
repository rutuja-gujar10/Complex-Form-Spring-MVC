<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>

<style>

/* Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Background (same as display page) */
body {
    font-family: 'Segoe UI', sans-serif;
    background: #f5f1e6; /* soft beige */
}

/* Container */
.container {
    width: 90%;
    max-width: 750px;
    margin: 40px auto;
    background: #ffffff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

/* Title */
h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #5a3e2b; /* brown */
}

/* Labels */
label {
    font-weight: 600;
    color: #4a3b2c;
}

/* Inputs */
input, select, textarea {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    margin-bottom: 15px;
    border-radius: 6px;
    border: 1px solid #d6cfc7;
    font-size: 14px;
    transition: 0.3s;
}

/* Focus */
input:focus, select:focus, textarea:focus {
    border-color: #a67c52;
    outline: none;
    box-shadow: 0 0 5px rgba(166,124,82,0.3);
}

/* Radio */
.inline {
    width: auto;
    margin-right: 10px;
}

/* Courses */
.courseRow {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 10px;
    margin-bottom: 15px;
}

.courseRow label {
    display: flex;
    align-items: center;
    gap: 6px;

    padding: 10px;
    border-radius: 6px;
    border: 1px solid #e0d8cf;

    background: #faf7f2;
    cursor: pointer;
    transition: 0.3s;
}

.courseRow label:hover {
    background: #efe6db;
    border-color: #a67c52;
}

.courseRow input {
    accent-color: #8b5e3c; /* brown checkbox */
}

/* Textarea */
textarea {
    min-height: 80px;
}

/* Submit Button */
button {
    width: 100%;
    background: #8b5e3c; /* brown */
    color: white;
    border: none;
    padding: 12px;
    font-size: 16px;
    border-radius: 6px;
    cursor: pointer;
    transition: 0.3s;
}

button:hover {
    background: #6f472c;
}

/* Bottom Buttons */
.btn-group {
    margin-top: 20px;
    display: flex;
    gap: 10px;
    justify-content: center;
}

/* Button Style Links */
.btn-link {
    text-decoration: none;
    padding: 10px 18px;
    border-radius: 6px;
    background: #a67c52;
    color: white;
    font-size: 14px;
    transition: 0.3s;
}

.btn-link:hover {
    background: #8b5e3c;
}

/* Display Button */
.btn-display {
    background: #6f4e37;
}

.btn-display:hover {
    background: #5a3e2b;
}

/* Tablet */
@media (max-width: 768px) {
    .container {
        padding: 20px;
    }

    .courseRow {
        grid-template-columns: repeat(2, 1fr);
    }
}

/* Mobile */
@media (max-width: 480px) {

    .container {
        width: 95%;
        padding: 15px;
    }

    .courseRow {
        grid-template-columns: 1fr;
    }

    .btn-group {
        flex-direction: column;
    }
}

</style>

<script>
window.onload = function() {

    const max = 3;

    const checkboxes =
        document.querySelectorAll("input[name='courses']");

    checkboxes.forEach(cb => {

        cb.addEventListener("change", () => {

            let checked =
                document.querySelectorAll(
                    "input[name='courses']:checked"
                );

            if (checked.length > max) {

                cb.checked = false;
                alert("You can select only 3 courses");

            }

        });

    });

}
</script>

</head>
<body>

<%
String path = request.getContextPath();
%>

<div class="container">

<h2>Add Student Data</h2>

<form action="addSuccess" method="post">

<label>First Name</label>
<input type="text" name="firstName">

<label>Middle Name</label>
<input type="text" name="middleName">

<label>Last Name</label>
<input type="text" name="lastName">

<label>Email</label>
<input type="email" name="email">

<label>Branch</label>
<select name="branch">
<option value="">Select Branch</option>
<option value="CSE">Computer Science Engineering</option>
<option value="IT">Information Technology</option>
<option value="ME">Mechanical Engineering</option>
<option value="CE">Civil Engineering</option>
<option value="EE">Electrical Engineering</option>
<option value="ECE">Electronics and Communication</option>
<option value="AI">Artificial Intelligence</option>
<option value="DS">Data Science</option>
</select>

<label>College Name</label>
<input type="text" name="collegeName">

<label>Gender</label><br>
<input class="inline" type="radio" name="gender" value="Male"> Male
<input class="inline" type="radio" name="gender" value="Female"> Female
<input class="inline" type="radio" name="gender" value="Other"> Other
<br><br>

<label>Date Of Birth</label>
<input type="date" name="dob">

<label>Age</label>
<input type="number" name="age">

<label>Nationality</label>
<input type="text" name="nationality">

<label>Blood Group</label>
<input type="text" name="bloodGroup">

<label>Permanent Address</label>
<input type="text" name="address.address1">

<label>Current Address</label>
<input type="text" name="address.address2">

<label>City</label>
<input type="text" name="address.city">

<label>State</label>
<input type="text" name="address.state">

<label>Country</label>
<input type="text" name="address.country">

<label>Courses (Max 3)</label>

<div class="courseRow">

<label><input type="checkbox" name="courses" value="Java"> Java</label>
<label><input type="checkbox" name="courses" value="Python"> Python</label>
<label><input type="checkbox" name="courses" value="C++"> C++</label>
<label><input type="checkbox" name="courses" value="JavaScript"> JavaScript</label>
<label><input type="checkbox" name="courses" value="Data Science"> Data Science</label>
<label><input type="checkbox" name="courses" value="Machine Learning"> ML</label>
<label><input type="checkbox" name="courses" value="Web Development"> Web Development</label>
<label><input type="checkbox" name="courses" value="DevOps"> DevOps</label>
<label><input type="checkbox" name="courses" value="Cybersecurity"> Cybersecurity</label>

</div>

<label>Feedback</label>
<textarea name="feedback" placeholder="Write feedback here..."></textarea>

<button type="submit">Submit</button>

</form>

<div class="btn-group">
    <a href="<%=path%>/index" class="btn-link">Home</a>
    <a href="<%=path%>/display" class="btn-link btn-display">Display Students</a>
</div>

</div>

</body>
</html>