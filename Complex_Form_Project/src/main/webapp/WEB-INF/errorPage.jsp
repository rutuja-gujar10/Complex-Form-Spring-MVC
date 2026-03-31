<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>

<style>

body{

    margin:0;
    padding:0;
    font-family:Arial, Helvetica, sans-serif;

    background:#f5f1e6; /* beige */

    display:flex;
    justify-content:center;
    align-items:center;

    height:100vh;

}


.box{

    background:white;

    padding:40px;

    width:420px;

    text-align:center;

    border-radius:10px;

    box-shadow:0 4px 12px rgba(0,0,0,0.15);

}


h1{

    color:#8b5e3c; /* brown */
    margin-bottom:10px;

}


p{

    color:#5a3e2b; /* dark brown */
    margin-bottom:20px;

}


.msg{

    background:#f3e5d8;
    color:#6f472c;

    padding:12px;
    border-radius:6px;

    margin-bottom:20px;

    font-size:14px;

    /* FIX START */
    word-break: break-word;
    overflow-wrap: break-word;
    white-space: pre-wrap;

    max-height: 200px;      /* optional */
    overflow-y: auto;       /* scroll if too long */
    /* FIX END */

}


a{

    text-decoration:none;

    padding:10px 15px;

    background:#a67c52; /* brown button */

    color:white;

    border-radius:6px;

    margin:5px;

    display:inline-block;

}


a:hover{

    background:#8b5e3c;

}

</style>

</head>
<body>

<div class="box">

<h1>Something went wrong</h1>

<p>An error occurred while processing your request</p>

<div class="msg">

<%= request.getAttribute("msg") %>

</div>

<a href="index">Home</a>

<a href="display">Display Students</a>

</div>

</body>
</html>