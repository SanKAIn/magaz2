<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Auto Shop</title>
    <meta name="description" content="Интернет-магазин от Auto Shop." />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href='https://fonts.googleapis.com/css?family=Ubuntu:400,700&subset=latin,cyrillic-ext' rel='stylesheet' type='text/css'>
    <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/css/button.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/resources/js/modules/glob.js" type="text/javascript"></script>

</head>
<body data-page="catalog">
    <table style="display: table; width: 100%; height: 71px; text-align: left">
        <tr style="height: inherit">
            <td style="width: 275px; background: #b5b446; height: 70px">
                <div style="text-align: center; margin: 3px; background: #60b1f5; border-radius: 4px; height: inherit;">LEFT</div>
            </td>
            <td style="background: transparent">
                <div style="text-align: left; margin: 3px; background: #ffa2a0; border-radius: 4px; height: 70px">
                    <table style="width: 100%; margin: 5px">
                        <tr style="margin-top: 18px">
                            <td style="width: 95%">
                                <input type="text" style="text-align: left; width: 100%; margin-top:  20px;">
                            </td>
                            <td>
                                <div style="background: #38721e; border-radius: 4px; text-align: center; margin: 20px 10px 0 2px; color: #fff4f7">Ok</div>
                            </td>
                        </tr>
                    </table>

                </div>
            </td>
        </tr>
    </table>

    <div class="row-cols-lg-1 row-cols-md-4 row">
        <div class="col mb-4">
            <div class="card">
                <img src="/resources/images/1/lanos.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card">
                <img src="/resources/images/1/kamaz.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a short card.</p>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card">
                <img src="/resources/images/1/shevrolet.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card">
                <img src="/resources/images/1/kamaz.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a short card.</p>
                </div>
            </div>
        </div>
        <div class="col-md">
            <div class="card">
                <img src="/resources/images/1/paz.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card">
                <img src="/resources/images/1/shevrolet.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card">
                <img src="/resources/images/1/paz.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card">
                <img src="/resources/images/1/kamaz.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a short card.</p>
                </div>
            </div>
        </div>
    </div>



    <div class="container">
        <ul class="nav">
            <li class="active"><a href="${pageContext.request.contextPath}/">Каталог</a></li>
            <li><a href="${pageContext.request.contextPath}/catalog-pag">Каталог с пагинацией</a></li>
            <li    href="${pageContext.request.contextPath}/compare" id="compare-tab"><a>Сравнение товаров<span class="badge"></span></a></li>
            <li><a href="${pageContext.request.contextPath}/cart">Корзина<span id="total-cart-count" class="badge"></span></a></li>
            <li><a href="${pageContext.request.contextPath}/order">Оформление заказа</a></li>
        </ul>
        <br />
        <ul id="goods" class="list-unstyled">
            <img src="../../resources/images/loading.gif" alt="" />
        </ul>
    </div>

    <script id="brand-template" type="text/template">
        <@ _.each(goods, function(good) { @>
        <div class="row row-cols-1 row-cols-md-5" style="max-width: 200px">
            <div class="col mb-4">
                <img src="${pageContext.request.contextPath}<@- good.img @>" class="card-img" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Описание</p>
                    <p class="card-text"><small class="text-muted">Мелкий текст</small></p>
                </div>
                <button
                        class="good-item__btn-add btn btn-info btn-sm js-add-to-cart"
                        data-brand-id="<@ good.brandId @>"
                        data-brand-name="<@ good.name @>"
                        data-brand-descr="<@ good.description @>"
                >Перейти</button>
            </div>
        </div>
        <@ }); @>
    </script>

    <script id="catalog-template" type="text/template">
        <@ _.each(goods, function(good) { @>
        <li class="good-item row">
            <div class="col-md-4">
                <img class="good-item__img" src="<@- good.img @>" />
            </div>
            <div class="col-md-8">
                <div class="good-item__id">Артикул <@= good.id @></div>
                <div class="good-item__name"><@- good.name @></div>
                <div class="good-item__price"><@= good.price @> грн.</div>
                <button
                        class="good-item__btn-add btn btn-info btn-sm js-add-to-cart"
                        data-id="<@= good.id @>"
                        data-name="<@- good.name @>"
                        data-price="<@= good.price @>"
                >Добавить в корзину</button>
            </div>
        </li>
        <@ }); @>
    </script>

    <script src="../../resources/js/vendor/jquery.min.js" type="text/javascript"></script>
    <script src="../../resources/js/vendor/jquery.cookie.js" type="text/javascript"></script>
    <script src="../../resources/js/vendor/underscore.min.js" type="text/javascript"></script>
    <script src="../../resources/js/modules/catalog.js" type="text/javascript"></script>
    <script src="../../resources/js/modules/cart.js" type="text/javascript"></script>
    <script src="../../resources/js/modules/compare.js" type="text/javascript"></script>
    <script src="../../resources/js/modules/main.js" type="text/javascript"></script>
</body>
</html>
