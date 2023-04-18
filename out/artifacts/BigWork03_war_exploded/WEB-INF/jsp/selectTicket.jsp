<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column" >
            <div class="page-header">
                <h1>
                    <small>门票列表---可查询所有门票</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column" >
                <h3 style="float: left">门票信息</h3>
            </div>
            <div class="col-md-4 column" >
                <form class="form-inline" action="${pageContext.request.contextPath}/ticket/selectTicket" method="post" style="float:bottom">
                    <span style="color: red;font-weight: bold" >${error}</span>
                    <input type="text" name="ticketName" placeholder="请输入要查询景点。。" class="form-control">
                    <input type="submit" value="查询">
                </form>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column" >
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>门票</th>
                    <th>价格</th>
                    <th>剩余数量</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="ticket" items="${tickets}">
                    <tr>
                        <td>${ticket.ticketName}</td>
                        <td>${ticket.price}</td>
                        <td>${ticket.amount}</td>
                        <td>
                            <a href="">购买</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>