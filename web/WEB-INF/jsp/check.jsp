<%--
  Created by IntelliJ IDEA.
  User: calmness
  Date: 2021/12/11
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/statics/js/jquery.js"></script>
    <style>
        * {
            box-sizing: border-box;
        }
        .a{
            position: absolute;
            left:45%;
            top:35%;
            margin-left:-200px;
            margin-top:-100px;
        }

        form {

            position: relative;
            width: 500px;
            left: 0;

        }

        input, button {
            border: none;
            outline: none;
        }

        input {
            width: 300px;
            height: 42px;
            padding-left: 13px;

        }

        button {
            height: 42px;
            width: 42px;
            cursor: pointer;
            position: absolute;
        }
        input::placeholder{
            color: #c5464a;
            font-size: 20px;
        }
        .bar6 input {
            border: 2px solid #c5464a;
            border-radius: 5px;
            background: transparent;
            top: 0;
            width: 500px;
        }
        .bar6 button {
            background: #c5464a;
            border-radius: 0 5px 5px 0;
            width: 80px;
            top: 0;
            right: 0;
        }
        .bar6 button:before {
            content: "景点查询";
            font-size: 13px;
            color: #F9F0DA;
        }
    </style>

</head>
<body>
<div class="bar6 a">
    <form action="${pageContext.request.contextPath}/scenic/checkScenic" method="post">
        <input type="text" name="scenicName" placeholder="请输入您要搜索的内容...">
        <button type="submit"></button>
    </form>
</div>

</body>
</html>
