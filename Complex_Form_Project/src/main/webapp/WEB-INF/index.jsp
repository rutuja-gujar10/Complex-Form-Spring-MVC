<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

<style>

/* Reset */
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family: 'Poppins', sans-serif;
}

/* Background */
body{
    min-height:100vh;

    background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)),
    url("https://images.unsplash.com/photo-1523240795612-9a054b0db644");

    background-size:cover;
    background-position:center;

    display:flex;
    justify-content:center;
    align-items:center;

    padding:20px;
}

/* Glass Card */
.container{

    background: rgba(255,255,255,0.12);
    backdrop-filter: blur(15px);

    padding:50px 40px;

    border-radius:20px;

    text-align:center;

    box-shadow: 0 15px 35px rgba(0,0,0,0.5);

    transition:0.4s;

    width:100%;
    max-width:450px;

    animation: fadeIn 1s ease-in-out;
}

.container:hover{
    transform: translateY(-5px) scale(1.02);
}

/* Title */
h1{

    color:#ffffff;

    margin-bottom:30px;

    font-size:34px;
    font-weight:600;
    letter-spacing:1px;
}

/* Buttons container */
.btnBox{

    display:flex;
    gap:20px;
    justify-content:center;
    flex-wrap:wrap;

}

/* Buttons */
a{

    text-decoration:none;

    padding:14px 22px;

    border-radius:10px;

    font-size:16px;

    font-weight:500;

    color:white;

    background: linear-gradient(135deg, #00c6ff, #0072ff);

    transition: all 0.3s ease;

    box-shadow: 0 5px 15px rgba(0,0,0,0.3);

}

a:hover{

    background: linear-gradient(135deg, #ff6a00, #ee0979);

    transform: translateY(-3px) scale(1.05);

    box-shadow: 0 8px 20px rgba(0,0,0,0.4);

}

/* Animation */
@keyframes fadeIn {
    from {
        opacity:0;
        transform: translateY(30px);
    }
    to {
        opacity:1;
        transform: translateY(0);
    }
}

/* Tablet */
@media (max-width:768px){

    .container{
        padding:35px;
    }

    h1{
        font-size:28px;
    }

}

/* Mobile */
@media (max-width:480px){

    .container{
        padding:25px;
    }

    h1{
        font-size:24px;
    }

    a{
        width:100%;
        font-size:15px;
    }

    .btnBox{
        flex-direction:column;
    }

}

</style>

</head>
<body>

<div class="container">

<h1>🎓 Student Management System</h1>

<div class="btnBox">

<a href="addStudent">➕ Add Student</a>

<a href="display">📋 Display Data</a>

</div>

</div>

</body>
</html>