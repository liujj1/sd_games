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
	
	function initGame(bool){
		success = bool;
		initCard()
		running = true;		
	}
	
	function resetGame(){
		running = false;	
		$('#game').empty();
	}

	
	
	function initCard(){
		for(var i = 0; i < 4; i++){
			var card = $('<div class="sponsor" title="点击翻牌"><div class="sponsorFlip"></div><div class="sponsorData"><div class="sponsorDescription"></div></div></div>');
			card.appendTo('#game');
			card.bind('click', function(){
				if(!running){return;}
				
				// 翻拍
				flip($(this));
				
				running = false;
				
			});
		}
	}
	
				   

	/*function color(){
		var color = $(sponsorDescription).css( "background-image" );
		color.img('img/sponsors/front.jpg');
		}*/
	
	function flip(elem){
		
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
					// Insert the contents of the .sponsorData div (hidden from view with display:none)
					// into the clicked .sponsorFlip div before the flipping animation starts:
					
					elem.html(elem.siblings('.sponsorData').html());
				},
				onEnd: function(){
				//	randomImg()
					
					Math.floor(Math.random()*5)
					success = true;
					
					if(success){
						elem.css("background-image","url('img/sponsors/front.png')");
						alert("success")
					}else{
						alert('falid');	
						
					}
				}
			});
			// Setting the flag:
			elem.data('flipped',true);
		}
	}
	
	
	initGame(success);
	
	$('#resetGame').click(function(){
		resetGame();
		initGame();
	})
	
	
});
