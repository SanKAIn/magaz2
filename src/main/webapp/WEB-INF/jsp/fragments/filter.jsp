<%@ page contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<nav>
   <div>
      <div class="left-menu-block"><div class="blocktit6-open" jclose="j_match_form" jtype="click">
         <em>Подбор по параметрам</em>
      </div>
         <div id="j_match_form" class="matching">
         <form id="form_match" action="/m1_magazilla.php">
            <div id="match_event_data" data-event-action="form-list" data-event-label="Мобильные телефоны" style="display:none;"></div>
            <input type="hidden" name="katalog_" value="122">
            <input type="hidden" name="order_" value="pop">
            <input type="hidden" name="save_podbor_" value="1">
            <div class="h2">Цена</div>
            <table cellpadding="0" cellspacing="0" border="0" class="inter">
               <tbody>
               <tr>
                  <td style="padding:0 6px 0 0">от</td>
                  <td><input type="text" id="minPrice_" name="minPrice_" value="" class="rm-price-input" onkeyup="match_changeHandler(this, '1000')"></td>
                  <td style="padding:0 6px">до</td>
                  <td>
                     <input type="text" id="maxPrice_" name="maxPrice_" value="" class="rm-price-input" onkeyup="match_changeHandler(this, '1000')">&nbsp;грн.
                     <input type="hidden" name="sc_id_" value="980">
                  </td>
               </tr>
               </tbody>
            </table>
            <div class="h2 h2-open" jclose="manufacturers_presets" jtype="click">
               <em>Производители</em>
            </div>
            <div id="manufacturers_presets">
               <ul class="list">
                  <li id="li_br21012" class="match-li-href" style="display:none;"><i></i><input id="br21012" type="checkbox" name="mn_[]" value="21012" onclick="match_checkHandler(this,1)"><label class="model-not-best" for="br21012" title="id: 21012">2E</label></li>
                  <li id="li_br7203" class="match-li-href" style="display:none;"><i></i><input id="br7203" type="checkbox" name="mn_[]" value="7203" onclick="match_checkHandler(this,1)"><label class="model-not-best" for="br7203" title="id: 7203">AGM</label>
                  </li>
                  <li id="li_br8" class="match-li-href" style="display:none;"><i></i><input id="br8" type="checkbox" name="mn_[]" value="8" onclick="match_checkHandler(this,1)"><label class="model-not-best" for="br8" title="id: 8">Alcatel</label></li>
                  <li id="li_br259" class="match-li-href" style="display:none;"><input id="br259" type="checkbox" name="mn_[]" value="259" onclick="match_checkHandler(this,1)"><label class="model-not-best" for="br259" title="id: 259">Assistant</label></li>
                  <li id="li_br14119" class="match-li-href" style="display:none;"><i></i><input id="br14119" type="checkbox" name="mn_[]" value="14119" onclick="match_checkHandler(this,1)"><label class="model-not-best" for="br14119" title="id: 14119">Astro</label></li>
                  <li id="li_br190" class="match-li-href" style="display:none;"><i></i><input id="br190" type="checkbox" name="mn_[]" value="190" onclick="match_checkHandler(this,1)"><label class="model-not-best" for="br190" title="id: 190">Asus</label></li>
                  <li id="li_br10415" class="match-li-href" style="display:none;"><i></i><input id="br10415" type="checkbox" name="mn_[]" value="10415" onclick="match_checkHandler(this,1)"><label class="model-not-best" for="br10415" title="id: 10415">Atel</label></li>
                  <li id="li_br6395" class="match-li-href open"><i></i><input id="br6395" type="checkbox" name="mn_[]" value="6395" onclick="match_checkHandler(this,1)"><label class="brand-best" for="br6395" title="id: 6395"><a href="/kata/122/blackview/">Blackview</a></label></li>
               </ul>
               <div class="clr"></div>
               <div class="show-all">
                  <span id="br_all" class="rm-brands-plus" jtype="click" jtoggle="li_br21012,li_br7203,li_br8,li_br31050,li_br402,li_br259,
                  li_br14119,li_br190,li_br10415,li_br21331,li_br8419,li_br989,li_br1262,li_br880,li_br9660,li_br6501,li_br10154,li_br875,
                  li_br346,li_br519,li_br22837,li_br1512,li_br431,li_br1364,li_br903,li_br20472,li_br736,li_br31690,li_br29562,li_br31154,
                  li_br10796,li_br3644,li_br2298,li_br9687,li_br11549,li_br16436,li_br731,li_br102,li_br7580,li_br14018,li_br10763,li_br890,
                  li_br112,li_br7398,li_br9198,li_br21858,li_br12227,li_br13617,li_br13260,li_br133,li_br29301,li_br384,li_br30980,li_br3708,
                  li_br152,li_br156,li_br1128,li_br22385,li_br3338,li_br23728,li_br651,li_br20334,li_br9886,li_br28682,li_br33605,br_all,br_best">
                     <em>Все бренды</em>
                  </span>
                  <span id="br_best" class="rm-brands-minus open" jtype="click" jtoggle="li_br21012,li_br7203,li_br8,li_br31050,li_br402,
                  li_br259,li_br14119,li_br190,li_br10415,li_br21331,li_br8419,li_br989,li_br1262,li_br880,li_br9660,li_br6501,li_br10154,
                  li_br875,li_br346,li_br519,li_br22837,li_br1512,li_br431,li_br1364,li_br903,li_br20472,li_br736,li_br31690,li_br29562,
                  li_br31154,li_br10796,li_br3644,li_br2298,li_br9687,li_br11549,li_br16436,li_br731,li_br102,li_br7580,li_br14018,li_br10763,
                  li_br890,li_br112,li_br7398,li_br9198,li_br21858,li_br12227,li_br13617,li_br13260,li_br133,li_br29301,li_br384,li_br30980,
                  li_br3708,li_br152,li_br156,li_br1128,li_br22385,li_br3338,li_br23728,li_br651,li_br20334,li_br9886,li_br28682,li_br33605,
                  br_all,br_best">
                     <em>Основные бренды</em>
                  </span>
               </div>
            </div>
            <div>
               <div id="series_cov_div" style="display: none;"><div class="h2 h2-close" id="series_title" jclose="series_div" jtype="click">
                  <em>Серии</em>
               </div>
                  <div id="series_div" style="display: none;">
                     <ul class="list"></ul>
                  </div>
               </div>
               <div class="clr"></div>
               <div class="h2 h2-open" id="preset_t_15555" jclose="preset15555" jtype="click">
                  <em>Цвет корпуса</em>
               </div>
               <ul id="preset15555" class="list l-plate color-plate">
                  <li><i></i><input type="checkbox" id="cl4" name="cl_[]" value="4" onclick="match_checkHandler(this)"><label for="cl4"><span class="c-chk" style="background-color: #e1d2b5" title="бежевый"></span></label></li>
               </ul>
               <div class="clr"></div>
               <div class="h2 h2-open" id="preset_t_1355" jclose="preset1355" jtype="click">
                  <em>По направлениям</em>
               </div>
               <ul id="preset1355" class="list">
                  <li class="match-li-href"><i></i><input type="checkbox" id="c1358" name="pr_[]" value="1358" onclick="match_checkHandler(this)" title=""><label for="c1358"><a href="/kata/122/pr-1358/">смартфоны</a></label><span jtype="click" jsource="https://m.ua/mtools/mui_note.php?idnote_=29" jid="gkc2xms7je2_n_" jsub="Y" jcache="Y"><img width="18" height="12" border="0" src="img/help2.png" class="help_ic"></span></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c41512" name="pr_[]" value="41512" onclick="match_checkHandler(this)" title=""><label for="c41512"><a href="/kata/122/pr-41512/">флагманы</a></label><span jtype="click" jsource="https://m.ua/mtools/mui_note.php?idnote_=27778" jid="gkc2xms7je2_n_" jsub="Y" jcache="Y"><img width="18" height="12" border="0" src="img/help2.png" class="help_ic"></span></li>
               </ul>
               <div class="clr"></div>
               <div class="h2 h2-open" id="preset_t_1350" jclose="preset1350" jtype="click">
                  <em>Дисплей</em>
                  <span jtype="click" jsource="https://m.ua/mtools/mui_note.php?idnote_=1793" jid="gkc2xms7je2_n_1793" jsub="Y" jcache="Y">
                     <img width="18" height="12" border="0" src="/img/help2.png" class="help_ic"></span>
               </div>
               <ul id="preset1350" class="list">
                  <li class="match-li-href"><i></i><input type="checkbox" id="c1353" name="pr_[]" value="1353" onclick="match_checkHandler(this)" title=""><label for="c1353"><a href="/kata/122/pr-1353/">≤ 5"</a></label></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c16472" name="pr_[]" value="16472" onclick="match_checkHandler(this)" title=""><label for="c16472" data-altnames="5.2,5.45"><a href="/kata/122/pr-16472/">5.1 – 5.5"</a></label></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c36618" name="pr_[]" value="36618" onclick="match_checkHandler(this)" title=""><label for="c36618" data-altnames="5.7,5.8,5.9"><a href="/kata/122/pr-36618/">5.6 – 6"</a></label></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c36617" name="pr_[]" value="36617" onclick="match_checkHandler(this)" title=""><label for="c36617" data-altnames="6.2,6.3,6.4"><a href="/kata/122/pr-36617/">6.1 – 6.5"</a></label></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c41901" name="pr_[]" value="41901" onclick="match_checkHandler(this)" title=""><label for="c41901" data-altnames="6.7"><a href="/kata/122/pr-41901/">6.6 – 6.8"</a></label></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c10225" name="pr_[]" value="10225" onclick="match_checkHandler(this)" title=""><label for="c10225" data-altnames="6.9,7"><a href="/kata/122/pr-10225/">&gt; 6.8"</a></label></li>
               </ul>
               <div class="clr"></div>
               <div class="h2 h2-open" id="preset_t_1361" jclose="preset1361" jtype="click">
                  <em>Разрешение дисплея</em>
                  <span jtype="click" jsource="https://m.ua/mtools/mui_note.php?idnote_=1794" jid="gkc2xms7je2_n_1794" jsub="Y" jcache="Y">
                     <img width="18" height="12" border="0" src="/img/help2.png" class="help_ic">
                  </span>
               </div>
               <ul id="preset1361" class="list">
                  <li class="match-li-href"><i></i><input type="checkbox" id="c8032" name="pr_[]" value="8032" onclick="match_checkHandler(this)" title=""><label for="c8032"><a href="/kata/122/pr-8032/">все HD (720)</a></label><span jtype="click" jsource="https://m.ua/mtools/mui_note.php?idnote_=11537" jid="gkc2xms7je2_n_1794" jsub="Y" jcache="Y"><img width="18" height="12" border="0" src="img/help2.png" class="help_ic"></span></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c9306" name="pr_[]" value="9306" onclick="match_checkHandler(this)" title=""><label for="c9306"><a href="/kata/122/pr-9306/">Full HD (1080)</a></label><span jtype="click" jsource="https://m.ua/mtools/mui_note.php?idnote_=11538" jid="gkc2xms7je2_n_1794" jsub="Y" jcache="Y"><img width="18" height="12" border="0" src="img/help2.png" class="help_ic"></span></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c15049" name="pr_[]" value="15049" onclick="match_checkHandler(this)" title=""><label for="c15049" data-altnames="1440"><a href="/kata/122/pr-15049/">Quad HD</a></label><span jtype="click" jsource="https://m.ua/mtools/mui_note.php?idnote_=11484" jid="gkc2xms7je2_n_1794" jsub="Y" jcache="Y"><img width="18" height="12" border="0" src="img/help2.png" class="help_ic"></span></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c21935" name="pr_[]" value="21935" onclick="match_checkHandler(this)" title="" disabled=""><label for="c21935" data-altnames="2160,3840х2160,3840x2160"><a href="/kata/122/pr-21935/">Ultra HD (4K)</a></label><span jtype="click" jsource="https://m.ua/mtools/mui_note.php?idnote_=11485" jid="gkc2xms7je2_n_1794" jsub="Y" jcache="Y"><img width="18" height="12" border="0" src="img/help2.png" class="help_ic"></span>
                  </li>
               </ul>
               <div class="clr"></div>
               <div class="h2 h2-open" id="preset_t_18111" jclose="preset18111" jtype="click">
                  <em>Соотношение экран / корпус</em>
                  <span jtype="click" jsource="https://m.ua/mtools/mui_note.php?idnote_=8283" jid="gkc2xms7je2_n_8283" jsub="Y" jcache="Y">
                     <img width="18" height="12" border="0" src="/img/help2.png" class="help_ic">
                  </span>
               </div>
               <ul id="preset18111" class="list">
                  <li class="match-li-href"><i></i><input type="checkbox" id="c18115" name="pr_[]" value="18115" onclick="match_checkHandler(this)" title=""><label for="c18115">66 – 70 %</label></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c18112" name="pr_[]" value="18112" onclick="match_checkHandler(this)" title=""><label for="c18112">71 – 75 %</label></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c33336" name="pr_[]" value="33336" onclick="match_checkHandler(this)" title=""><label for="c33336">76 – 80 %</label></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c36059" name="pr_[]" value="36059" onclick="match_checkHandler(this)" title=""><label for="c36059"><a href="/kata/122/pr-36059/">81 – 85 % (тонкая рамка)</a></label></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c18116" name="pr_[]" value="18116" onclick="match_checkHandler(this)" title=""><label for="c18116"><a href="/kata/122/pr-18116/">&gt; 85 % (безрамочные)</a></label>
                  </li>
               </ul>
               <div class="clr"></div>
               <div class="h2 h2-open" id="preset_t_18117" jclose="preset18117" jtype="click">
                  <em>Фронтальная камера</em>
                  <span jtype="click" jsource="https://m.ua/mtools/mui_note.php?idnote_=8284" jid="gkc2xms7je2_n_8284" jsub="Y" jcache="Y">
                     <img width="18" height="12" border="0" src="/img/help2.png" class="help_ic">
                  </span>
               </div>
               <ul id="preset18117" class="list">
                  <li class="match-li-href"><i></i><input type="checkbox" id="c18119" name="pr_[]" value="18119" onclick="match_checkHandler(this)" title=""><label for="c18119"><a href="/kata/122/pr-18119/">≤ 2 МП</a></label></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c18121" name="pr_[]" value="18121" onclick="match_checkHandler(this)" title=""><label for="c18121"><a href="/kata/122/pr-18121/">3 – 5 МП</a></label></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c34428" name="pr_[]" value="34428" onclick="match_checkHandler(this)" title=""><label for="c34428"><a href="/kata/122/pr-34428/">7 – 8 МП</a></label></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c34429" name="pr_[]" value="34429" onclick="match_checkHandler(this)" title=""><label for="c34429"><a href="/kata/122/pr-34429/">13 МП</a></label></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c18122" name="pr_[]" value="18122" onclick="match_checkHandler(this)" title=""><label for="c18122"><a href="/kata/122/pr-18122/">16 МП</a></label></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c42620" name="pr_[]" value="42620" onclick="match_checkHandler(this)" title=""><label for="c42620">≥ 20 МП</label></li>
               </ul>
               <div class="clr"></div>
               <div class="h2 h2-open" id="preset_t_30724" jclose="preset30724" jtype="click">
                  <em>SIM-карты</em>
               </div>
               <ul id="preset30724" class="list">
                  <li class="match-li-href"><i></i><input type="checkbox" id="c10553" name="pr_[]" value="10553" onclick="match_checkHandler(this)" title=""><label for="c10553"><a href="/kata/122/pr-10553/">1 SIM-карта</a></label><span jtype="click" jsource="https://m.ua/mtools/mui_note.php?idnote_=4845" jid="gkc2xms7je2_n_" jsub="Y" jcache="Y"><img width="18" height="12" border="0" src="img/help2.png" class="help_ic"></span></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c1356" name="pr_[]" value="1356" onclick="match_checkHandler(this)" title=""><label for="c1356"><a href="/kata/122/pr-1356/">2 SIM-карты</a></label><span jtype="click" jsource="https://m.ua/mtools/mui_note.php?idnote_=1665" jid="gkc2xms7je2_n_" jsub="Y" jcache="Y"><img width="18" height="12" border="0" src="img/help2.png" class="help_ic"></span></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c19997" name="pr_[]" value="19997" onclick="match_checkHandler(this)" title=""><label for="c19997"><a href="/kata/122/pr-19997/">2 SIM (SIM + SIM/карта памяти)</a></label><span jtype="click" jsource="https://m.ua/mtools/mui_note.php?idnote_=8997" jid="gkc2xms7je2_n_" jsub="Y" jcache="Y"><img width="18" height="12" border="0" src="img/help2.png" class="help_ic"></span></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c36240" name="pr_[]" value="36240" onclick="match_checkHandler(this)" title=""><label for="c36240"><a href="/kata/122/pr-36240/">2 слота SIM + карта памяти</a></label><span jtype="click" jsource="https://m.ua/mtools/mui_note.php?idnote_=24281" jid="gkc2xms7je2_n_" jsub="Y" jcache="Y"><img width="18" height="12" border="0" src="img/help2.png" class="help_ic"></span></li>
                  <li class="match-li-href"><i></i><input type="checkbox" id="c7140" name="pr_[]" value="7140" onclick="match_checkHandler(this)" title=""><label for="c7140"><a href="/kata/122/pr-7140/">3 SIM-карты</a></label><span jtype="click" jsource="https://m.ua/mtools/mui_note.php?idnote_=3128" jid="gkc2xms7je2_n_" jsub="Y" jcache="Y"><img width="18" height="12" border="0" src="img/help2.png" class="help_ic"></span></li>
               </ul>
               <div class="clr"></div>
               <div class="extended-line"></div>
               <div class="h2 h2-close extended-title" jclose="extended_params,extended_params_phrase" id="extended_params_phrase" jtype="click" jsource="https://m.ua/mtools/dot_output/mui_menu_podbor.php?katalog_=122&amp;mode_=extended&amp;use_cgi_p_=1" jtarget="extended_params" jjs="m_match.changeHandler();" onclick="if (event &amp;&amp; event.stopPropagation) { tooltip.onClickHandler(event); event.stopPropagation(); }">
                  <em>Расширенный подбор</em>
               </div>
               <div id="extended_params" style="display:none;">
                  <div style="margin: 30px 0 30px;">
                     <img src="/img/loader-9.gif" width="78" height="12" border="0" alt="">
                  </div>
               </div>
               <div class="submit">
                  <input id="match_submit" onclick="if(tooltip.xhr_){tooltip.xhr_.abort();}" type="submit" value="Подобрать → (1392)" class="submit-button">
               </div>
            </div>
         </form>
            <div style="padding-left:0" class="add-proposition">
               <a href="#" link="/m1_forum.php?katalog_=122">
                  <span>Вопросы и пожелания по подбору (поиску) товара</span>
                  →
               </a>
            </div>
            <input type="hidden" id="brands_ID" name="brands_" value="">
            <input type="hidden" id="presets_ID" name="presets_" value="">
            <input type="hidden" id="subkatalogs_ID" name="subkatalogs_" value="">
            <input type="hidden" id="colors_ID" name="colors_" value="">
            <input type="hidden" id="series_ID" name="series_" value="">
            <input type="hidden" id="years_ID" name="years_" value="">
      <script>
         var brands_ = [21012,7203,8,31050,116,402,259,14119,190,10415,6395,21331,8419,989,1262,880,9660,6501,7208,10154,875,346,519,22837,1512,431,1364,903,20472,736,647,31690,29562,31154,10796,3644,2298,9687,11549,16436,731,102,7580,14018,10763,890,112,7398,120,9198,21858,12227,13617,7754,3672,13260,133,29301,384,28645,30980,3708,147,152,314,156,28468,1128,12347,22385,3338,23728,651,20334,9886,28682,33605,3917,816];
         var presets_ = [1358,41512,37906,25131,1338,1397,8193,1370,12993,3370,35184,1668,1344,40396,1347,1669,1353,16472,36618,36617,41901,10225,8032,9306,15049,21935,18115,18112,33336,36059,18116,7253,11003,21399,7254,7251,35388,11793,8773,10988,19016,23872,32803,1376,38914,38915,38916,38913,18119,18121,34428,34429,18122,42620,39058,39294,42619,40470,35439,21351,36951,33326,10989,33327,40254,37989,38940,34642,37343,33343,36023,33340,33341,37344,31279,34602,32689,38190,35440,38237,6671,31161,11026,2647,39418,1391,8022,19199,40466,16619,5049,1396,36475,31968,35813,40024,7047,36066,27744,27745,27746,34016,10553,1356,19997,36240,7140,1523,32263,31088,32690,35319,35320,38376,41994,1527,19709,10224,1389,35707,1938,34976,7231,19717,38821,33337,10693,39595,33874,5455,35327,8932,8933,8934,42139,35438,38597,42615,35632,41820,2767,5047,41414,41415,41416,41418,41419,41417,41420,41421,27683,24030,27681,34648,35358,35359,34643,36990,31474,34646,39521,37898,35321,41900,38814,42002,34647,36393,40706,34649,34650,34652,35451,38813,6498,20977,9730,28322,9266,11004,36343,19926,36344,33338,36345,9267,9269,41992,41993,41995,29449,3180,29452,41492,29663,29504,35968,35967,35969,35313,39476,3179,29450,3181,29664,29505,39059,10272,10274,10275,10276,36060,10277,32805,32806,32807,32808,32809,32810,33797,33799,38743,35249,33798,35250,38744,33800,33803,33804,37911,33805,37910,33806];
         var subkatalogs_ = [];
         var colors_ = [2,3,4,5,6,7,8,9,24,10,11,12,13,14,28,16,25,17,19,20,22,27,23];
         var IDKatalog_ = 122;
         var IDKatalogGood_ = 0;

         var call_q_count = true;
         var call_match = true;

         match_initial();

         function match_changeHandler(item, timeout) {
            if (typeof m_match !== 'undefined') {
               m_match.changeHandler(item, timeout);
            }
         }

         function match_checkHandler(item, do_series) {
            if (typeof m_match !== 'undefined') {
               m_match.checkHandler(item, do_series);
            }
         }
      </script>
         </div>
      </div>
   </div>
</nav>
<script>
   var localeCode = "${pageContext.response.locale}";
</script>