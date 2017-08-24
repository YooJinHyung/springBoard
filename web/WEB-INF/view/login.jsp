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
    <script src="https://unpkg.com/vue"></script>
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

        .container {
            max-width: 400px;
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
                        <li><a href="/board/write">Editor</a></li>
                        <li class="divider"></li>
                        <li class="dropdown-header">Content</li>
                        <li><a href="/detail.html">detail</a></li>
                        <li><a href="/board">list</a></li>
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
            <a class="navbar-brand" href="/" id="home">EE's Board</a>
        </div>
    </div>
</nav>
<div class="container">
    <div class="page-header">
        <h3>LOGIN</h3>
    </div>
    <form method="post" action="/loginProcess">
        <div class="form-group has-feedback">
            <input type="text" class="form-control" id="id" name="id" placeholder="id" />
            <i class="form-control-feedback glyphicon glyphicon-user" style="color: gray;"></i>
        </div>
        <div class="form-group has-feedback">
            <input type="password" class="form-control" id="pw" name="pw" placeholder="pw"/>
            <i class="form-control-feedback glyphicon glyphicon-lock" style="color: gray;"></i>
        </div>
        <button type="submit" class="btn btn-primary form-control">LOGIN</button>
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
    });

</script>
</html>