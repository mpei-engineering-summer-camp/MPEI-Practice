<#import "security.ftl" as s>

<nav class="mb-1 navbar navbar-expand-lg navbar-dark unique-color-dark fixed-top">
    <div class="container-md">
        <a class="navbar-brand" href="#">
            <img src="/img/rubik.png" height="30" class="d-inline-block align-top"
                 alt="mdb logo"> <strong class="h3">Bootstrap</strong>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
                aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
            <ul class="navbar-nav ml-auto nav-flex-icons">

                <#if !s.known>
                    <li class="nav-item mr-2">
                        <a class="nav-link font-weight-bolder" href="#"
                           data-toggle="modal" data-target="#modalLoginForm">Вход</a>
                    </li>
                    <li class="nav-item mr-2">
                        <a class="nav-link font-weight-bolder" href="#"
                           data-toggle="modal" data-target="#modalRegisterForm">Регистрация</a>
                    </li>
                <#else>
                    <li class="nav-item mr-2">
                        <a class="nav-link font-weight-bolder" href="/logout">Выход</a>
                    </li>
                </#if>

                <li class="nav-item">
                    <a class="nav-link" href="#">Tutorials</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Контакты</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link waves-effect waves-light">
                        <i class="fab fa-twitter"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link waves-effect waves-light">
                        <i class="fab fa-google-plus-g"></i>
                    </a>
                </li>
                <#if s.known>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-user"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-default"
                             aria-labelledby="navbarDropdownMenuLink-333">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </#if>
            </ul>
        </div>
    </div>
</nav>