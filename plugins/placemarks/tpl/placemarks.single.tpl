<!-- BEGIN: MAIN -->

<script type="text/javascript"> 
	var myMap, 
        myPlacemark;
   
	ymaps.ready(function () {

		var mapcoords = '{MARK_COORD}';
		var mapzoom = {MARK_ZOOM};    
		
		mapcoords = mapcoords.split(',');
			 
		myMap = new ymaps.Map ("YMapsID", {
			center: mapcoords,
			zoom: mapzoom,
		});  

		myMap.controls.add(
			new ymaps.control.ZoomControl()
		);
		
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
		
	});
	
</script>

<div id="YMapsID" style="height: 320px;"></div>

<!-- END: MAIN -->