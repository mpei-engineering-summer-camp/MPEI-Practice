<#macro login loginError>
    <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h4 class="modal-title w-100 font-weight-bold">Войти</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body mx-5">
                    <form action="/login" method="post" class="text-center">
                        <small id="defaultRegisterFormPasswordHelpBlock" class="form-text text-danger my-1">
                            ${loginError}
                        </small>
                        <input type="email" id="defaultRegisterFormEmail" name="username" required
                               class="form-control my-4 validate" placeholder="E-mail">

                        <input type="password" id="defaultRegisterFormPassword" name="password"
                               class="form-control validate mb-3" placeholder="Пароль" required
                               aria-describedby="defaultRegisterFormPasswordHelpBlock">

                        <div class="d-flex justify-content-around mb-3">
                            <div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="remember-me" class="custom-control-input" id="defaultLoginFormRemember">
                                    <label class="custom-control-label" for="defaultLoginFormRemember">Remember me</label>
                                </div>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-mdb-color">Войти<i class="fas fa-play ml-2 mb-2"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</#macro>