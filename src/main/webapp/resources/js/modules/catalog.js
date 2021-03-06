'use strict';

// Модуль каталога
let catalog = (function($) {

    // Инициализация модуля
    function init() {
        _render();
    }

    // Рендерим каталог
    function _render() {
        let template = _.template($('#catalog-template').html(),null, replaceFilter),
            $goods = $('#goods');

        $.getJSON('/resources/data/goods.json', function(data) {
            $goods.html(template({goods: data}));
        });
    }


    // Экспортируем наружу
    return {
        init: init
    }
    
})(jQuery);