<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>加载中...</title>
    <style>
            .loading{width:100%; height: 100%;position: fixed;top:0;left: 0;z-index: 100;background: #000000;}
            .loading .pic{
            width: 64px;
            height: 64px;
            /* background: url(images/loading.gif); */
            position: absolute;
            top: 0;
            bottom: 0;
            left:0;
            right:0;
            margin: auto}
 
            .loading .pic i{
                display: block;
                float: left;
                width: 6px;
                height: 50px;
                background: rgb(255, 255, 255);
                margin: 0 2px;
                transform: scaleY(0.4);
                animation: load 1.2s infinite;
            }
            .loading .pic i:nth-child(1){animation-delay:0.1s }
            .loading .pic i:nth-child(2){animation-delay:0.2s }
            .loading .pic i:nth-child(3){animation-delay:0.3s }
            .loading .pic i:nth-child(4){animation-delay: 0.4s}
            .loading .pic i:nth-child(5){animation-delay:0.5s }
 
            @keyframes load{
                0%,40%,100%{transform: scaleY(0.4)}
                20%{transform:scaleY(1) }
            }
    </style>
</head>
<body> 
        <div class="loading">
            <div class="pic">
                <i></i>
                <i></i>
                <i></i>
                <i></i>
                <i></i>
            </div>
        </div>
   <script>
        document.onreadystatechange=function(){
            console.log(document.readyState);
            if(document.readyState=="complete"){
                $(".loading").fadeOut();
            }
        }        
     </script>
     <script>
        var t = 3;//自定义时间为3秒
        setInterval("jishi()", 1000); //定时器，每间隔1秒钟调用一次函数
        function jishi() {
            if (t==1) {
                location = 'NewFile.jsp';  //缓冲完成后，页面跳转到首页
            }
            t--; //自减，实现倒计时
        };
    </script>
</body>
</html>