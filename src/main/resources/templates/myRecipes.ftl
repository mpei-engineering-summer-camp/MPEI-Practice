<#import "security.ftl" as s>
<#import "register-modal.ftl" as r>
<#import "login-modal.ftl" as l>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Gourmet Paradise</title>
    <!-- MDB icon -->
    <link rel="icon" href="" type="image/x-icon">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
    <!-- Google Fonts Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <!-- Material Design Bootstrap -->
    <link rel="stylesheet" href="/css/mdb.min.css">
    <!-- Your custom styles (optional) -->
    <link rel="stylesheet" href="/css/style.css">
</head>
<body style="background-color: #f0e0e2;">

<#include "navbar.ftl">

<div style="margin-top: 100px">
    <div class="container-md">
        <div class="row bg-white d-flex justify-content-center m-3 p-3" style="border-radius: 10px">
            <span><h4 class="font-weight-bolder">${s.user.name} ${s.user.surname}</h4></span>
            <span><p class="mt-1 ml-3">Страна:  ${s.user.country}</p></span>
            <span><p class="mt-1 ml-3">Пол:  ${s.user.gender}</p></span>
        </div>
        <div class="col-md-12 pl-4">
            <#list set as r>
                <div class="row bg-white mb-4" style="border-radius: 5px;">
                    <div class="col-md-5 p-3 shadow-sm">
                        <h3 class="font-weight-bolder">${r.name}</h3>
                        <div class="mr-3 p-1 mb-2 d-inline-block" style="background-color: #f0e0e2;">${r.cuisine!}</div>
                        <div class="mr-3 p-1 d-inline-block" style="background-color: #f0e0e2;">${r.type!}</div>
                        <img src="img/pelmeni.jpg" style="width: 100%; height: auto;" class="my-3">
                    </div>
                    <div class="col-md-7 p-3 shadow-sm">
                        <h5 class="font-weight-bolder">Ингредиенты</h5>
                        <p>${r.ingredients!}</p>
                        <h5 class="font-weight-bolder">Способ приготовления</h5>
                        <p>${r.recipe!}</p>
                        <h5 class="font-weight-bolder">Время приготовления:</h5>
                        <p>~${r.minutes!}</p>
                    </div>
                </div>
            </#list>
        </div>
    </div>
</div>


<!-- jQuery -->
<script type="text/javascript" src="/js/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="/js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="/js/mdb.min.js"></script>
<!-- Your custom scripts (optional) -->
<script type="text/javascript"></script>
</body>
</html>