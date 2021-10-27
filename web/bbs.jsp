<%--
  Created by IntelliJ IDEA.
  User: Garuvi
  Date: 2021-10-27
  Time: 오후 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>
<%@ include file="/common/header.jsp" %>

<%@ include file="/common/nav.jsp"%>

<%
    // 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
    String userID = null;
    if(session.getAttribute("userID") != null){
        userID = (String)session.getAttribute("userID");
    }
    int pageNumber = 1; //기본은 1 페이지를 할당
    // 만약 파라미터로 넘어온 오브젝트 타입 'pageNumber'가 존재한다면
    // 'int'타입으로 캐스팅을 해주고 그 값을 'pageNumber'변수에 저장한다
    if(request.getParameter("pageNumber") != null){
        pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
    }
%>
<div class="col-md-10 p-5" >
    <h3>
        공지사항
    </h3>
    <hr>

    <table class="table p-3 text-center">
        <thead>
        <tr>
            <th>
                #
            </th>
            <th>
                제목
            </th>
            <th>
                첨부파일
            </th>
            <th>
                작성자
            </th>
            <th>
                작성일
            </th>
            <th>
                조회수
            </th>
        </tr>
        </thead>
        <tbody>
        <%
            BbsDAO bbsDAO = new BbsDAO(); // 인스턴스 생성
            ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
            for(int i = 0; i < list.size(); i++){
        %>
        <tr>
            <td><%= list.get(i).getBbsID() %></td>
            <!-- 게시글 제목을 누르면 해당 글을 볼 수 있도록 링크를 걸어둔다 -->
            <td><a href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>">
                <%= list.get(i).getBbsTitle() %></a></td>
            <td><%= list.get(i).getUserID() %></td>
            <td><%= list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시"
                    + list.get(i).getBbsDate().substring(14, 16) + "분" %></td>
        </tr>
        <%
            }
        %>

        </tbody>
    </table>
    <div class="center-block" style="float: none; margin-left: 380px;">
        <ul class="pagination">

            <li class="page-item disabled">
                <a class="page-link" href="#">&laquo;</a>
            </li>
            <li class="page-item active">
                <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">2</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">3</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">4</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">5</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">&raquo;</a>
            </li>
        </ul>
    </div>
</div>

</div>
</div>

<%@ include file="/common/footer.jsp"%>