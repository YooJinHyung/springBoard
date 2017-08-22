<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2017-08-10
  Time: 오후 6:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DevBlog</title>
    <meta name="description" content="The Tag Dictionary">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="http://code.jquery.com/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <style>
        body {
            padding-top: 70px;
        }

        .list-group-item:hover {
            background-color: cornsilk;
        }

        #side-menu {
            width : 160px;
        }
        #side-menu .list-group-item {
            border : 0px;
        }

        #side-menu li.list-group-item:hover {
            background-color: #f5f5f5;
            font-family:
        }

        .table td,th {
            text-align: center;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div id="navbar" class="navbar-collapse collapse navbar-left" aria-expanded="false" style="height: 1px;">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                        <span class="glyphicon glyphicon-menu-hamburger"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li class="dropdown-header">Admin</li>
                        <li><a href="./editor.html">Editor</a></li>
                        <li class="divider"></li>
                        <li class="dropdown-header">Content</li>
                        <li><a href="./detail.html">detail</a></li>
                        <li><a href="./list.html">list</a></li>
                    </ul>
                </li>
            </ul>
        </div><!--/.nav-collapse -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/board" id="home">EE's Board</a>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row text-right mg-reset" style="margin-bottom: 5px;">
        <button id="write-button" type="button" class="btn btn-primary">글쓰기</button>
    </div>
    <table class="table table-hover">
        <colgroup>
            <col width="50px">
            <col >
            <col width="80px">
            <col width="100px">
            <col width="300px">
        </colgroup>
        <tbody>
        <tr>
            <th>NO</th>
            <th>제목</th>
            <th>조회수</th>
            <th>작성자</th>
            <th>작성일시</th>
        </tr>
        <c:forEach items="${list}" var="board">
            <tr data-index="${board.index}">
                <td>${board.index}</td>
                <td>${board.title}</td>
                <td>${board.hitCount}</td>
                <td>${board.createId}</td>
                <td>${board.createDay}</td>
            </tr>
        </c:forEach>
        <!-- 게시물이 없을 경우 아래 tr 노출
        <tr>
            <td colspan="5" class="text-center">게시물이 존재하지 않습니다</td>
        </tr>-->
        </tbody>
    </table>
    <div class="text-center">
        <nav>
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <c:forEach begin="1" end="${maxPage}" step="1" varStatus="pageIndex">
                    <li><a href="/board?page=${pageIndex.index}">${pageIndex.index}</a></li>
                </c:forEach>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>
</body>

<script>
    $(function(){
        $('.dropdown-toggle').dropdown();
        $('#side-menu').affix({
            offset: {
                top: 100,
                bottom: function () {
                    return (this.bottom = $('.footer').outerHeight(true))
                }
            }
        });
        $('#write-button').click(function () {
            location.href="/board/write";
        });

        $("tr[data-index]").click(function() {
            var index = $(this).data("index");
            location.href="/board/detail?index="+index;
        });
    });
</script>
</html>