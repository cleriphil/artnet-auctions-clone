$(function() {
	$('#auction_car').carousel({
	interval: 10000
	})

    $('#auction_car').on('slid.bs.carousel', function() {
    	//alert("slid");
	});

	$('#artist_car').carousel({
	interval: 10000
	})

    $('#artist_car').on('slid.bs.carousel', function() {
    	//alert("slid");
	});


});
