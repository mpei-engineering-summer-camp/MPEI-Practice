<#macro register usernameError>
    <div class="modal fade" id="modalRegisterForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h4 class="modal-title w-100 font-weight-bold">Регистрация</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body mx-5">
                    <form action="/registration" method="post" class="text-center"
                          oninput='passwordConf.setCustomValidity(
                              passwordConf.value !== password.value ? "Пароли не совпадают" : "")'>

                        <div class="form-row mb-4">
                            <div class="col">
                                <select required name="country" class="md-form custom-select validate">
                                    <option disabled>Выберите страну</option>
                                    <option value="Россия">Россия</option>
                                    <option value="Великобритания">Великобритания</option>
                                    <option value="Индия">Индия</option>
                                    <option value="США">США</option>
                                </select>
                            </div>
                            <div class="col">
                                <div class="custom-control custom-radio mt-3 pt-1">
                                    <input type="radio" class="custom-control-input" id="defaultGroupExample1" value="Мужской" name="gender" checked>
                                    <label class="custom-control-label" for="defaultGroupExample1">Мужской</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" class="custom-control-input" id="defaultGroupExample2" value="Женский" name="gender">
                                    <label class="custom-control-label" for="defaultGroupExample2">Женский</label>
                                </div>
                            </div>
                        </div>

                        <div class="form-row mb-4">
                            <div class="col">
                                <input type="text" id="defaultRegisterFormFirstName"
                                       class="form-control validate" name="name" placeholder="Имя" required>
                            </div>
                            <div class="col">
                                <input type="text" id="defaultRegisterFormLastName"
                                       class="form-control validate" name="surname" placeholder="Фамилия" required>
                            </div>
                        </div>

                        <input type="email" id="defaultRegisterFormEmail" name="email" required class="form-control validate" placeholder="E-mail">
                        <small id="defaultRegisterFormPasswordHelpBlock" class="form-text text-danger mb-3">
                            ${usernameError}
                        </small>

                        <input type="password" id="defaultRegisterFormPassword" name="password"
                               class="form-control validate" placeholder="Пароль" required
                               aria-describedby="defaultRegisterFormPasswordHelpBlock">
                        <small id="defaultRegisterFormPasswordHelpBlock" class="form-text text-muted mb-4">
                            Сильный пароль - 8 символов минимально
                        </small>

                        <input type="password" id="defaultRegisterFormPassword" name="passwordConf"
                               class="form-control validate mb-3" placeholder="Повторите пароль" required>

                        <button type="submit" class="btn btn-mdb-color">Зарегистрироваться<i class="fas fa-play ml-2"></i></button>

                        <div class="modal-footer d-flex justify-content-center mt-3">
                            <p>or sign up with:</p>
                            <a href="#" class="mx-1" role="button"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="mx-1" role="button"><i class="fab fa-twitter"></i></a>
                            <a href="#" class="mx-1" role="button"><i class="fab fa-linkedin-in"></i></a>
                            <a href="#" class="mx-1" role="button"><i class="fab fa-github"></i></a>
                        </div>
                        <p>By clicking
                            <em>Sign up</em> you agree to our
                            <a href="#" target="_blank">terms of service</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</#macro>