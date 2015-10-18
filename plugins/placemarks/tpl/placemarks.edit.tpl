<!-- BEGIN: MAIN -->

<script type="text/javascript"> 
	var myMap, 
        myPlacemark;
   
	ymaps.ready(function () {

		var plmset = false;
		var mapcoords = $("input[name=rcoord]").val();
		var mapzoom = $("input[name=rzoom]").val(); 

		if(!mapzoom){
			mapzoom = 12;
		} 

		if(mapcoords > '')
		{
			 mapcoords = mapcoords.split(',');
			 plmset = true;
			 
			myMap = new ymaps.Map ("YMapsID", {
				center: mapcoords,
				zoom: mapzoom,
			});
			
			$("#myPlacemark_delete").show();
		}
		else
		{
			myMap = new ymaps.Map("YMapsID", {
			   center: [55.76, 37.64],
			   zoom: 7
			}); 
	
			ymaps.geolocation.get({
			   provider: 'yandex',
			   mapStateAutoApply: true
			}).then(function (result) {
			   myMap.geoObjects.add(result.geoObjects);
			});
		}    

		myMap.controls.add(
			new ymaps.control.ZoomControl()
		);

		myMap.controls.add(
			new ymaps.control.SearchControl({provider: 'yandex#publicMap',  useMapBounds: true})
		);
		
		if(plmset)
		{
			myPlacemark = new ymaps.Placemark(
				mapcoords,
				{
					balloonContent: 'Местоположение!'
				}, 
				{
					iconLayout: 'default#image',
					iconImageHref: 'plugins/placemarks/images/placemark.png', // картинка иконки
					iconImageSize: [73, 46], // размеры картинки
					iconImageOffset: [-20, -50] // смещение картинки
				}
			);	

			myMap.geoObjects.add(myPlacemark);
		}
		
		myMap.events.add('click', function (e) {
			if (!myMap.balloon.isOpen()) {
				var coords = e.get('coords');
				
				if(plmset)
				{
					myMap.geoObjects.remove(myPlacemark);
				}
				
				myPlacemark = new ymaps.Placemark(
					coords, 
					{
						balloonContent: 'Местоположение'
					}, 
					{
						iconLayout: 'default#image',
						iconImageHref: 'plugins/placemarks/images/placemark.png', // картинка иконки
						iconImageSize: [73, 46], // размеры картинки
						iconImageOffset: [-20, -50] // смещение картинки
					}
				);												
				myMap.geoObjects.add(myPlacemark);

				plmset = true;
				
				$("input[name=rcoord]").val(coords);
				$("input[name=rzoom]").val(myMap.getZoom());
				$("#myPlacemark_delete").show();
			}
			else {
				myMap.balloon.close();
			}
		});
		
		document.getElementById('myPlacemark_delete').onclick = function () {
			myMap.geoObjects.remove(myPlacemark);
			$("input[name=rcoord]").val('');
			$("input[name=rzoom]").val('');
			$("#myPlacemark_delete").hide();
		};
	});
	
</script>

<div id="YMapsID" style="height: 320px;"></div>
<input type="hidden" name="rcoord" value="{MARK_COORD}"/>
<input type="hidden" name="rzoom" value="{MARK_ZOOM}"/>
<a href="javascript:void();" id="myPlacemark_delete" style="display:none;">Удалить метку</a>

<!-- END: MAIN -->