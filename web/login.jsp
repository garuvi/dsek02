<%--
  Created by IntelliJ IDEA.
  User: Garuvi
  Date: 2021-10-27
  Time: 오후 2:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ include file="/common/header.jsp" %>

<%@ include file="/common/nav.jsp" %>
    <div class = "col-md-10">
        <div class="row">

       <div class="container">
            <div class="col-lg-4"></div>
            <div class="col-lg-4"> <!-- 점보트론-->
                <div class="jumbotron" style="padding-top: 20px;"> <!-- 로그인 정보 숨기고 전송-->
                    <form method="post" action="loginAction.jsp"><h3 style="text-align: center;">로그인 화면</h3>
                        <div class="form-group"><input type="text" class="form-control" placeholder="아이디" name="userID"
                                                       maxlength="20"></div>
                        <div class="form-group"><input type="password" class="form-control" placeholder="비밀번호"
                                                       name="userPassword" maxlength="20"></div>
                        <input type="submit" class="btn btn-primary form-control" value="로그인"></form>
                </div>
            </div>
            <div class="col-lg-4"></div>
        </div>
        <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

        <script src="js/bootstrap.js"></script>
        </div>
    </div>

<%@ include file="/common/footer.jsp" %>