<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Auto Shop</title>
<%--    <link href="https://fonts.googleapis.com/css?family=Ubuntu:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">--%>
<%--    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">--%>
<%--    <link href="../../resources/css/main.css" rel="stylesheet" type="text/css">--%>
    <script src="../../resources/js/modules/glob.js" type="text/javascript"></script>
</head>
<body data-page="cart">
<div class="container">
    <h2>Auto Shop</h2>
    <br>
    <br />
    <ul class="nav nav-pills">
        <li><a href="/">Каталог</a></li>
        <li><a href="${pageContext.request.contextPath}/catalog-pag">Каталог с пагинацией</a></li>
        <li id="compare-tab"><a href="${pageContext.request.contextPath}/compare">Сравнение товаров<span class="badge"></span></a></li>
        <li class="active"><a href="${pageContext.request.contextPath}/cart">Корзина<span id="total-cart-count" class="badge"></span></a></li>
        <li><a href="${pageContext.request.contextPath}/order">Оформление заказа</a></li>
    </ul>
    <br />
    <div class="table-responsive">
        <table class="table table-hover table-bordered">
            <thead>
            <tr>
                <th>Артикул</th>
                <th>Название</th>
                <th>Цена</th>
                <th>Количество</th>
                <th>Сумма</th>
                <th></th>
            </tr>
            </thead>
            <tbody id="cart">
            <tr><td colspan="6"><img src="../../resources/images/loading.gif" alt=""></td></tr>
            </tbody>
        </table>
    </div>
    <div>Итого: <span id="total-cart-summa">0</span> грн.</div>
    <br>
    <button id="order" class="btn btn-info">Оформить заказ</button>
</div>

<script id="cart-template" type="text/template">
    <@ _.each(goods, function(good) { @>
    <tr class="cart-item js-cart-item" data-id="<@= good.id @>">
        <td><@= good.id @></td>
        <td><@- good.name @></td>
        <td><@= good.price @> грн.</td>
        <td>
                <span
                        class="cart-item__btn-dec-count js-change-count"
                        title="Уменьшить на 1"
                        data-id="<@= good.id @>"
                        data-delta="-1"
                >
                    <span class="glyphicon glyphicon-minus"></span>
                </span>
            <span class="js-count"><@= good.count @></span>
            <span
                    class="cart-item__btn-inc-count js-change-count"
                    title="Увеличить на 1"
                    data-id="<@= good.id @>"
                    data-delta="1"
            >
                    <span class="glyphicon glyphicon-plus"></span>
                </span>
        </td>
        <td><span class="js-summa"><@= good.count * good.price @></span> руб.</td>
        <td>
                <span class="cart-item__btn-remove js-remove-from-cart" title="Удалить из корзины" data-id="<@= good.id @>">
                    <span class="glyphicon glyphicon-remove"></span>
                </span>
        </td>
    </tr>
    <@ }); @>
</script>


<script src="../../resources/js/vendor/jquery.min.js" type="text/javascript"></script>
<script src="../../resources/js/vendor/underscore.min.js" type="text/javascript"></script>
<script src="../../resources/js/modules/catalog.js" type="text/javascript"></script>
<script src="../../resources/js/modules/cart.js" type="text/javascript"></script>
<script src="../../resources/js/modules/main.js" type="text/javascript"></script>
</body>
</html>
