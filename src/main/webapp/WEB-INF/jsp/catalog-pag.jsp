<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <title>Auto Shop</title>
    <meta name="description" content="Интернет магазин Auto Shop." />
<%--    <link href='https://fonts.googleapis.com/css?family=Ubuntu:400,700&subset=latin,cyrillic-ext' rel='stylesheet' type='text/css'>--%>
<%--    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">--%>
<%--    <link href="../../resources/css/main.css" rel="stylesheet" type="text/css">--%>
    <script src="../../resources/js/modules/glob.js" type="text/javascript"></script>
</head>
<body data-page="catalogPag">
    <div class="container">
        <br />
        <br />
        <ul class="nav nav-pills">
            <li><a href="/">Каталог</a></li>
            <li><a href="catalog.jsp">Каталог с фильтрами</a></li>
            <li class="active"><a href="${pageContext.request.contextPath}/catalog-pag">Каталог с пагинацией</a></li>
            <li id="compare-tab"><a href="${pageContext.request.contextPath}/compare">Сравнение товаров<span class="badge"></span></a></li>
            <li><a href="${pageContext.request.contextPath}/cart">Корзина<span id="total-cart-count" class="badge"></span></a></li>
            <li><a href="${pageContext.request.contextPath}/order">Оформление заказа</a></li>
        </ul>
        <br />
        <div class="row">
            <div class="btn-group col-md-6">
                <button type="button" data-category="0" class="btn btn-default js-category active">Все категории</button>
                <button type="button" data-category="1" class="btn btn-default js-category">Ноутбуки</button>
                <button type="button" data-category="2" class="btn btn-default js-category">Смартфоны</button>
                <button type="button" data-category="3" class="btn btn-default js-category">Видеокарты</button>
            </div>
            <div class="btn-group col-md-6">
                <button type="button" data-theme="big"     class="btn btn-default js-theme" title="Большие фото">  <span class="glyphicon glyphicon-th-large"></span></button>
                <button type="button" data-theme="compact" class="btn btn-default js-theme" title="Компактный вид"><span class="glyphicon glyphicon-th"></span></button>
                <button type="button" data-theme="list"    class="btn btn-default js-theme" title="Списком">       <span class="glyphicon glyphicon-list"></span></button>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                Товаров на странице:
                <select id="pages-limit" class="form-control col-md-3">
                    <option value="3">3</option>
                    <option value="5" selected>5</option>
                    <option value="10">10</option>
                    <option value="100">100</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <ul id="pagination" class="pagination"></ul>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                Показаны товары: <span id="goods-info"></span>
            </div>
        </div>
        <ul id="goods" class="list-unstyled">
            <img src="../../resources/images/loading.gif" alt="" />
        </ul>
    </div>

    <script id="goods-template-compact" type="text/template">
        <@ _.each(goods, function(item) { @>
        <li class="small-good-item row">
            <div class="col-md-2">
                <img class="small-good-item__img" src="<@= item.image @>" />
            </div>
            <div class="col-md-10">
                <div class="small-good-item__id">Артикул <@= item.id @></div>
                <div class="small-good-item__name"><@- item.good @> (рейтинг <@= item.partName @>)</div>
                <div class="small-good-item__brand">Бренд: <@- item.kod @></div>
                <div class="small-good-item__price"><@= item.cost @> грн.</div>
                <button
                    class="small-good-item__btn-add btn btn-info btn-sm js-add-to-cart"
                    data-id="<@= item.good_id @>"
                    data-name="<@- item.good @>"
                    data-price="<@= item.price @>"
                >Добавить в корзину</button>
                <button
                    class="btn btn-link btn-sm js-add-to-compare"
                    data-id="<@= item.good_id @>"
                    data-category-id="<@= item.category_id @>"
                >Добавить к сравнению</button>
            </div>
        </li>
        <@ }); @>
    </script>

    <script id="goods-template-big" type="text/template">
        <@ _.each(goods, function(item) { @>
        <li class="good-item row">
            <div class="col-md-4">
                <img class="good-item__img" src="img/goods/<@= item.photo @>" />
            </div>
            <div class="col-md-8">
                <div class="good-item__id">Артикул <@= item.good_id @></div>
                <div class="good-item__name"><@- item.good @></div>
                <div class="good-item__price"><@= item.price @> грн.</div>
                <button
                    class="good-item__btn-add btn btn-info btn-sm js-add-to-cart"
                    data-id="<@= item.good_id @>"
                    data-name="<@- item.good @>"
                    data-price="<@= item.price @>"
                >Добавить в корзину</button>
            </div>
        </li>
        <@ }); @>
    </script>

    <script id="goods-template-list" type="text/template">
        <br />
        <br />
        <@ _.each(goods, function(item) { @>
        <li class="row">
            <div class="col-md-12">
                <p>
                    Артикул <@= item.id @>, <@- item.kod @>. Цена: <@= item.cost @> грн.
                    <a
                        class="btn btn-link btn-sm js-add-to-cart"
                        data-id="<@= item.id @>"
                        data-name="<@- item.kod @>"
                        data-price="<@= item.cost @>"
                    >Добавить в корзину</a>
                </p>
            </div>
        </li>
        <@ }); @>
    </script>

    <script id="pagination-template" type="text/template">
        <@ if (page !== 1) { @>
        <li data-page="1"><a href>&laquo;</a></li>
        <li data-page="<@= page-1 @>"><a href>&lt;</a></li>
        <@ } @>

        <@ for (var i = 1; i <= countPages; i++) { @>
        <li data-page="<@= i @>" <@= (i === page) ? ' class="active"' : '' @>><a href><@= i @></a></li>
        <@ } @>

        <@ if (page !== countPages) { @>
        <li data-page="<@= page + 1 @>"><a href>&gt;</a></li>
        <li data-page="<@= countPages @>"><a href>&raquo;</a></li>
        <@ } @>
    </script>

    <script src="../../resources/js/vendor/jquery.min.js" type="text/javascript"></script>
    <script src="../../resources/js/vendor/jquery.cookie.js" type="text/javascript"></script>
    <script src="../../resources/js/vendor/underscore.min.js" type="text/javascript"></script>
    <script src="../../resources/js/modules/catalogPag.js" type="text/javascript"></script>
    <script src="../../resources/js/modules/cart.js" type="text/javascript"></script>
    <script src="../../resources/js/modules/compare.js" type="text/javascript"></script>
    <script src="../../resources/js/modules/main.js" type="text/javascript"></script>
</body>
</html>