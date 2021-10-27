<%--
  Created by IntelliJ IDEA.
  User: Garuvi
  Date: 2021-10-27
  Time: 오후 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
        session.invalidate();
%>

<script>
    alert('로그아웃되었습니다.');
    location ="/helpdesk";
</script>

</body>
</html>
