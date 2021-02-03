<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
         pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<!-- 선언문 태그는 헤드와 바디 사이에 넣는것이 좋다. 왜? 가독성? -->
<%! String str = "Hello, Java Server Pages";
    String getString(String str)
    {
        return str;
    }
%>


<body>

<% out.print(getString(str)); %> <br>

<% java.util.Date date = new java.util.Date(); %>
Today (yyyyMMdd) : <% out.println(new SimpleDateFormat("YYYYMMdd").format(date)); %> <br>
Today (YYYYmmDD) : <% out.println(new SimpleDateFormat("YYYYmmDD").format(date)); %> <br>


<%--<% java.time.LocalDateTime dateTime = new LocalDateTime(); %>--%>
<%--Today(LocalDateTime) : <% out.println(dateTime); %>--%>

<%--Current Time : <%= new java.util.Date(java.util.Calendar.getInstance().getTimeInMillis()) %>--%>
<%--Current Time : <%= new Date(java.util.Calendar.getInstance().getTimeInMillis()) %>--%>
        Current Time : <%= new Date(Calendar.getInstance().getTimeInMillis()) %>

    <br>
    -- 알림창 --
    <br>
    <button onclick="alert('알림창!')" id = "alert">알림창 띄우기 by Tag Property</button>
    <button id="byDom"> 알림창 by DOM</button>

    <br>
    -- LIST --
    <ul id ="list">
        <li>1. 리스트 1번</li>
        <li>2. 리스트 2번</li>
        <li>3. 리스트 3번</li>
        <ul id="childList">
            <li>1) 자식 리스트 1번</li>
            <li>2) 자식 리스트 2번</li>
            <li>3) 자식 리스트 3번</li>
            <ul>
                <li>(1) 손주 리스트 1번 </li>
            </ul>
        </ul>
    </ul>
    <button id="listRed" onclick="changeListColor()">리스트 -> 빨강</button>
    <button id="listAppend" onclick="addList()">리스트 추가하기</button>

    <br>
    <form action="localhost:2520/userInfo" method="post">
        아이디 : <input type="text" name="username"> <br>
        비밀번호 : <input type="password" name="password"> <br>
        남/여 : <input type="radio" name="male" checked> 남 <input type="radio" name="female"> 여 <br>
        선호하는 운동 : <input type="checkbox" name="baseball"> 야구 <input type="checkbox" name="basketball"> 농구 <br>
    선호하는 과일 :
    <select name="fruit">
        <option value="apple"> 사과 <option value="orange" selected> 귤
        <option value="strawberry"> 딸기 <option value="peach"> 복숭아
    </select> <br>
    <textarea name="message" rows="5" cols="30">
        건의사항을 적으세요.
    </textarea> <br>
</form>

</body>

<script>
document.getElementById("byDom").onclick = function (){alert('알림창 by DOM!')}
function changeListColor() {
    var lists = document.getElementsByTagName("li");
    for(var i = 0; i<lists.length; i++) {
        lists.item(i).style.color = "red";
    }
}

function addList() {
    $("#list").append("<li>0. 추가된 리스트");
}


</script>
</html>

