<%--
  Created by IntelliJ IDEA.
  User: Garuvi
  Date: 2021-10-27
  Time: 오후 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ include file="/common/header.jsp" %>

<%@ include file="/common/nav.jsp"%>




<div class="col-md-10 p-5" >
    <h3>
        공지사항
    </h3>
    <hr>

    <form>
        <fieldset>
            <legend>글쓰기</legend>

            <div class="form-group">
                <label for="exampleInputEmail1" class="form-label mt-4">카테고리</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1" class="form-label mt-4">제목</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1" class="form-label mt-4">파일선택</label>
                <input class="form-control" type="file" id="formFile">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1" class="form-label mt-4">이미지선택</label>
                <input class="form-control" type="file" id="formFile">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1" class="form-label mt-4">내용</label>
                <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
            </div>
            <button type="submit" class="btn btn-primary mt-5" style="margin-left: 400px">Submit</button>
        </fieldset>
    </form>

</div>

<%@ include file="/common/footer.jsp"%>