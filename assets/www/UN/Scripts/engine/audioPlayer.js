
var ogpath = String(window.location);
var path = ogpath.slice(0, ogpath.length - 10);
var isSafari = /Safari/.test(navigator.userAgent) && /Apple Computer/.test(navigator.vendor);

function msieversion() {

    var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE");

    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) // If Internet Explorer, return version number
    //alert(parseInt(ua.substring(msie + 5, ua.indexOf(".", msie))));
        return true;
    else // If another browser, return 0
        return false;
}
function loadAudio(audio){
	clearAudio();
	showLoader();
	setTimeout(function () {

	    if (isSafari) {
	        $('.audioPlayer').attr('type', "audio/mpeg");
	        $('.audioPlayer').attr('src', path +audio+ '.mp3');
	    } else if (msieversion()) {
	        $('.audioPlayer').attr('type', "audio/mpeg")
	        $('.audioPlayer').attr('src', audio + ".mp3")
	    } else {
	        $('.audioPlayer').attr('type', "audio/m4a")
	        $('.audioPlayer').attr('src', audio + ".m4a")
	    }
	},500);
}

function loadClickAudio(audio) {
    showLoader()
	clearAudio()
	audioLoaded=false
    setTimeout(function(){
		if(msieversion()){
			$('.audioPlayer').attr('type', "audio/mp3")
			$('.audioPlayer').attr('src', audio + ".mp3")
		}else{
			$('.audioPlayer').attr('type', "audio/m4a")
			$('.audioPlayer').attr('src', audio + ".m4a")
		}
		$('.audioPlayer').trigger('play');
	},500);
}

function clearAudio(){
	$('.audioPlayer').trigger('pause');
	$('.audioPlayer').attr('src', "");
	$(".audioPlayer").unbind('canplaythrough');
}




		
		
		
		