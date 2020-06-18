<#import "security.ftl" as s>
<#import "register-modal.ftl" as r>
<#import "login-modal.ftl" as l>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Material Design for Bootstrap</title>
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

<div class="row mt-5" style="padding-left: 3%;">
    <div class="mt-5 col-md-3">
        <h4 class="mb-2 font-weight-bold d-inline-block">Фильтры:</h4>

        <div class="accordion md-accordion accordion-3" style="box-shadow: none;" id="accordionEx194" role="tablist" aria-multiselectable="true">

            <form action="/" method="get">
                <!-- Accordion card -->
                <div class="card">

                    <!-- Card header -->
                    <div class="card-header" role="tab">
                        <a data-toggle="collapse" data-parent="#accordionEx194" href="#collapse4" aria-expanded="true" aria-controls="collapse4">
                            <h4 class="mb-0 text-muted">
                                Виды блюд <div class="animated-icon1 float-right mt-1"></div>
                            </h4>
                        </a>
                    </div>

                    <!-- Card body -->
                    <div id="collapse4" class="collapse show" role="tabpanel" aria-labelledby="heading4" data-parent="#accordionEx194">
                        <div class="card-body pt-0 mt-3">
                            <div class="custom-control custom-checkbox">
                                <#list types as t>
                                    <div>
                                        <input type="checkbox" class="custom-control-input" id="checkbox${t.id}" name="typeCheck" value="${t.name}">
                                        <label class="custom-control-label" for="checkbox${t.id}">${t.name}</label>
                                    </div>
                                </#list>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card mt-2">

                    <!-- Card header -->
                    <div class="card-header" role="tab" id="heading5">
                        <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx194" href="#collapse5" aria-expanded="false"
                           aria-controls="collapse5">
                            <h4 class="mb-0 text-muted">
                                Кухни мира <div class="animated-icon1 float-right mt-1"><span></span><span></span><span></span></div>
                            </h4>
                        </a>
                    </div>

                    <!-- Card body -->
                    <div id="collapse5" class="collapse" role="tabpanel" aria-labelledby="heading5" data-parent="#accordionEx194">
                        <div class="card-body pt-0 mt-3">
                            <div class="custom-control custom-checkbox">
                                <#list cuisines as c>
                                    <div>
                                        <input type="checkbox" class="custom-control-input" id="checkbox1${c.id}" name="cuisineCheck" value="${c.name}">
                                        <label class="custom-control-label" for="checkbox1${c.id}">${c.name}</label>
                                    </div>
                                </#list>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Accordion card -->
                <button type="submit" class="btn btn-mdb-color waves-effect waves-light ml-0">Фильтровать</button>
                <a href="/" class="btn-mdb-color btn">Показать все</a>
            </form>
        </div>
        <!--/.Accordion wrapper-->
    </div>

    <div class="col-md-8 mt-5">
        <h4 class="mb-2">Рецептов найдено: </h4>
        <#list page.content as r>
            <div class="row bg-white mb-4" style="border-radius: 5px;">
                <div class="col-md-5 p-3 shadow-sm">
                    <h3 class="font-weight-bolder">${r.name}</h3>
                    <div class="mr-3 p-1 mb-2 d-inline-block" style="background-color: #f0e0e2;">${r.cuisine!}</div>
                    <div class="mr-3 p-1 d-inline-block" style="background-color: #f0e0e2;">${r.type!}</div>
                    <img src="img/image.jpg" style="width: 100%; height: auto;" class="my-3">
                    <div class="text-center">
                        <#if s.known>
                            <form action="/add" method="post">
                                <input type="hidden" value="${r.id}" name="id">
                                <button type="submit" class="btn ml-0 mb-2" style="background-color: #f0e0e2; box-shadow: none;">Добавить в избранное <i class="fas fa-plus ml-2"></i></button>
                            </form>
                                <#else>
                            <a href="" class="btn ml-0 mb-2" data-toggle="modal" data-target="#modalLoginForm"
                               style="background-color: #f0e0e2; box-shadow: none;">Добавить в избранное <i class="fas fa-plus ml-2"></i></a>
                        </#if>
                    </div>
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

        <div>
            <ul class="pagination pagination-circle pg-blue d-flex justify-content-center">
                <li class="page-item"><a href="/${url}page=0" class="page-link">First</a></li>
                <li class="page-item">
                    <#if page.getNumber() == 0>
                            <a href="${url}page=${page.getNumber()-1}" class="page-link disabled" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                                <span class="sr-only">Previous</span>
                            </a>
                        <#else >
                            <a href="${url}page=${page.getNumber()-1}" class="page-link" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                                <span class="sr-only">Previous</span>
                            </a>
                    </#if>
                </li>
                <li class="page-item active"><a href="${url}&page=${page.getNumber()}" class="page-link">${page.getNumber()+1}</a></li>
                <li class="page-item">
                    <#if page.getNumber() == page.getTotalPages()-1>
                            <a href="${url}page=${page.getNumber()+1}" class="page-link disabled" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                            </a>
                        <#else >
                            <a href="${url}page=${page.getNumber()+1}" class="page-link " aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                            </a>
                    </#if>
                </li>
                <li class="page-item"><a class="page-link" href="${url}page=${page.getTotalPages()-1}">Last</a></li>
            </ul>
        </div>
    </div>
</div>



<@r.register usernameError!/>
<@l.login loginError!/>


<!-- jQuery -->
<script type="text/javascript" src="/js/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="/js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="/js/mdb.min.js"></script>
<!-- Your custom scripts (optional) -->
<script type="text/javascript">
    <#if usernameError??>
    $(document).ready(function(){
        $("#modalRegisterForm").modal('show');
    });
    </#if>
    <#if loginError??>
    $(document).ready(function(){
        $("#modalLoginForm").modal('show');
    });
    </#if>
</script>
</body>
</html>