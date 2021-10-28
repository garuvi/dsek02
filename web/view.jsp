<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <meta name="viewport" content="width=device-width", initial-scale"="1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/custom.css">
    <title>JSP 게시판 웹 사이트</title>
</head>
<body>
<%
    String userIDbbs = null;
    if (session.getAttribute("userID") != null) {
        userIDbbs = (String) session.getAttribute("userID");
    }
    int bbsID = 0;
    if (request.getParameter("bbsID") != null) {
        bbsID = Integer.parseInt(request.getParameter("bbsID"));
    }
    if (bbsID == 0) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('유효하지 않는 글입니다.')");
        script.println("location.href = 'bbs.jsp'");
        script.println("history.back()");
        script.println("</script>");
    }
    Bbs bbs = new BbsDAO().getBbs(bbsID);

%>
<%@ include file="/common/header.jsp" %>
<%@ include file="/common/nav.jsp"%>
<div class="col-md-10 p-5" >
    <h3>
        공지사항
    </h3>
    <hr>
        <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
            <thead>
            <tr>
                <th colspan="3" style="background-color: #eeeeee; text-align: center;">게시판 글보기</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td style="width: 20%;">글제목</td>
                <td colspan="2"><%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n", "<br>") %></td>
            </tr>
            <tr>
                <td>작성자</td>
                <td colspan="2"><%= bbs.getUserID() %></td>
            </tr>
            <tr>
                <td>작성일자</td>
                <td colspan="2"><%= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시" + bbs.getBbsDate().substring(14, 16) + "분 " %></td>
            </tr>
            <tr>
                <td>내용</td>
                <td colspan="2" style="min-height: 200px; text-align: left;"><%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n", "<br>") %></td>
            </tr>
            </tbody>
        </table>
        <a href="bbs.jsp" class="btn btn-primary">목록</a>
        <%
            if (userIDbbs != null && userIDbbs.equals(bbs.getUserID())) {
        %>
        <a href="update.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">수정</a>
        <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">삭제</a>
        <%
            }
        %>
    </div>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<%@ include file="/common/footer.jsp"%>