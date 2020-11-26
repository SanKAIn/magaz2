'use strict';

// Модуль каталога с пагинацией
let catalogPag = (function($) {

    let ui = {
        $categoryBtn: $('.js-category'),
        $themeBtn: $('.js-theme'),
        $limit: $('#pages-limit'),
        $pag: $('#pagination'),
        $goods: $('#goods'),
        $goodsInfo: $('#goods-info')
    };
    let goodsTemplate = {
        big: _.template($('#goods-template-big').html(),null, replaceFilter),
        compact: _.template($('#goods-template-compact').html(),null, replaceFilter),
        list: _.template($('#goods-template-list').html(),null, replaceFilter)
    },
        pagTemplate = _.template($('#pagination-template').html(),null, replaceFilter);


    // Инициализация модуля
    function init() {
        _setTheme();
        _getData({
            resetPage: true
        });
        _bindHandlers();
    }

    // Устанавливаем тему
    function _setTheme() {
        let theme = localStorage.getItem('theme') || 'compact';
        $('.js-theme[data-theme="' + theme + '"]').addClass('active');
    }

    // Привязка событий
    function _bindHandlers() {
        ui.$categoryBtn.on('click', _changeCategory);
        ui.$themeBtn.on('click', _changeTheme);
        ui.$limit.on('change', _changeLimit);
        ui.$pag.on('click', 'a', _changePage);
    }

    // Смена категории
    function _changeCategory(e) {
        let $category = $(e.target);
        ui.$categoryBtn.removeClass('active');
        $category.addClass('active');

        _getData({
            resetPage: true
        });
    }

    // Смена вида каталога (темы)
    function _changeTheme(e) {
        let $theme = $(e.target).closest('button'),
            theme = $theme.attr('data-theme');
        ui.$themeBtn.removeClass('active');
        $theme.addClass('active');

        _getData({
            resetPage: false
        });

        localStorage.setItem('theme', theme);
    }

    // Смена лимита
    function _changeLimit() {
        _getData({
            resetPage: true
        });
    }

    // Смена страницы
    function _changePage(e) {
        e.preventDefault();
        e.stopPropagation();

        let $page = $(e.target).closest('li');
        ui.$pag.find('li').removeClass('active');
        $page.addClass('active');

        _getData();
    }

    // Получение опций-настроек для товаров
    function _getOptions(resetPage) {
        let categoryId = +$('.js-category.active').attr('data-category'),
            page = !resetPage ? +ui.$pag.find('li.active').attr('data-page') : 1,
            limit = +ui.$limit.val();

        return {
            category: categoryId,
            page: page,
            limit: limit
        }
    }

    // Получение данных
    function _getData(options) {
        var resetPage = options && options.resetPage,
            options = _getOptions(resetPage);
        $.ajax({
            url: 'all/mFilter',
            data: options,
            type: 'GET',
            cache: false,
            dataType: 'json',
            success: function(response) {
                if (response.code === 'success') {
                    _renderCatalog(response.goods);
                    _renderPagination({
                        page: options.page,
                        limit: options.limit,
                        countAll: response.countAll,
                        countItems: response.goods.length
                    });
                } else {
                    console.error('Произошла ошибка');
                }
            }
        });
    }

    // Рендер каталога
    function _renderCatalog(goods) {
        let theme = $('.js-theme.active').attr('data-theme');
        ui.$goods.html(goodsTemplate[theme]({goods: goods}));
    }

    // Рендер пагинации
    function _renderPagination(options) {
        let countAll = options.countAll,
            countItems = options.countItems,
            page = options.page,
            limit = options.limit,
            countPages = Math.ceil(countAll / limit),//- это количество всех товаро
            start = (page - 1) * limit + 1,
            end = start + countItems - 1;

        // Информация о показываемых товарах
        let goodsInfoMsg = start + ' - ' + end + ' из ' + countAll;
        ui.$goodsInfo.text(goodsInfoMsg);

        // Рендер пагинации
        ui.$pag.html(pagTemplate({
            page: page,
            countPages: countPages
        }));
    }

    // Экспортируем наружу
    return {
        init: init
    }
    
})(jQuery);