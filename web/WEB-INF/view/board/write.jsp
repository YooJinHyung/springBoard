<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Edit Board</title>
    <meta name="description" content="The Tag Dictionary">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="//code.jquery.com/jquery.min.js"></script>
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

        .container textarea {
            border : 0px !important;
            box-shadow: none !important;
            -webkit-box-shadow : none !important;
        }

        .container .panel-body {
            margin-bottom: 0px !important;
        }

        .page-header {
            margin-top: 0px;
        }

        .page-header h1,h2,h3 {
            margin: 0px;
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
    <div class="page-header">
        <h3>write Board</h3>
    </div>
    <form id="insertForm" action="/board/insert" method="post">
        <div class="panel panel-default">
            <div class="panel-heading">
                <input name ="title" id = "title" type="text" class="form-control" placeholder="Enter the title..."/>
            </div>
            <div class="panel panel-body">
                <textarea name="content" id="content" class="form-control" rows="5" placeholder="Enter the content.."></textarea>
            </div>
        </div>
        <div class="row text-right">
            <button type="submit" class="btn btn-primary">저장</button>
            <button type="button" class="btn btn-default" onclick="history.back();">뒤로 가기</button>
        </div>
    </form>

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
        // submit 전에 동작
        $("#insertForm").submit(function() {
            if($("#title").val()==""){
                alert("제목을 입력해주세요~!");
                $("#title").focus();
                return false;
            }
            if($("#content").val()==""){
                alert("내용을 입력해주세요~!");
                $("#content").focus();
                return false;
            }
        });
    });
</script>
</html>