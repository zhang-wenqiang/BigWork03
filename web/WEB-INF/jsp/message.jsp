<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row clearfix">

                <div class="col-md-12 column">
                    <div class="page-header" style="text-align: center">
                        <h1>
                            评论区 <small>用户可在评论区发表个人感受</small>
                        </h1>
                    </div>
                </div>

            </div>

            <c:forEach var="msg" items="${msgs}">
                <div style="margin: 30px;width: 800px;height: 80px">
                    <div class="row clearfix" >
                        <div class="col-md-4 column">
                        </div>
                        <div class="col-md-6 column">
                            <div class="media">
                                <a href="#" class="pull-left"><img style="width: 50px;height: 50px" src="${pageContext.request.contextPath}/images/backImage.jpg" class="media-object" alt='' /></a>
                                <div class="media-body">
                                    <h4 class="media-heading">
                                            ${msg.userName}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${msg.time}
                                    </h4>${msg.context}
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 column">
                        </div>
                    </div>
                </div>

            </c:forEach>

        </div>
    </div>
</div>


</body>
</html>
