<%--
  Created by IntelliJ IDEA.
  User: calmness
  Date: 2021/12/13
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link href="../../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../css/common.css" rel="stylesheet">
    <link href="../../../css/corptravel.css" rel="stylesheet">
    <link href="../../../css/iconfont.css" rel="stylesheet">
</head>
<body>

<!-- header -->
<nav class="navbar navbar-default navbar-fixed-top bg-white" >
    <!-- 小导航 -->
    <!-- 小导航结束 -->
    <div class="container">
        <div class="navbar-header">
            <h4 class="navbar-brand" >成都万里行科技发展有限公司</h4>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="../在线预订/index.html"><i class="icon iconfont icon-nav-block font24" >&#xe620;</i> 在线预订</a></li>
                <li class="active"><a href="../订单管理/订单列表.html"><i class="icon iconfont icon-nav-block font24" >&#xe61c;</i> 订单管理</a></li>
                <li ><a href="../账务中心/总概.html"><span class="glyphicon glyphicon-yen font24 icon-nav-block" aria-hidden="true" style="margin-top:-2px;  margin-bottom:2px;"></span>账务中心</a></li>
                <!--<li  ><a href="../差旅报告/汇总.html"><i class="icon iconfont icon-nav-block font24"  >&#xe626;</i>报告中心</a></li>-->
                <li><a href="../数据中心/交易明细.html"><i class="icon iconfont icon-nav-block font24"  >&#xe623;</i>数据中心</a></li>
                <li><a href="../企业客户管理/组织架构.html"><span class="glyphicon glyphicon-cog font24 icon-nav-block" aria-hidden="true" style="margin-top:-2px; margin-bottom:2px;"></span>差旅管理</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
</nav>
<!-- header end -->
<!-- 管理模板 -->
<div class="container bg-gray-eee box-shadow mar-top-140 mar-bottom-30" style="padding-right:0px; padding-left:0px; position:relative;">
    <!-- nav -->
    <div class="nav-menu">
        <ul>
            <li><a href="订单列表.html">常规订单</a></li>
            <li><a href="保险订单列表.html"  class="active">保险订单</a></li>
            <div class="clearfix" ></div>
        </ul>
    </div>
    <!-- nav end -->
    <!-- main -->
    <div class="rightCon" style="margin-left:135px;">
        <!-- 引导 -->
        <ol class="breadcrumb">
            <li>首页</li>
            <li>订单管理</li>
            <li class="active">保险订单列表</li>
        </ol>
        <!-- 引导结束 -->
        <div class="row">
            <div class="col-sm-4">
                <div class="form-group" >
                    <label for="apdiv" class="w90 text-right">创建时间</label>
                    <input type="text" class="form-control input-sm" style=" width:90px; display:inline-block;" id="" placeholder="日期">
                    &nbsp;至&nbsp;
                    <input type="text" class="form-control input-sm" style=" width:90px; display:inline-block;" id="" placeholder="日期">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group" >
                    <label for="apdiv" class="w90 text-right">PNR编码</label>
                    <input type="text" class="form-control input-sm" style=" width:200px; display:inline-block;" id="" placeholder="编码">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group"  >
                    <label for="apdiv" class="w90 text-right">保单号</label>
                    <input type="text" class="form-control input-sm" style=" width:200px; display:inline-block;" id="" placeholder="number">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <div class="form-group">
                    <label class="w90 text-right">生效日期</label>
                    <input type="text" class="form-control input-sm" style=" width:90px; display:inline-block;" id="input" placeholder="日期">
                    &nbsp;至&nbsp;
                    <input type="text" class="form-control input-sm" style=" width:90px; display:inline-block;" id="input" placeholder="日期">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                    <label for="apdiv" class="w90 text-right">订单编号</label>
                    <input type="text" class="form-control input-sm" style=" width:200px; display:inline-block;" id="" placeholder="number">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                    <label for="apdiv" class="w90 text-right">机票订单号</label>
                    <input type="text" class="form-control input-sm" style=" width:200px; display:inline-block;" id="" placeholder="number">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <div class="form-group">
                    <label for="apdiv3" class="w90 text-right">产品名称</label>
                    <input type="text" class="form-control input-sm" style=" width:200px; display:inline-block;" id="input2" placeholder="姓名">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                    <label for="apdiv" class="w90 text-right">被保人</label>
                    <input type="text" class="form-control input-sm" style=" width:200px; display:inline-block;" id="" placeholder="姓名">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                    <label for="apdiv" class="w90 text-right">订单状态</label>
                    <select name="select" class="form-control input-sm" style=" width:200px; display:inline-block;">
                        <option value="">全部</option>
                        <option value="0">未投保</option>
                        <option value="1">投保中</option>
                        <option value="2">投保成功</option>
                        <option value="3">投保失败</option>
                        <option value="4">退保中</option>
                        <option value="5">退保并且退款成功</option>
                        <option value="6">退保成功退款中</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="text-center mar-top-10 bor-top-solid-1 pad-top-10 mar-bottom-10">
            <button type="submit" class="btn btn-primary btn-sm mar-right-20">查询</button>
            <button type="submit" class="btn btn-default btn-sm mar-right-20">清空条件</button>
        </div>
        <table border="0" cellspacing="0" cellpadding="0" class="table table-hover table-striped font12 table-bordered v-align-top" >
            <tr >
                <th>创建时间</th>
                <th>被保人信息</th>
                <th>产品信息</th>
                <th>机票订单信息</th>
                <th>销售价</th>
                <th width="70" style="width:65px;">订单状态</th>
            </tr>
            <tr>
                <td><p>2016-01-14</p>
                    <p>09:20</p></td>
                <td>黄兵(M)<br>51092219730810827X（护照）<br>生日：1982-02-02<br>手机：18273311896</td>
                <td>订单号： 1602161104268300101001810 <br>中国人保 20元旅游航意险（10天）<br>
                    有效期：2016-02-17 至 2016-02-26<br>
                    保单号：<a href="http://www.e-picclife.com/" target="_blank">005108633797158</a></td>
                <td>机票单号：<a href="../订单管理/订单详情.html" target="_blank">1602161104268300101001810</a><br>
                    PNR：HQFWV5<br>
                    已取消</td>
                <td>20.00</td>
                <td><span class="red">投保失败</span></td>
            </tr>
            <tr>
                <td><p>2016-01-14</p>
                    <p>09:20</p></td>
                <td>李秋梅(F)<br>
                    511526199609270928（身份证）<br>
                    手机：18273311896</td>
                <td>订单号： 1602161104268300101001810 <br>
                    中国人保 20元旅游航意险（10天）<br>
                    有效期：2016-02-17 至 2016-02-26<br>
                    保单号：<a href="http://www.e-picclife.com/" target="_blank">005108633797158</a></td>
                <td>机票单号：<a href="../订单管理/订单详情.html" target="_blank">1602161104268300101001810</a> <br>
                    PNR：HQFWV5<br>
                    正常</td>
                <td>100.00</td>
                <td><span class=" green-middle">投保成功</span></td>
            </tr>
        </table>
        <nav class="pull-right " >
            <ul class="pagination pagination-sm" style=" margin-top:0px;">
                <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">...</a></li>
                <li><a href="#">5</a></li>
                <li> <a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span> </a> </li>
            </ul>
            <div class="clearfix"></div>
        </nav>
        <div class="clearfix"></div>
    </div>
</div>
<!-- main end -->
</div>
<!-- 管理模板 结束 -->

</body>
</html>
