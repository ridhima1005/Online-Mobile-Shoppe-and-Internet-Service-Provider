<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
 
<style type="text/css">
body,td,th {
	font-size: 16px;
	font-family: "Copperplate Gothic Bold";
}
a:link {
	color: #FFF;
}
a:visited {
	color: #FFF;
}
</style>


<script type="text/javascript">

// **** Function for animation

function zxcAnimate(mde,obj,srt){
 this.to=null;
 this.obj=typeof(obj)=='object'?obj:document.getElementById(obj);
 this.mde=mde.replace(/\W/g,'');
 this.data=[srt||0];
 return this;
}

zxcAnimate.prototype.animate=function(srt,fin,ms,scale,c){
 clearTimeout(this.to);
 this.time=ms||this.time||0;
 this.neg=srt<0||fin<0;
 this.data=[srt,srt,fin];
 this.mS=this.time*(!scale?1:Math.abs((fin-srt)/(scale[1]-scale[0])));
 this.c=typeof(c)=='string'?c.charAt(0).toLowerCase():this.c?this.c:'';
 this.inc=Math.PI/(2*this.mS);
 this.srttime=new Date().getTime();
 this.cng();
}

zxcAnimate.prototype.cng=function(){
 var oop=this,ms=new Date().getTime()-this.srttime;
 this.data[0]=(this.c=='s')?(this.data[2]-this.data[1])*Math.sin(this.inc*ms)+this.data[1]:(this.c=='c')?this.data[2]-(this.data[2]-this.data[1])*Math.cos(this.inc*ms):(this.data[2]-this.data[1])/this.mS*ms+this.data[1];
 this.apply();
 if (ms<this.mS) this.to=setTimeout(function(){oop.cng()},10);
 else {
  this.data[0]=this.data[2];
  this.apply();
  if (this.Complete) this.Complete(this);
 }
}

zxcAnimate.prototype.apply=function(){
 if (isFinite(this.data[0])){
  if (this.data[0]<0&&!this.neg) this.data[0]=0;
  if (this.mde!='opacity') this.obj.style[this.mde]=Math.floor(this.data[0])+'px';
  else zxcOpacity(this.obj,this.data[0]);
 }
}

function zxcOpacity(obj,opc){
 if (opc<0||opc>100) return;
 obj.style.filter='alpha(opacity='+opc+')';
 obj.style.opacity=obj.style.MozOpacity=obj.style.WebkitOpacity=obj.style.KhtmlOpacity=opc/100-.001;
}


</script>

    <script type="text/javascript">

    if (document.all || document.getElementById){ 
    document.write('<style type="text/css">\n')
    document.write('.dyncontent{position:absolute;left:0px;top:0px; width: 900px; height: 300px;align:center;}\n')
    document.write('</style>')
    }

    var speed=2000;
    var curcontentindex=0
    var messages=new Array()

    function getElementByClass(classname){
    var inc=0
    var alltags=document.all? document.all : document.getElementsByTagName("*")
    for (i=0; i<alltags.length; i++){
     if (alltags[i].className==classname)
      messages[inc++]=new zxcAnimate('opacity',alltags[i],0);
     }
    }

    function rotatecontent(){
    //get current message index (to show it):
    curcontentindex=(curcontentindex<messages.length-1)? curcontentindex+1 : 0
    //get previous message index (to hide it):
    prevcontentindex=(curcontentindex==0)? messages.length-1 : curcontentindex-1
    messages[prevcontentindex].obj.style.zIndex="0" //hide previous message
    messages[prevcontentindex].animate(100,0,speed/2);
    messages[curcontentindex].obj.style.zIndex="1" //show current message
    messages[curcontentindex].animate(0,100,speed/2);
    }


    window.onload=function(){
    if (document.all || document.getElementById){
    getElementByClass("dyncontent");
    setInterval("rotatecontent()", speed);
    }
    }

    </script>




</head>
<title>home</title>
<body text="#FFFFFF">
<div style="background-color:#1C0415; width:1310; height:30; font-size: 12px;">

&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<strong> WELCOME! &emsp;<a href="log.jsp">Log in</a>(for admin only)</strong> </div>
<img src="images\purple.jpg" alt="myimg" width="1320" height="100">
<img src="images\mob2.jpg" width="60" height="80" hspace="30" style="position: absolute; top: 30px; left: 20px;"/>

<img src="images\nm.jpg" width="300" height="50" hspace="100" style="position: absolute; top: 50px; left: 20px; width: 300;"/>
<table width="1320" BORDER="1" align="center" cellpadding="20">
<tr>
<td width="330" align="center" bgcolor="#1C0415"><strong><a href="home.jsp">HOME</a></strong></td>
<td width="330" align="center" bgcolor="#1C0415"><strong><a href="gallery.jsp">GALLERY</a></strong></td>
<td width="330" align="center" bgcolor="#1C0415"><strong><a href="aboutus.jsp">ABOUT US</a></strong></td>
<td width="330" align="center" bgcolor="#1C0415"><strong><a href="privacy.jsp">PRIVACY POLICIES</a></strong></td>
<td width="330" align="center" bgcolor="#1C0415"><strong><a href="index.html" >Shop home page</a></strong></td>
</tr>
</table ><br>

<br>
<table align="center" width="861" border="1">
<tr>
<td width="18"></td>
<td width="791">

<div style="position:relative;" align="center" >
<img class="dyncontent" src="images\sg3.jpg" align="middle"/>
<img class="dyncontent" src="images\1.jpg"  align="middle"/>
<img class="dyncontent" src="images\2.jpg"  align="middle"/>
<img class="dyncontent" src="images\3.jpg"  align="middle"/>
<img class="dyncontent" src="images\4.jpg"  align="middle"/>
<img class="dyncontent" src="images\ii.jpg" align="middle" />

<img class="dyncontent" src="images\sx.jpg"  align="middle"/>
<img class="dyncontent" src="images\best.png"  align="middle"/>
</div>
</td>
<td width="30"></td>
</tr>

</table>
<br>
<br><br><br><br><br><br>
<br><br><br><br><br><br><br><br>
<br><br><br><br>
<br><br>
<br>
<div style="background-color:#1C0415; width:1320; height:50; font-size: 30px; font-weight: bold; color: #06C;" align="center">Which is your favorite smartphone?</div>
<br>
<br>



<marquee behavior="alternate" direction="left" onMouseOver="this.stop();" onMouseOut="this.start();">

<img src="images\xperiaz.jpeg" width="100" height="150">
<img src="images\xperiamiro.jpeg" width="100" height="150">
<img src="images\ace.jpeg" width="100" height="150">
<img src="images\onex+.jpeg" width="100" height="150">
<img src="images\rex.jpeg" width="100" height="150">
<img src="images\s3.jpeg" width="100" height="150">

</marquee>



</body>
</html>