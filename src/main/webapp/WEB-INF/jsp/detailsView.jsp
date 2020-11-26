<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<meta id="root" about="${pageContext.request.contextPath}">
<jsp:include page="fragments/headTag.jsp"/>
<script type="text/javascript" src="resources/js/detail.js"></script>
<body onload="loadContent('${pageContext.request.contextPath}','', 1);">
<jsp:include page="fragments/bodyHeader.jsp"/>

<div style="font: normal 11px Arial">
    <table id="page_top" style="margin: 4px; display: table;text-align: left; width: 100%;">
        <tbody>
        <tr>
            <td style="font-size: 12px; padding: 0 0 0 8px; color: #990000;">
                <a href="https://m.ua/" style="background: url(/resources/images/icon.png) center center; width: 280px;
                    height: 70px; margin: 0 4px; border-radius: 8px; display: block;" title="Автомир интернет-магазин"></a>
            </td>
            <td width="100%">
                <table style="width:100%";>
                    <tbody>
                    <tr>
                        <td>
                            <div style="width: 100%; height: 70px; padding: 1px 1px 1px 1px; border-radius: 8px; background: #cde2e9">
                                <form action="${pageContext.request.contextPath}/all/find" method="GET" name="searchForm">
                                    <table width="100%">
                                        <tbody>
                                        <tr>
                                            <td style="width: 100%; height: 70px; border-radius: 8px">
                                                <input type="text" id="search_unfoc" name="key" autocomplete="on" style="width: 100%;" placeholder="Find...">
                                                <div >
                                                </div>
                                            </td>
                                            <td>
                                                <input type="submit" value="Найти" name="search_but_" class="naity">
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </form>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </td>
        </tr>
        </tbody>
    </table>
    <table id="page_middle" style="margin: 4px; display: table;text-align: left; width: 100%;">
        <tbody>
        <tr>
            <td style="font-size: 12px; padding: 0 0 0 8px; color: #000f99;">
                <div title="filters" style="width: 280px; padding-bottom: 9px; font: normal 11px Arial; box-sizing: border-box; display: block;">
                    <div style="display: block; text-decoration: none; cursor: pointer; border-bottom-width: 0; padding: 6px 0 6px 12px;
                        font: bold 12px Arial; color: #fff;margin: 0; box-sizing: border-box; border-collapse: collapse; border-spacing: 0;
                        text-align: left;">
                        <em>Фильтры</em>
                    </div>
                    <div style="padding: 5px 4px 15px 15px; background: #fef2cf; zoom: 1; font: normal 11px Arial; border-collapse: collapse;
                            box-sizing: border-box; border-spacing: 0; text-align: left;">
                        <form id="filter_search" action="/all/filter">
                            <div style="background: url(/resources/images/icon.png) no-repeat; margin-left: -7px;
                                    cursor: pointer; zoom: 1; display: block; padding: 10px 0 4px 15px; font: normal 12px Arial; color: #333;
                                    font-weight: 700; border-bottom: none;box-sizing: border-box;">
                                <em>Производители</em>
                            </div>
                            <div id="brand">
                                <ul class="list-group" style="padding: 0; margin: 0; box-sizing: border-box;
                                    display: block; margin-block-start: 1em; margin-block-end: 1em; margin-inline-start: 0px;
                                    margin-inline-end: 0px; padding-inline-start: 40px">

                                </ul>
                            </div>
                        </form>
                    </div>
                </div>
            </td>
            <td width="100%">

                <label style="float: left ; margin-right: 10px" for="order">Order by: </label>
                <select style="float: left; float: top" onchange="processSearch('${pageContext.request.contextPath}', 1)" style="margin-left: 5px" id="order"
                        class="form-control-sm">
                    <option selected value="price_asc">подешевле</option>
                    <option value="price_desc">подороже</option>
                    <option value="manufactured">производитель</option>
                    <option value="rating">отзывы</option>
                </select>


                <select style="float: right; float: top" onchange="processSearch('${pageContext.request.contextPath}', 1)"
                        style="margin-left: 5px; margin-right: 5px" id="limit"
                        class="form-control-sm">
                    <option selected>12</option>
                    <option>24</option>
                    <option>36</option>
                    <option>48</option>
                    <option>60</option>
                </select>
                <label style="float: right; margin-right: 10px" for="limit">Ships in a page: </label>

                <br/>
                <div style="margin-top: 15px">
                    <div class="row row-cols-1 row-cols-md-6" id="det">

                    </div>
                </div>
            </td>
        </tr>
        <div>
            <ul id="paging-bar" class="pagination pagination-sm justify-content-center">

            </ul>
        </div>
        </tbody>
    </table>
</div>

</body>
</html>
