var jOrdersSearch = (function(){

    var inited = false, o = {lang:{}}, listMngr;
    var $main, $block, $form, $list, $pgn, $orders, $rss;
    var geo = {$block:0, $city:0, $country:0, country:0, cityAC:0,cityID:0,cityPreSuggest:{}, cityName:{}};
    var map = {$block:0, $map:0, map:0, clusterer:0, points:[], bffmap:0, mapInfoWindow:0, mapMarkers:0 };
    var budget = {$block:0, $ex:0, id:0, cache:{}};
    var dp = {$block:0, cache:{}, child:{}, t:1, id:0};
    var specscache = {};
    var onPopstate = false;
    var m = 0;

    function init()
    {
        $main = $('#j-orders-search');
        $block = $('#j-orders-search-list');
        var $formBlock = $('#j-orders-search-form-block');

        $form = $formBlock.find('form');
        $orders = $form.find('[name="orders"]');
        $list = $block.find('.j-list');
        $pgn = $block.find('.j-pagination');
        $rss = $block.find('.j-rss');
        map.$map = $block.find('#map-desktop');
        map.$block = map.$map.parent();

        if(o.ajax){
            $pgn.on('click', '.j-pgn-page', function(){
                var $el = $(this);
                listMngr.page($el.data('page'));
                return false;
            });
        }
        $pgn.on('change', '.j-pgn-goto', function(){
            var $el = $(this);
            listMngr.page($el.val());
            $el.val('');
            return false;
        });

        $form.on('click', '.j-cat-title', function(){
            var $el = $(this);
            var $li = $el.closest('li');
            $li.toggleClass('opened');
            $li.find('ul').toggleClass('hidden');
            return false;
        });

        $form.on('click', '.j-cat-check', function(){
            var $el = $(this);
            var $li = $el.closest('li');
            if(o.oneSpec) {
                $li.find('.j-cat-title').trigger('click');
                return false;
            }
            $li.removeClass('subchecked').toggleClass('checked');
            if($li.hasClass('checked')){
                $el.removeClass('fa-circle-o fa-circle').addClass('fa-check-circle');
                $li.find('ul li').addClass('checked');
                $li.find('ul i').removeClass('fa-square-o').addClass('fa-check-square-o');
            }else{
                $el.removeClass('fa-check-circle fa-circle').addClass('fa-circle-o');
                $li.find('ul li').removeClass('checked');
                $li.find('ul i').removeClass('fa-check-square-o').addClass('fa-square-o');
            }
            if(o.type == o.typeProduct) ordersValueCats();
            else ordersValueSpecs();
            listMngr.submit({}, true);
            return false;
        });

        $form.on('click', '.j-spec', function(){
            var $el = $(this);
            var $li = $el.closest('li');
            if(o.oneSpec){
                if($li.hasClass('checked')){
                    document.location = o.locationDefault;
                    return false;
                }
                var url = $el.data('url');
                if(url){
                    document.location = url;
                    return false;
                }
            }else{
                $li.toggleClass('checked');
                correctParent($li);
                ordersValueSpecs();
            }
            listMngr.submit({}, true);
            return false;
        });

        $form.on('click', '.j-spec-nocat', function(){
            var $li = $(this).closest('li');
            $li.toggleClass('checked');
            $li.find('i.fa').toggleClass('fa-square-o fa-check-square-o');

            var v = [];
            var s = {};
            var nSpec = 0;
            $form.find('li.checked > .j-spec-nocat').each(function(){
                var $el = $(this);
                v.push($el.data('keyword'));
                nSpec = intval($el.data('id'));
                s[ $el.data('id') ] = 1;
            });
            var kv = v.join(',');
            $orders.val(kv);
            checkBudget(v.length == 1 ? nSpec : o.rootSpec);
            setDp(o.typeService, v.length == 1 ? nSpec : o.rootSpec);
            specscache[kv] = s;
            listMngr.submit({}, true);
            return false;
        });

        $form.on('show.bs.collapse', '.j-collapse', function(){
            var $el = $(this).prev('a.h6');
            if( ! $el.length) return;
            $el.addClass('active');
            $el.find('i.fa').removeClass('fa-chevron-right').addClass('fa-chevron-down');
        });

        $form.on('hide.bs.collapse', '.j-collapse', function(){
            var $el = $(this).prev('a.h6');
            if( ! $el.length) return;
            $el.removeClass('active');
            $el.find('i.fa').removeClass('fa-chevron-down').addClass('fa-chevron-right');
        });

        $form.on('click', '.j-cat', function(){
            var $el = $(this);
            var $li = $el.closest('li');
            if(o.oneSpec){
                if($li.hasClass('checked')){
                    document.location = o.locationDefault;
                    return false;
                }
                var url = $el.data('url');
                if(url){
                    document.location = url;
                    return false;
                }
            }else{
                $li.toggleClass('checked');
                correctParent($li);
                ordersValueCats();
            }
            listMngr.submit({}, true);
            return false;
        });

        $form.on('click', '.j-cat-parent', function(){
            var $el = $(this);
            var $li = $el.closest('li');
            if(o.oneSpec){
                var url = $el.data('url');
                if(url){
                    document.location = url;
                    return false;
                }
            }else{
                $li.toggleClass('checked');
                var $i = $li.find('i');
                if($li.hasClass('checked')){
                    $i.removeClass('fa-circle-o').addClass('fa-check-circle');
                }else{
                    $i.addClass('fa-circle-o').removeClass('fa-check-circle');
                }
                ordersValueCats();
            }
            listMngr.submit({}, true);
            return false;
        });

        geo.fn = (function(){
            geo.$block = $('#j-left-region');
            geo.$city = geo.$block.find('#j-region-city-select');
            var $cityVal = geo.$block.find('#j-region-city-value');
            var $region = $form.find('[name="r"]');
            geo.country = intval(o.defCountry);

            geo.$country = geo.$block.find('#j-left-region-country');
            if(geo.$country.length){
                geo.$country.change(function(){
                    geo.country = intval(geo.$country.val());
                    if(geo.country){
                        initCity();
                        geo.cityAC.setParam('country', geo.country);
                        geo.$city.addClass('hidden');
                        if( geo.cityPreSuggest.hasOwnProperty(geo.country) ) {
                            geo.cityAC.setSuggest(geo.cityPreSuggest[geo.country], true);
                        }else{
                            bff.ajax(bff.ajaxURL('geo', 'country-presuggest'), {country:geo.country}, function(data){
                                geo.cityAC.setSuggest[geo.country] = data;
                                geo.cityAC.setSuggest(data, true);
                            });
                        }
                        geo.$city.removeClass('hidden');
                    }else{
                        geo.$city.addClass('hidden');
                        $region.val(0);
                        $cityVal.val(0);
                         if( ! onPopstate) {
                            listMngr.submit({}, true);
                         }
                    }
                    return true;
                });
                geo.country = intval(geo.$country.val());
            }else{
                $form.on('shown.bs.collapse', '#j-left-region', function(){
                    initCity();
                });
            }

            var cityInited = false;
            function initCity(){
                if(cityInited) return;
                cityInited = true;
                var hidden = false;
                if(geo.$city.hasClass('hidden')){
                    hidden = true;
                    geo.$city.removeClass('hidden');
                }
                geo.$city.autocomplete( bff.ajaxURL('geo', 'region-suggest'),{
                    valueInput: $cityVal, params:{reg:1, country: geo.country},
                    suggest: o.preSuggest ? o.preSuggest : app.regionPreSuggest,
                    onSelect: function(cityID, cityTitle, ex){
                        geo.cityName[intval(cityID)] = cityTitle;
                        if(ex.hasOwnProperty('data') && ex.data.hasOwnProperty(3)){
                            $region.val(ex.data[3]);
                        }else{
                            $region.val(0);
                        }
                        geo.fn.onCitySelect();
                    },
                    doPrepareText: function(html){
                         var regionTitlePos = html.toLowerCase().indexOf('<br');
                         if( regionTitlePos != -1 ) {
                         html = html.substr(0, regionTitlePos);
                         }
                         html = html.replace(/<\/?[^>]+>/gi, ''); // striptags
                         return $.trim(html);
                    }
                }, function(){ geo.cityAC = this; });
                if(hidden)  geo.$city.addClass('hidden');
            }
            if(geo.$city.is(':visible')) initCity();
            return {
                onCitySelect:function(){
                    if( ! onPopstate) {
                        listMngr.submit({}, true);
                    }
                },
                clear:function(){
                    if (geo.$country.length) {
                        geo.$country.val(0);
                        geo.$city.addClass('hidden');
                    }
                    $region.val(0);
                    $cityVal.val(0); geo.$city.val('');
                },
                onPopstate:function(){
                    if(geo.$country.length){
                        if( ! geo.$country.find(':selected').length){
                            geo.$country.find(':first').prop('selected', true);
                        }
                    }
                    var city = intval(geo.$block.find('#j-region-city-value').val());
                    if(geo.cityName.hasOwnProperty(city)){
                        geo.$city.val(geo.cityName[city]);
                    }
                }
            };
        }());

        budget.$block = $('#j-order-price-block');
        budget.$block.on('change', function(){
            if( ! onPopstate) {
                listMngr.submit({}, true);
            }
        });

        if(intval(o.currSpec)){
            o.currSpec = intval(o.currSpec);
            budget.id = o.currSpec;
            budget.cache[budget.id] = budget.$block.html();
            dp.id = o.currSpec;
            dp.t = o.type;
        }

        if(intval(o.currCat)){
            o.currCat = intval(o.currCat);
            dp.id = o.currCat;
            dp.t = o.type;
        }

        var $chpro = $form.find('.j-checkbox-pro');
        var $pro = $form.find('[name="pro"]');
        $chpro.on('click', function(){
            $chpro.toggleClass('checked');
            $pro.val($chpro.hasClass('checked') ? 1 : 0);
            $chpro.find('i.fa').toggleClass('fa-check-square-o fa-square-o');
            if( ! onPopstate) {
                listMngr.submit({}, true);
            }
        });

        var bMobileSubmit = false;
        $form.on('click', '.j-clear-filter', function(){
            if( ! o.oneSpec){
                $form.find('.j-spec').each(function(){
                    var $el = $(this);
                    var $li = $el.closest('li');
                    $li.removeClass('checked');
                    $li.find('i').removeClass('fa-check-square-o').addClass('fa-square-o');
                    $li = $li.parent().closest('li');
                    $li.removeClass('checked subchecked');
                    $li.find('.j-cat-check').removeClass('fa-check-circle fa-circle').addClass('fa-circle-o');
                });
                $form.find('.j-spec-nocat').each(function(){
                    var $li = $(this).closest('li');
                    $li.removeClass('checked');
                    $li.find('i.fa').removeClass('fa-check-square-o').addClass('fa-square-o');
                });
                $orders.val('');
            }
            geo.fn.clear();
            $form.get(0).reset();
            $chpro.removeClass('checked');
            $pro.val(0);
            $chpro.find('i.fa').removeClass('fa-check-square-o').addClass('fa-square-o');
            setDp();
            if(o.type == o.typeService){
                $form.find('.j-f-st:first').prop('checked', true);
            }
            $form.append('<input type="hidden" name="clear" value="1" />');
            listMngr.submit({}, true);
            $form.find('.j-collapse.in:not(:first)').collapse('hide');
            if(app.device() != app.devices.desktop){
                $formBlock.collapse('hide');
                bMobileSubmit = true;
            }

            return false;
        });

        $block.on('click', '.j-f-view-type', function(){
            var $el = $(this);
            m = intval($el.data('id'));
            $form.find('[name="m"]').val(m);
            listMngr.submit({}, true);
            showViewType();
            return false;
        });

        $block.on('click', '.j-map-marker', function(){
            if(map.bffmap.isYandex()){
                var n = intval($(this).data('n'));
                map.fn.openBalloon(n);
            }else if(map.bffmap.isGoogle()){
                var id = intval($(this).data('id'));
                map.fn.popupMarker(id, false);
            }
            $.scrollTo(map.$block, {duration:500, offset:-150});
            return false;
        });

        $form.on('change', '.j-f-st', function(){
            listMngr.submit({}, true);
        });

        m = intval($form.find('[name="m"]').val());
        listMngr = app.list($form, {
            onSubmit: function(resp, ex) {
                if(ex.scroll){
                    if(m){
                        $.scrollTo(map.$block, {offset: -150, duration:500});
                    }else{
                        $.scrollTo($list, {offset: -150, duration:500});
                    }
                }
                $list.html(resp.list);
                $pgn.html(resp.pgn);
                var st = intval($form.find('[name="st"]').val());
                if(resp.hasOwnProperty('count')){
                    $main.find('.j-orders-count').text(resp.count);
                }
                if(resp.hasOwnProperty('points') && resp.points){
                    map.fn.showPoints(resp.points);
                }else{
                    map.fn.clearPoints();
                }
                if(resp.hasOwnProperty('rss') && resp.rss){
                    rss.onSubmit(resp.rss);
                }
            },
            onProgress: function(progress, ex) {
                if(ex.fade) $list.toggleClass('disabled');
            },
            onPopstate: function($form, query) {
                onPopstate = true;
                if(intval($pro.val())){
                    $chpro.addClass('checked');
                    $chpro.find('i.fa').addClass('fa-check-square-o').removeClass('fa-square-o');
                }else{
                    $chpro.removeClass('checked');
                    $chpro.find('i.fa').addClass('fa-square-o').removeClass('fa-check-square-o');
                }
                onPopstate = false;
            },
            onAfterDeserialize: function($form, query){
                if(o.type == o.typeProduct){
                    var nCat = correctCatsDesktop();
                    correctCatsMobile();
                    setDp(o.type, nCat);
                    $form.deserialize(query, true);
                }
                dp.$block.find('.j-dp-parent').each(function(){
                    addDpChild($(this));
                });
                $form.deserialize(query, true);
                openDp();
                if(o.type == o.typeService){
                    if($form.find('.j-f-st:checked').length == 0){
                        $form.find('.j-f-st:first').prop('checked', true);
                    }
                }
                geo.fn.onPopstate();
                if(o.type == o.typeService){
                    massActions();
                    historySpec();
                }
                showViewType();
            },
            ajax: o.ajax,
            url: o.locationDefault
        });

        map.fn = (function(){

            var inited = false;
            function init(){
                if(inited) return;
                inited = true;

                if(o.coordDefaults){
                    o.coordDefaults = o.coordDefaults.split(',');
                }else{
                    o.coordDefaults = [55.76, 37.64];
                }

                map.bffmap = app.map(map.$map.get(0), o.coordDefaults, function(mmap) {
                    if (this.isYandex()) {
                        map.map = mmap;
                        map.clusterer = new ymaps.Clusterer({
                            preset: 'islands#blueIcon',
                            groupByCoordinates:true,
                            clusterBalloonLeftColumnWidth:50
                        });
                    }else if (this.isGoogle()) {
                        map.mapInfoWindow = new google.maps.InfoWindow({});
                    }
                    if(o.points && o.points.length) showPoints(o.points);
                }, {controls: 'search'});
            }

            function showPoints(points){
                if( ! inited){
                    o.points = points;
                    return;
                }
                if( ! map.bffmap) return;

                if(map.bffmap.isYandex()) {

                    clearPoints();
                    map.points = [];

                    for (var i in points) {
                        if (points.hasOwnProperty(i)) {
                            var coord;
                            if (o.coordorder == 'longlat') {
                                coord = [points[i].lng, points[i].lat];
                            } else {
                                coord = [points[i].lat, points[i].lng];
                            }
                            map.points[i] = new ymaps.Placemark(
                                coord,
                                {
                                    balloonContentBody: points[i].b,
                                    clusterCaption: points[i].n
                                }, {
                                    preset: 'islands#blueIcon'
                                });

                        }
                    }
                    map.clusterer.add(map.points);
                    map.map.geoObjects.add(map.clusterer);

                    map.map.setBounds(map.clusterer.getBounds(), {
                        checkZoomRange: true
                    });
                }
                else if (map.bffmap.isGoogle())
                {
                    if (map.clusterer) {
                        map.clusterer.clearMarkers();
                    }
                    var mapG = map.bffmap.getMap();
                    map.mapMarkers = {};
                    var mapMarkersToCluster = [];
                    map.mapInfoWindow.close();

                    for(var i in points){
                        if (points.hasOwnProperty(i)) {
                            var v = points[i];
                            var id = intval(v.id);
                            var marker = new google.maps.Marker({
                                position: new google.maps.LatLng(parseFloat(v.lat), parseFloat(v.lng))
                            });
                            marker.itemID = id;
                            map.mapMarkers[id] = {
                                position: marker.getPosition(),
                                balloon: v.b
                            };
                            mapMarkersToCluster.push(marker);
                            google.maps.event.addListener(marker, 'click', function () {
                                map.fn.popupMarker(this.itemID, true);
                            });
                        }
                    }

                    map.clusterer = new MarkerClusterer(mapG, mapMarkersToCluster, {
                        imagePath: app.rootStatic+'/js/markerclusterer/images/m'
                    });
                    if (mapMarkersToCluster.length > 1) {
                        map.clusterer.fitMapToMarkers();
                    }
                    map.bffmap.refresh();
                }
            }

            function clearPoints(){
                if( ! inited) return;
                if(map.bffmap.isYandex() && map.clusterer !== 0) {
                    map.clusterer.removeAll();
                    map.map.geoObjects.remove(map.clusterer);
                }
            }

            function openBalloon(id){
                if( ! map.points.hasOwnProperty(id)) return;
                if(map.bffmap.isYandex()) {
                    try {
                        var geoObjectState = map.clusterer.getObjectState(map.points[id]);
                        if (geoObjectState.isShown) {
                            if (geoObjectState.isClustered) {
                                geoObjectState.cluster.state.set('activeObject', map.points[id]);
                                map.clusterer.balloon.open(geoObjectState.cluster);
                            } else {
                                try {
                                    map.points[id].balloon.open();
                                } catch (e) {
                                    map.map.setCenter(
                                        map.points[id].geometry.getCoordinates()
                                    ).then(function () {
                                            map.points[id].balloon.open();
                                        }, function (err) {
                                            bff_report_exception(err);
                                        }, this);
                                }
                            }
                        } else {
                            map.map.setCenter(
                                map.points[id].geometry.getCoordinates()
                            ).then(function () {
                                    openBalloon(id);
                                }, function (err) {
                                    bff_report_exception(err);
                                }, this);
                        }
                    } catch (e) {
                        bff_report_exception(e);
                    }
                }
            }

            function popupMarker(itemID, markerClick)
            {
                if (map.bffmap.isGoogle()) {
                    if (map.mapMarkers.hasOwnProperty(itemID)) {
                        var m = map.mapMarkers[itemID];
                        if (markerClick!==true) {
                            map.bffmap.getMap().panTo(m.position);
                        }
                        map.mapInfoWindow.close();
                        map.mapInfoWindow.setPosition(m.position);
                        map.mapInfoWindow.setContent(m.balloon);
                        map.mapInfoWindow.open(map.bffmap.getMap());
                    }
                }
                return false;
            }

            return {
                init:init,
                showPoints:showPoints,
                openBalloon:openBalloon,
                clearPoints:clearPoints,
                popupMarker:popupMarker
            }

        }());

        if(map.$map.is(':visible')){
            map.fn.init();
        }

        var $mobileCats = $form.find('#j-mobile-cats');
        $form.on('click', '.j-mobile-cat', function(){
            var $el = $(this);
            $form.find('#j-mobile-cat-'+$el.data('id')).collapse('show');
            $mobileCats.collapse('hide');
            return false;
        });

        $form.on('click', '.j-mobile-cat-back', function(){
            $(this).closest('.j-mobile-cat-block').collapse('hide');
            $mobileCats.collapse('show');
            return false;
        });

        $form.on('click', '.j-mobile-submit', function(){
            if(o.type == o.typeProduct) ordersValueCats(true);
            else ordersValueSpecs(true);
            bMobileSubmit = true;
            $formBlock.collapse('hide');
            listMngr.submit({}, true);
            return false;
        });

        $formBlock.on('hidden.bs.collapse', function(){
            if(bMobileSubmit){
                $.scrollTo($main, {offset: 0, duration:100});
            }
            bMobileSubmit = false;
        });

        if(o.oneSpec){
            $form.on('change', '.j-mobile-spec', function(){
                var $el = $(this);
                if($el.is(':checked')){
                    var url = $el.data('url');
                    if(url){
                        document.location = url;
                    }
                }else{
                    document.location = o.locationDefault;
                }
            });
        }

        dp.$block = $form.find('#j-orders-search-form-dp');

        dp.$block.on('change', '.j-dp-parent', function(){
            addDpChild($(this));
        });

        dp.$block.on('change', function(){
            listMngr.submit({}, true);
        });

        var rss = function(){
            var $block = $('#j-rss-popup');
            var $f   = $block.find('form');
            var $cat = $f.find('[name="cat_id"]');
            var $sub = $f.find('[name="sub_id"]');

            $cat.on('change', function(){
                bff.ajax(bff.ajaxURL('orders', 'rss-sub'), $f.serialize(), function(resp, errors){
                    if(resp && resp.success){
                        if(resp && resp.sub){
                            $sub.html(resp.sub);
                            $sub.parent().removeClass('hidden');
                        }else{
                            $sub.html('');
                            $sub.parent().addClass('hidden');
                        }
                    }
                });
            });

            app.popup('rss', $block, '#j-rss-popup-link');

            return{
                onSubmit:function(o){
                    if(o && o.cat){
                        $cat.html(o.cat);
                        $cat.parent().removeClass('hidden');
                    }else{
                        $cat.html('');
                        $cat.parent().addClass('hidden');
                    }
                    if(o && o.sub){
                        $sub.html(o.sub);
                        $sub.parent().removeClass('hidden');
                    }else{
                        $sub.html('');
                        $sub.parent().addClass('hidden');
                    }
                }
            }
        }();
    }

    function ordersValueSpecs(bmobile)
    {
        var v = [];
        var s = {};
        var nSpec = 0;
        if(bmobile){
            $form.find('.j-mobile-spec:checked').each(function(){
                var $el = $(this);
                v.push($el.val());
                if( ! s.hasOwnProperty($el.data('cat'))){
                    s[ $el.data('cat') ] = {};
                }
                s[ $el.data('cat') ][ $el.data('id') ] = 1;
                nSpec = intval($el.data('id'));
            });
        }else{
            $form.find('li.checked > .j-spec').each(function(){
                var $el = $(this);
                v.push($el.data('keyword'));
                if( ! s.hasOwnProperty($el.data('cat'))){
                    s[ $el.data('cat') ] = {};
                }
                s[ $el.data('cat') ][ $el.data('id') ] = 1;
                nSpec = intval($el.data('id'));
            });
        }
        var kv = v.join(',');
        $orders.val(kv);
        specscache[kv] = s;
        checkBudget(v.length == 1 ? nSpec : o.rootSpec);
        setDp(o.typeService, v.length == 1 ? nSpec : o.rootSpec);

        if(bmobile){
            correctSpecsDesktop();
        }else{
            correctSpecsMobile();
        }
    }

    function ordersValueCats(bmobile)
    {
        var v = [];
        var s = {};
        var nCat = 0;
        if(bmobile){
            $form.find('.j-cat-mobile:checked').each(function(){
                var $el = $(this);
                v.push($el.val());
                var cat = $el.data('cat');
                if(cat){
                    if( ! s.hasOwnProperty($el.data('cat'))){
                        s[ $el.data('cat') ] = {};
                    }
                    s[ $el.data('cat') ][ $el.data('id') ] = 1;
                }else{
                    s[ $el.data('id') ] = 1;
                }
                nCat = intval($el.data('id'));
            });
        }else{
            $form.find('li.checked > .j-cat').each(function(){
                var $el = $(this);
                v.push($el.data('keyword'));
                if( ! s.hasOwnProperty($el.data('cat'))){
                    s[ $el.data('cat') ] = {};
                }
                s[ $el.data('cat') ][ $el.data('id') ] = 1;
                nCat = intval($el.data('id'));
            });
            $form.find('li.checked > .j-cat-parent').each(function(){
                var $el = $(this);
                v.push($el.data('keyword'));
                s[ $el.data('id') ] = 1;
                nCat = intval($el.data('id'));
            });
        }
        var kv = v.join(',');
        $orders.val(kv);
        specscache[kv] = s;
        setDp(o.typeProduct, v.length == 1 ? nCat : 0);

        if(bmobile){
            correctCatsDesktop();
        }else{
            correctCatsMobile();
        }
    }

    function correctParent($li)
    {
        if($li.hasClass('checked')){
            $li.find('i').removeClass('fa-square-o').addClass('fa-check-square-o');
        }else{
            $li.find('i').removeClass('fa-check-square-o').addClass('fa-square-o');
        }
        var $ul = $li.parent();
        var $pli = $ul.closest('li');
        var $plii = $pli.find('.j-cat-check');
        var cnt = $ul.find('li').length;
        var ch = $ul.find('li.checked').length;
        if(ch == 0){
            $pli.removeClass('checked subchecked');
            $plii.removeClass('fa-check-circle fa-circle').addClass('fa-circle-o');
        }else
        if(ch == cnt){
            $pli.removeClass('subchecked').addClass('checked');
            $plii.removeClass('fa-circle-o fa-circle').addClass('fa-check-circle');
        }else{
            $pli.removeClass('checked').addClass('subchecked');
            $plii.removeClass('fa-circle-o fa-check-circle').addClass('fa-circle');
        }

    }

    function closePopup($el)
    {
        var $p = $el.closest('.dropdown');
        if($p.length){
            $p.removeClass('open');
        }
    }

    function massActions()
    {
        if(o.type != intval(o.typeService)) return;
        var t = intval($form.find('[name="st"]').val());
        if(o.aServiceTypes.hasOwnProperty(t)){
            $block.find('.j-f-service-type-title').text(o.aServiceTypes[t].t);
        }
        var $t = $block.find('.j-f-service-type');
        $t.parent().removeClass('active');
        $t.each(function(){
            if($(this).data('id') == t){
                $(this).parent().addClass('active');
            }
        });

    }

    function showViewType()
    {
        var m = intval($form.find('[name="m"]').val());
        var $types = $block.find('.j-f-view-type');
        $types.parent().removeClass('active');
        $types.each(function(){
            var $el = $(this);
            if(intval($el.data('id')) == m){
                $el.parent().addClass('active');
            }
        });
        if(m == 1){
            map.$block.removeClass('hidden');
            $list.before($pgn);
            $list.after($rss);
            map.fn.init();
        }else{
            map.$block.addClass('hidden');
            $pgn.before($list);
            $list.after($rss);
        }
    }

    function historySpec()
    {
        if(o.oneSpec) return;
        var rootspec = correctSpecsDesktop();
        if(rootspec > -1){
            checkBudget(rootspec);
            setDp(o.typeService, rootspec);
        }
        correctSpecsMobile();
    }

    function correctSpecsDesktop()
    {
        var rootspec = o.rootSpec;
        var kv = $orders.val();
        if( ! kv){
            $form.find('.checked > .j-spec').each(function(){
                var $el = $(this);
                var $li = $el.parent();
                $li.removeClass('checked');
                correctParent($li);
            });
            $form.find('.checked > .j-spec-nocat').each(function(){
                var $el = $(this);
                var $li = $el.parent();
                $li.removeClass('checked');
                $li.find('i.fa').removeClass('fa-check-square-o').addClass('fa-square-o');
            });
        }else{
            if(specscache.hasOwnProperty(kv)){
                var s = specscache[kv];
                var cnt = 0;
                var nSpec = 0;
                $form.find('.checked > .j-spec').each(function(){
                    var $el = $(this);
                    var $li = $el.parent();
                    $li.removeClass('checked');
                    correctParent($li);
                });
                $form.find('.j-spec').each(function(){
                    var $el = $(this);
                    if( s.hasOwnProperty($el.data('cat'))
                        && s[ $el.data('cat') ].hasOwnProperty($el.data('id'))
                        && s[ $el.data('cat') ][ $el.data('id') ]
                        ){
                        var $li = $el.parent();
                        $li.addClass('checked');
                        correctParent($li);
                        cnt++;
                        nSpec = intval($el.data('id'));
                    }
                });
                $form.find('.checked > .j-spec-nocat').each(function(){
                    var $el = $(this);
                    var $li = $el.parent();
                    $li.removeClass('checked');
                    $li.find('i.fa').removeClass('fa-check-square-o').addClass('fa-square-o');
                });
                $form.find('.j-spec-nocat').each(function(){
                    var $el = $(this);
                    if( s.hasOwnProperty($el.data('id'))
                        && s[ $el.data('id') ]
                        ){
                        var $li = $el.parent();
                        $li.addClass('checked');
                        $li.find('i.fa').removeClass('fa-square-o').addClass('fa-check-square-o');
                        cnt++;
                        nSpec = intval($el.data('id'));
                    }
                });
                if(cnt == 1 && nSpec){
                    rootspec = nSpec;
                }
            }else{
                return -1;
            }
        }
        return rootspec;

    }

    function correctSpecsMobile()
    {
        var kv = $orders.val();
        if( ! kv){
            $form.find('.j-mobile-spec:checked').prop('checked', false);
        }else{
            var aOrders = kv.split(',');
            $form.find('.j-mobile-spec').each(function(){
                var $el = $(this);
                var v = $el.val();
                for(var i in aOrders){
                    if(aOrders.hasOwnProperty(i)){
                        if(aOrders[i] == v){
                            $el.prop('checked', true);
                            break;
                        }
                    }
                }
            });
        }
    }

    function correctCatsDesktop()
    {
        var nCat = 0;
        var kv = $orders.val();
        $form.find('.checked > .j-cat').each(function(){
            var $el = $(this);
            var $li = $el.parent();
            $li.removeClass('checked');
            correctParent($li);
        });
        $form.find('.checked > .j-cat-parent').each(function(){
            var $el = $(this);
            var $li = $el.parent();
            $li.removeClass('checked');
            var $i = $li.find('i.fa');
            $i.removeClass('fa-check-circle').addClass('fa-circle-o');
        });

        if(kv){
            var aOrders = kv.split(',');
            $form.find('.j-cat').each(function(){
                var $el = $(this);
                if(aOrders.indexOf($el.data('keyword')) >= 0){
                    var $li = $el.parent();
                    $li.addClass('checked');
                    correctParent($li);
                    nCat = $el.data('id');
                }
            });
            $form.find('.j-cat-parent').each(function(){
                var $el = $(this);
                if(aOrders.indexOf($el.data('keyword')) >= 0){
                    var $li = $el.parent();
                    $li.addClass('checked');
                    var $i = $li.find('i.fa');
                    $i.addClass('fa-check-circle').removeClass('fa-circle-o');
                    nCat = $el.data('id');
                }
            });
            nCat = aOrders.length == 1 ? nCat : 0;
        }
        return nCat;
    }

    function correctCatsMobile()
    {
        var kv = $orders.val();
        if( ! kv){
            $form.find('.j-cat-mobile:checked').prop('checked', false);
        }else{
            var aOrders = kv.split(',');
            $form.find('.j-cat-mobile').each(function(){
                var $el = $(this);
                if(aOrders.indexOf($el.val()) >= 0){
                    $el.prop('checked', true);
                }
            });
        }
    }

    function checkBudget(specid)
    {
        specid = intval(specid);
        if(budget.id == specid) return;
        if(budget.cache.hasOwnProperty(specid)){
            budget.$block.html(budget.cache[specid]);
            budget.id = specid;
        }else{
            bff.ajax(bff.ajaxURL('orders&ev=ajax', 'search-price-ex'), {id:specid}, function(resp, errors){
                if(resp && resp.hasOwnProperty('html')){
                    budget.$block.html(budget.cache[specid] = resp.html);
                    budget.id = specid;
                }
            });
        }
    }

    function setDp(t, id)
    {
        t = intval(t);
        id = intval(id);
        dp.t = t;
        dp.id = id;
        if( ! dp.t || ! dp.id){
            dp.$block.html('');
            return;
        }
        if(dp.cache.hasOwnProperty(t) && dp.cache[t].hasOwnProperty(id)){
            dp.$block.html(dp.cache[t][id]);
        }else{
            if( ! dp.cache.hasOwnProperty(t)){
                dp.cache[t] = {};
            }
            if( ! dp.cache[t].hasOwnProperty(id)){
                bff.ajax(bff.ajaxURL('orders', 'dp-form'), {type:t, id:id, search:1}, function(data){
                    if(data && data.dp){
                        dp.$block.html(dp.cache[t][id] = data.dp);
                    }else{
                        dp.$block.html('');
                    }
                });
            }
        }
    }

    function addDpChild($el)
    {
        var id = $el.data('id');
        var val = $el.val();
        var key = id+'-'+val;
        if($el.is(':checked')){
            var $dp = $('#j-dp-child-'+key, dp.$block);
            if($dp.length){
                $dp.toggleClass('hidden', false);
            }else{
                var $jdp = $el.closest('.j-dp');

                if( ! dp.child.hasOwnProperty(dp.t)) dp.child[dp.t] = {};
                if(dp.child[dp.t].hasOwnProperty(key)){
                    var data = dp.child[dp.t][key];
                    $jdp.after(data.form);
                    reorderChildDp($jdp, id);
                }else{
                    bff.ajax(bff.ajaxURL('orders','dp-child-search'), {dp_id:id, dp_value:val, type:dp.t, id:dp.id}, function(data){
                        if(data && data.success) {
                            if(data.form.length){
                                dp.child[dp.t][key] = data;
                                $jdp.after(data.form);
                                reorderChildDp($jdp, id);
                            }
                        }
                    });
                }
            }
        }else{
            $('#j-dp-child-'+key, dp.$block).toggleClass('hidden', true);
        }
    }

    function reorderChildDp($jdp, id)
    {
        var $childs = dp.$block.find('.j-dp-child-'+id);
        if($childs.length > 1){
            $childs.sort(function(a,b){
                var a_num = intval( $(a).data('num') );
                var b_num = intval( $(b).data('num') );
                return a_num < b_num ? 1 : -1;
            });
            $.each($childs, function(index, row){
                $jdp.after(row);
            });
        }
    }

    function openDp()
    {
        dp.$block.find('.j-dp').each(function(){
            var $bl = $(this);
            var open = $bl.find('input[type="checkbox"]:checked').length > 0;
            if( ! open){
                $bl.find('input[type="text"]').each(function(){
                    if(intval($(this).val())){
                        open = true;
                    }
                });
            }
            if(open){
                $bl.collapse();
            }
        });
    }

    return{
        init: function(options)
        {
            if(inited) return; inited = true;
            o = $.extend(o, options || {});
            $(function(){ init(); });
        }
    }
}());
