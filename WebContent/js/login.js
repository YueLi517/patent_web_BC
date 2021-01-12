

    window.onload=function(){
      onload1();
      onload2();
    }

 function onload1(){
    
        var a=document.getElementById("a");
        var context =a.getContext("2d");
    
        var W=window.innerWidth;
        var H=window.innerHeight;
    
       a.width=W;
        a.height =H;
    
        var fontSize = 18;
    
        var colunms =Math.floor(W/fontSize);
    
        var drops=[];
    
        for(var i=0;i<colunms;i++){
    drops[i]=1;
        }
    
        var str="01";
    
        function draw(){
            context.fillStyle="rgba(0,0,0,0.05)";
            context.fillRect(0,0,W,H);
    
            context.font ="1000" + fontSize + "px";
            context.fillStyle=randColor();
    
            for(var i=0;i<colunms;i++){
    
                var index=Math.floor(Math.random()*str.length);
                var x=i*fontSize;
                var y=drops[i]*fontSize;
                context.fillText(str[index],x,y);
    
                if(y>=a.height && Math.random()>0.99){
                    drops[i]=0;
                }
                drops[i]++;
            }
        };
        function randColor(){
    
            var r=Math.floor(Math.random()*256);
            var g=Math.floor(Math.random()*256);
            var b=Math.floor(Math.random()*256);
            return "rgb("+r+","+g+","+b+")";
    
        }
    
        draw();
        setInterval(draw,20);
  
    
    };

    function onload2()
            {
              var oLogin = document.getElementById('login');
                var oLoginBox = document.getElementById('login-box');
                var oOver = document.getElementById('over');
                var oClose = document.getElementById('close');
                var oUserName = document.getElementById('username');
                var oPasswd = document.getElementById('passwd');
                oLogin.onclick = function ()
                {
                    oLoginBox.style.display = 'block';
                    oOver.style.display = 'block';
                    oLoginBox.style.zIndex = 1;  //鐠佸墽鐤嗛崗鍐閻ㄥ嫭妯夌粈杞扮喘閸忓牆鐪扮痪褝绱漽Index鐡掑﹪鐝�,娴兼ê鍘涚痪褑绉烘姗堢礉闁矮绻旈悙鐟版皑閺勵垰绶氭稉濠咁洬閻╋拷.
                };
                oClose.onclick = function ()
                {
                    oLoginBox.style.display = 'none';
                    oOver.style.display = 'none';
                };
                oUserName.onclick = function ()
                {
                    oUserName.value='';   //濞撳懘娅庨幓鎰仛閺傚洤鐡�
                };
                oPasswd.onfocus = function ()
                {
                    oPasswd.value='';   //濞撳懘娅庨幓鎰仛閺傚洤鐡�
                    oPasswd.type = 'password'; //閹跺﹥鏋冮張顒侇攱缁鐎风拋鍙ヨ礋鐎靛棛鐖�
                }
    
            }


    var code; //閸︺劌鍙忕仦锟� 鐎规矮绠熸宀冪槈閻拷   
    function createCode() {
        code = "";
        var codeLength = 6;//妤犲矁鐦夐惍浣烘畱闂�鍨   
        var checkCode = document.getElementById("checkCode");
        var selectChar = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');//閹碉拷閺堝锟芥瑩锟藉绮嶉幋鎰扮崣鐠囦胶鐖滈惃鍕摟缁楋拷   
      
        for (var i = 0; i < codeLength; i++) {
            var charIndex = Math.floor(Math.random() * 36);
            code += selectChar[charIndex];
        }
        //alert(code);
        if (checkCode) {
            checkCode.className = "code";
            checkCode.value = code;
        }
    }
      

      var code1; //閸︺劌鍙忕仦锟� 鐎规矮绠熸宀冪槈閻拷   
      function createCode1() {
          code1 = "";
          var code1Length = 6;//妤犲矁鐦夐惍浣烘畱闂�鍨   
          var checkCode1 = document.getElementById("checkCode1");
          var selectChar = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');//閹碉拷閺堝锟芥瑩锟藉绮嶉幋鎰扮崣鐠囦胶鐖滈惃鍕摟缁楋拷   
        
          for (var i = 0; i < code1Length; i++) {
              var charIndex = Math.floor(Math.random() * 36);
              code1 += selectChar[charIndex];
          }
          //alert(code);
          if (checkCode1) {
              checkCode1.className = "code1";
              checkCode1.value = code1;
          }
      }
        
      var num=finalnum = tempnum= 0;
      var lis = document.getElementsByTagName("li");
      //num:传入点亮星星的个数
      //finalnum:最终点亮星星的个数
      //tempnum:一个中间值
      function fnShow(num) {
       finalnum= num || tempnum;//如果传入的num为0，则finalnum取tempnum的值
       for (var i = 0; i < lis.length; i++) {
        lis[i].className = i < finalnum? "light" : "";//点亮星星就是加class为light的样式
       }
      }
      for (var i = 1; i <= lis.length; i++) {
       lis[i - 1].index = i;
       lis[i - 1].onmouseover = function() { //鼠标经过点亮星星。
        fnShow(this.index);//传入的值为正，就是finalnum
       }
       lis[i - 1].onmouseout = function() { //鼠标离开时星星变暗
        fnShow(0);//传入值为0，finalnum为tempnum,初始为0
       }
       lis[i - 1].onclick = function() { //鼠标点击,同时会调用onmouseout,改变tempnum值点亮星星
        tempnum= this.index;
       }
      }