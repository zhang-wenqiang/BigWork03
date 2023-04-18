<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script src="${pageContext.request.contextPath}/statics/js/jquery.js"></script>
    <style>
      html,body{
        width:100%;
        height:100%
      }
      body{

        background:url("images/backImage.jpg") no-repeat;
        background-size: 100%;

      }
      iframe{
        width: 100%;
        height: 100%;
        border: none;
        float: left;

      }

      #menu {
        font-size: 12px; /* 设置文字大小和字体样式 */
        top: 5px;

      }
      #menu, #menu li {
        list-style:none; /* 将默认的列表符号去掉 */
        padding:0; /* 将默认的内边距去掉 */
        top:10px; /* 将默认的外边距去掉 */
      }
      #menu li {
        float:left; /* 往左浮动 */
      }
      #menu li a {
        display:block; /* 将链接设为块级元素 */
        padding:8px 50px; /* 设置内边距 */
        background: #0d65a0; /* 设置背景色 */
        color:#fff; /* 设置文字颜色 */
        text-decoration:none; /* 去掉下划线 */
        border-right:1px solid #000; /* 在左侧加上分隔线 */
      }
      #menu li a {
        display:block; /* 将链接设为块级元素 */
        width:50px; /* 设置宽度 */
        height:30px;; /* 设置高度 */
        line-height:30px; /* 设置行高，将行高和高度设置同一个值，可以让单行文本垂直居中 */
        text-align:center; /* 居中对齐文字 */
        background:#0d65a0; /* 设置背景色 */
        color:#fff; /* 设置文字颜色 */
        text-decoration:none; /* 去掉下划线 */
        border-right:1px solid #000; /* 在左侧加上分隔线 */
        border-radius: 5px;
      }
      #menu li a:hover {
        background: #1b252a; /* 变换背景色 */
        color:#fff; /* 变换文字颜色 */
      }
       *{ margin: 0;padding: 0;list-style: none}

      .mask{background-color:rgba(0,0,0,0.2); width:100%; height:100%;position:fixed;top:0;left:0;}
      .prompt_box{width:400px;height:200px;background:#ffffff;border-radius:6px;
        position:fixed;top:25%; left:50%; margin-left:-200px;overflow: hidden;}
      .prompt_box .prompt_title{height:40px;line-height:40px;padding-left:20px;border-bottom:2px solid #1a9ebf;background:#e6e6e6;position: relative;}
      .prompt_box .prompt_title h3{font-size:16px;color: #333333; margin-top:0;}

      .prompt_box .prompt_cont{position: relative;height:158px;}
      .prompt_box .prompt_cont .prompt_text{line-height:140px;padding-left:100px;}
      .prompt_box .prompt_cont .prompt_sure{position: absolute;right:20px;bottom:34px;
        width:50px;height: 26px;background:#1a9ebf;border-radius:5px;color:#ffffff;
        font-size: 14px;line-height:26px;text-align: center;}

      .hide{display:none;}
      .show{display:block;}

    </style>

    <script>
      $(function (){
        $('#login').click(function (){
          $.post({
            url:"${pageContext.request.contextPath}/user/loginCheck",
            data:{userName:$("#userName").val(),pwd:$("#pwd").val()},
            success:function (data2){
              alert(data2);
            }
          })
          });
        })
    </script>

  </head>
  <body>
  <header>
    <div class="container">
      <div>
        <div style="width: 50%;text-align:center;float: left">
          <h1 style="color: darkblue"><i>旅游门票预订系统</i></h1>
        </div>
        <div style="width: 50%;text-align:center;float: left">
          <div>
            <ul id="menu">
              <li>
                <a href="${pageContext.request.contextPath}/main/mainCheck" target="mainIframe">首页</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/scenic/toCheckScenic/" target="mainIframe">景点查询</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/ticket/toSelectTicket" target="mainIframe">门票预定</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/user/message" target="mainIframe">评论区</a>
              </li>
              <li>
                <input type="button" value="登录" id="btn">
                <input type="button" value="注册" >
                <a href="${pageContext.request.contextPath}/main/toLogin">点击</a>
                <h4 id="un"></h4>
              </li>

            </ul>
          </div>
        </div>
      </div>
    </div>
  </header>
  <iframe name="mainIframe" src="${pageContext.request.contextPath}/main/mainCheck"></iframe>

  <div class="mask hide">

    <div class="prompt_box">
      <div class="prompt_title">
        <h3>用户登录</h3>
      </div>
      <div class="prompt_cont">
        <form>
          用户名:<input type="text" id="userName"><br/>
          &nbsp;&nbsp;密码: <input type="text" id="pwd"><br/>
          <input type="button" name="cancel" value="取消" class="prompt_cancel">
          <input type="button" name="login" value="登录" id="login"><br/>
          <span id="span" style="color: crimson"></span>
        </form>
      </div>
    </div>

  </div>

  <script>
    $(function () {
      //////////////////////////弹窗效果////////////////////////////////
      $('#btn').click(function () {
        $('.mask').removeClass('hide');
      })
      $('.prompt_cancel').click(function () {
        $('.mask').addClass('hide');
      })
    });
  </script>


  </body>
</html>
