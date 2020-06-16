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

<#assign
    last = page.getTotalPages()-1,
    previous = page.getNumber()-1,
    current = page.getNumber(),
    next = page.getNumber()+1
>

<#include "navbar.ftl">

<div class="row mt-5" style="padding-left: 3%;">
    <div class="mt-5 col-md-3">
        <h4 class="text-center mb-2 font-weight-bold">Фильтры:</h4>
        <div class="accordion md-accordion accordion-3" style="box-shadow: none;" id="accordionEx194" role="tablist" aria-multiselectable="true">

            <form action="/" method="get">
                <button type="submit" class="btn">Filter</button>
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
                                <div>
                                    <input type="checkbox" class="custom-control-input" id="defaultUnchecked123" name="allCuisines">
                                    <label class="custom-control-label" for="defaultUnchecked123">Все</label>
                                </div>
                                <#list cuisines as c>
                                    <div class="ml-3">
                                        <input type="checkbox" class="custom-control-input" id="checkbox${c.id}" name="idCheck" value="${c.name}">
                                        <label class="custom-control-label" for="checkbox${c.id}">${c.name}</label>
                                    </div>
                                </#list>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Accordion card -->

                <!-- Accordion card -->
                <div class="card">

                    <!-- Card header -->
                    <div class="card-header" role="tab">
                        <a data-toggle="collapse" data-parent="#accordionEx194" href="#collapse3" aria-expanded="true" aria-controls="collapse4">
                            <h4 class="mb-0 text-muted">
                                Время приготовления <div class="animated-icon1 float-right mt-1"></div>
                            </h4>
                        </a>
                    </div>

                    <!-- Card body -->
                    <div id="collapse3" class="collapse" role="tabpanel" aria-labelledby="heading4" data-parent="#accordionEx194">
                        <div class="card-body pt-0 mt-3">
                            <div class="custom-control custom-checkbox">
                                <div>
                                    <input type="checkbox" class="custom-control-input" id="defaultUnchecked123">
                                    <label class="custom-control-label" for="defaultUnchecked123">Все</label>
                                </div>
                                <div class="ml-3">
                                    <input type="checkbox" class="custom-control-input" id="defaultUnchecked12">
                                    <label class="custom-control-label" for="defaultUnchecked12">Австралийская кухня</label>
                                </div>
                                <div class="ml-3">
                                    <input type="checkbox" class="custom-control-input" id="defaultUnchecked22">
                                    <label class="custom-control-label" for="defaultUnchecked22">Итальянская кухня</label>
                                </div>
                                <div class="ml-3">
                                    <input type="checkbox" class="custom-control-input" id="defaultUnchecked32">
                                    <label class="custom-control-label" for="defaultUnchecked32">Русская кухня</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Accordion card -->

                <!-- Accordion card -->
                <div class="card">

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
                                <div>
                                    <input type="checkbox" class="custom-control-input" id="defaultUnchecked1">
                                    <label class="custom-control-label" for="defaultUnchecked1">Австралийская кухня</label>
                                </div>
                                <div>
                                    <input type="checkbox" class="custom-control-input" id="defaultUnchecked2">
                                    <label class="custom-control-label" for="defaultUnchecked2">Итальянская кухня</label>
                                </div>
                                <div>
                                    <input type="checkbox" class="custom-control-input" id="defaultUnchecked3">
                                    <label class="custom-control-label" for="defaultUnchecked3">Русская кухня</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Accordion card -->
            </form>
        </div>
        <!--/.Accordion wrapper-->
    </div>

    <div class="col-md-8 mt-5">
        <h4 class="mb-2">Рецептов найдено: </h4>
        <div class="row bg-white" style="border-radius: 5px;">
            <div class="col-md-5 p-3 shadow-sm">
                <h3 class="font-weight-bolder">Пельмени с мясом</h3>
                <div class="mr-3 p-1 mb-2 d-inline-block" style="background-color: #f0e0e2;">Русская кухня</div>
                <div class="mr-3 p-1 d-inline-block" style="background-color: #f0e0e2;">Вторые блюда</div>
                <img src="img/pelmeni.jpg" style="width: 100%; height: auto;" class="my-3">
                <div class="text-center"><a href="#" class="btn ml-0 mb-2" style="background-color: #f0e0e2; box-shadow: none;">
                        Добавить в избранное <i class="fas fa-plus ml-2"></i></a></div>
            </div>
            <div class="col-md-7 p-3 shadow-sm">
                <h5 class="font-weight-bolder">Ингредиенты</h5>
                <p>8 тонких ломтиков ветчины, 4 помидора, по одному стакану нарубленных кубиками огурцов, яблок и сельдерея, 2 столовые ложки сока апельсина, 2-3 листа салата, майонез.</p>
                <h5 class="font-weight-bolder">Способ приготовления</h5>
                <p>Каждый ломтик ветчины скатать в небольшой рулет. Огурцы, яблоки и сельдерей перемешать с соком апельсина, выложить на  плоскую тарелку, обложить кругом маринованными салатными  листьями, четвертушками помидоров и рулетами из ломтиков  ветчины Обильно полить майонезом.Каждый ломтик ветчины скатать в небольшой рулет. Огурцы, яблоки и сельдерей перемешать с соком апельсина, выложить на  плоскую тарелку, обложить кругом маринованными салатными  листьями, четвертушками помидоров и рулетами из ломтиков  ветчины Обильно полить майонезом.</p>
            </div>
        </div>
    </div>
</div>

<div class="md-form mt-0">
    <form action="/" method="get">
        <input class="form-control" type="text" name="search" placeholder="Search" aria-label="Search">
        <input type="submit" value="Search">
    </form>
</div>

<#list page.content as c>
    ${c.toString()}
</#list>

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