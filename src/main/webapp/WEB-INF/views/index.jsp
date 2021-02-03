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
<!-- ���� �±״� ���� �ٵ� ���̿� �ִ°��� ����. ��? ������? -->
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
    -- �˸�â --
    <br>
    <button onclick="alert('�˸�â!')" id = "alert">�˸�â ���� by Tag Property</button>
    <button id="byDom"> �˸�â by DOM</button>

    <br>
    -- LIST --
    <ul id ="list">
        <li>1. ����Ʈ 1��</li>
        <li>2. ����Ʈ 2��</li>
        <li>3. ����Ʈ 3��</li>
        <ul id="childList">
            <li>1) �ڽ� ����Ʈ 1��</li>
            <li>2) �ڽ� ����Ʈ 2��</li>
            <li>3) �ڽ� ����Ʈ 3��</li>
            <ul>
                <li>(1) ���� ����Ʈ 1�� </li>
            </ul>
        </ul>
    </ul>
    <button id="listRed" onclick="changeListColor()">����Ʈ -> ����</button>
    <button id="listAppend" onclick="addList()">����Ʈ �߰��ϱ�</button>

    <br>
    <form action="localhost:2520/userInfo" method="post">
        ���̵� : <input type="text" name="username"> <br>
        ��й�ȣ : <input type="password" name="password"> <br>
        ��/�� : <input type="radio" name="male" checked> �� <input type="radio" name="female"> �� <br>
        ��ȣ�ϴ� � : <input type="checkbox" name="baseball"> �߱� <input type="checkbox" name="basketball"> �� <br>
    ��ȣ�ϴ� ���� :
    <select name="fruit">
        <option value="apple"> ��� <option value="orange" selected> ��
        <option value="strawberry"> ���� <option value="peach"> ������
    </select> <br>
    <textarea name="message" rows="5" cols="30">
        ���ǻ����� ��������.
    </textarea> <br>
</form>

</body>

<script>
document.getElementById("byDom").onclick = function (){alert('�˸�â by DOM!')}
function changeListColor() {
    var lists = document.getElementsByTagName("li");
    for(var i = 0; i<lists.length; i++) {
        lists.item(i).style.color = "red";
    }
}

function addList() {
    $("#list").append("<li>0. �߰��� ����Ʈ");
}


</script>
</html>

