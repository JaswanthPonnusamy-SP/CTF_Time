<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="EN" style="height: 100%;width: 100%;">
<head>
	<title>CTFtIme</title>

</head>
<body style="width: 99%;height: 90%;">

<%
String username="";
int count=0;
Cookie cookies[]=request.getCookies();
if(cookies==null){
	response.sendRedirect("welcome");
	count+=1;
}

for(int i=0;cookies!=null&&i<cookies.length;i++){
    
    if(cookies[i].getName().equals("user")){
    
        username=cookies[i].getValue();
        count=count+1;
        
    }
    
}

 if(count==0){
    response.sendRedirect("welcome");
} 
%>

<div style="width: 100%;height: 40%;background-color: #343a40;">

  <p style="font-size: 350%;color: white;position: absolute;margin-top: 8%;color:white;font-family: sans-serif;margin-left: 32%;">Hello, <%=username %></p>
</div>
<p><center style="font-size: 25px;font-family: sans-serif;opacity: 0.8;">Challenges</center></p>
<div style="height: 20%;width: 100%;border-style: solid;border-color: grey;margin-top: 3%;"><span style="font-family: sans-serif;font-size: 20px;">&nbsp;&nbsp;1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Crack, Open n Find &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Just find a secret image, over with the web.&#128540;</span><span style="margin-left: 40%;"> - Web, stegno, crypto</span><br>
	<p style="font-family: sans-serif;font-size: 18px;margin-left: 3.7%;opacity: 0.7;">Start the challenge here &nbsp;&nbsp;&nbsp;--> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath() %>/challenge1" style="">/challenge1</a></p>
	<input type="text" name="flag" id="flag" placeholder="flag format : CTFtIme{}" style="width: 27%;height: 3.7%;position: absolute;font-size: 130%;border-color: #212529;border-style: solid;opacity: 0.5;margin-left: 4%;margin-top: 1%;font-family: sans-serif;">
<button type="Submit" style="letter-spacing: 1px;
    text-decoration: none;
    -moz-user-select: none;
    border-radius: 0;
    cursor: pointer;
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
    white-space: nowrap;
    font-size: 14px;
    line-height: 20px;
    font-weight: 700;
    padding: 8px 20px;color: #fff;
    background-color: #007bff;
    border-color: #007bff;margin-top: 1%;margin-left: 33%;">Submit</button>
    </div>

</body>
</html>