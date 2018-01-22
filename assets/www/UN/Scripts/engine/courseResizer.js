function fillDiv(div, proportional) {
  var currentWidth = div.innerWidth();
  var currentHeight = div.innerHeight();

  var availableHeight = window.innerHeight;
  var availableWidth = window.innerWidth;

  var scaleX = availableWidth / currentWidth;
  var scaleY = availableHeight / currentHeight;

   
  if (proportional) {
    scaleX = Math.min(scaleX, scaleY);
    scaleY = scaleX;
  }
   if(scaleX>=1){
	scaleX=1
  }
  
  if(scaleY>=1){
	scaleY=1
  }
  
  zoomScale=scaleX
  var translationX = Math.round((availableWidth - (currentWidth * scaleX)) / 2);
  var translationY = Math.round((availableHeight - (currentHeight * scaleY)) / 2);
  

    $(".scalingWrapper").css({
    "transform": "scale("+ scaleX + ", " + scaleY + ")"
  });
  

  $(".scalingWrapper").css({
    "-webkit-transform": "scale("+ scaleX + ", " + scaleY + ")"
  });
  $(".scalingWrapper").css({
    "-moz-transform": "scale("+ scaleX + ", " + scaleY + ")"
  });
  $(".scalingWrapper").css({
    "-o-transform": "scale("+ scaleX + ", " + scaleY + ")"
  });
   $(".scalingWrapper").css({
    "-ms-transform": "scale("+ scaleX + ", " + scaleY + ")"
  });
  
    $(".scalingMyWrapper").css({
    "width": $(window).width()+"px"

  });
   $(".scalingMyWrapper").css({
    "height": $(window).height()+"px"

  });
  
  $(".scalingWrapper").css({
			'left': translationX+ "px"
	});
	 $(".scalingWrapper").css({
			'top': translationY+ "px"
	});
	$(".playAnimation").css({
		'left': Math.round(currentWidth - $('.playAnimation').width()) / 2 + "px"
	});
	$(".playAnimation").css({
		'top': Math.round(currentHeight - $('.playAnimation').height()) / 2 + "px"
	});
  
  
 
}

function initialize() {
 
  fillDiv($(".scalingWrapper"), true);

   if ("onorientationchange" in window) {
   
 
    $(window).bind("orientationchange", function() { setTimeout(function() { fillDiv($(".scalingWrapper"), true); }, 500) });
  } else if ("ondeviceorientation" in window) {
    console.log("Using deviceorientation");
    // Unlike the event above this not limited to a horzontal/vertical
    // flip and will trigger for any device orientation movement
    $(window).bind("deviceorientation", function() { setTimeout(function() { fillDiv($(".scalingWrapper"), true); }, 500) });
  }else {
    console.log("No orientation supported, fallback to resize");
    $(window).bind("resize", function() { fillDiv($(".scalingWrapper"), true); });
  }
}
  