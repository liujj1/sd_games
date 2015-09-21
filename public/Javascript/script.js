$(document).ready(function(){
	/* The following code is executed once the DOM is loaded */
	
	
	//1 加载所需资源
	// 图片
	/*
	var imgs = ['/a.jpg', '/b.jpg', '/c.jpg'];
	
	function loadAssets(imgs, complete){
		var count = imgs.length;
		var loaded = 0;
		
		$.each(imgs, function(i, src){
			loadImg(src, cb);
		});	
		
		function cb(){
			loaded++;
			if(loaded == count){
				complete()
			}
		}
		
		function loadImg(src, callback){
			$('<img/>').attr('src', src).on('load', callback);
		}
	}
	
	
	
	
	//2 请求中奖结果
	//true, false
	$.get('/result', function(data){
		3
		1
		
		
		if(data == 1){
			initGame(true)	
		}else{
			initGame(false)
		}		
	});
	
	*/
	
	var running = false;
	var success = false
	
	/*function initGame(bool){
		success = bool;
		initCard()
		running = true;		
	}*/
	/*
	function resetGame(){
		running = false;	
		$('#game').empty();
	}*/







	/*function color(){
		var color = $(sponsorDescription).css( "background-image" );
		color.img('img/sponsors/front.jpg');
		}*/
	
	/*function flip(elem){
		
		// data('flipped') is a flag we set when we flip the element:
		
		if(elem.data('flipped'))
		{
			// If the element has already been flipped, use the revertFlip method
			// defined by the plug-in to revert to the default state automatically:
			
			elem.revertFlip();
			
			// Unsetting the flag:
			elem.data('flipped',false)
		}
		else
		{
			// Using the flip method defined by the plugin:
			
			elem.flip({
				direction:'lr',
				speed: 350,
				onBefore: function(){
					elem.html(elem.siblings('.sponsorData').html());


					elem.css("background-image","url(/images/sponsors/front.png)");
				},
				onEnd: function(){
					//elem.css("background-image","url(/images/sponsors/front.png)");
					//alert("success");
				}
			});
			// Setting the flag:
			elem.data('flipped',true);
		}
	}*/
	
	
	/*initGame(success);*/
	
	/*$('#resetGame').click(function(){
		resetGame();
		initGame();
	})*/
	
	
});
