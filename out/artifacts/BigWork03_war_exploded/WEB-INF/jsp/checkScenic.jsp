<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>景点查询</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column" >
            <div class="page-header">
                <h1>
                    <small>景点列表---可查询所有景点</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column" >
                <h3 style="float: left">景点信息</h3>
            </div>
            <div class="col-md-4 column" >
                <form class="form-inline" action="${pageContext.request.contextPath}/scenic/checkScenic" method="post" style="float:bottom">
                    <span style="color: red;font-weight: bold" >${error}</span>
                    <input type="text" name="scenicName" placeholder="请输入要查询景点的名称" class="form-control">
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
                    <th>图片</th>
                    <th>景点</th>
                    <th>位置</th>
                    <th>温度</th>
                    <th>湿度</th>
                    <th>PM2.5</th>
                    <th>噪声</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="scenic" items="${scenics}">
                    <tr>
                        <td>${scenic.image}</td>
                        <td>${scenic.scenicName}</td>
                        <td>${scenic.location}</td>
                        <td>${scenic.temperature}</td>
                        <td>${scenic.humidity}</td>
                        <td>${scenic.noise}</td>
                        <td>${scenic.pm25}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/ticket/selectTicket2/${scenic.scenicID}">买票</a>
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
