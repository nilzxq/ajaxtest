<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
  <style type="text/css">
  #mydiv{
      position:absolute;
      left:50%;
      top:50%;
      margin-left:-200px;
      margin-top:-50px;
  }
  </style>
  <script type="text/javascript">
  //获得用户输入内容的关联信息的函数
  function getMoreContens(){
          //首先要获得用户的输入
          var content=document.getElementById("keyword");
          if(content.value=="")
          return;
          //然后要给服务器发送用户输入的内容，因为我们采用的是ajax异步发送数据，
          //所以我们要使用一个对象，就做XmlHttp()对象
          xmlHttp=createXMLHttp();
          alert(xmlHttp);
  }
  
  //获得XmlHttp对象
  function createXMLHttp(){
  //对于大多数的浏览器都适用
  var xmlHttp;
  if(window.XMLHttpRequest()){
      xmlHttp=new XMLHttpRequest();
  }
  //要考虑浏览器的兼容性
  if(window.ActiveXObject){
  xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
  if(!xmlHttp)
  xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
  }
  return xmlHttp;
  }
  </script>
  </head>
  
  <body>
 <div id="mydiv">
 <!-- 输入框 -->
 <input type="text" size="50" id="keyword" onkeyup="getMoreContens()"/>
 <input type="button" value="百度一下" width="50px"/>
 </div>
  </body>
</html>
