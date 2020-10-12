//------------------slider--------------------------------
theimage = new Array();

// Format: theimage[...]=[image URL, link URL, name/description]
theimage[0]=["images/1.jpg", "", "Leopards in yala"];
theimage[1]=["images/2.jpg", "", "Elephants in yala"];
theimage[2]=["images/3.jpg", "", "Birds in yala"];
theimage[3]=["images/4.jpg", "", "Animals"];
theimage[4]=["images/5.jpg", "", "Safari "];
theimage[5]=["images/6.jpg", "", "Crocodile"];
theimage[6]=["images/7.jpg", "", "Deer"];
theimage[7]=["images/8.jpg", "", "Camping"];
theimage[8]=["images/9.jpg", "", "Hotels"];
theimage[9]=["images/10.jpg", "", "Leopards"];

playspeed=3000;//  ms
//#####

i=0;

//###########################################
window.onload=function(){
	
	preloadSlide();
	
	SetSlide(0);

	//autoplay
	PlaySlide();
};
//###########################################
function SetSlide(num) {
	
	i=num%theimage.length;
	
	if(i<0)i=theimage.length-1;

	document.images.imgslide.src=theimage[i][0];

	document.getElementById('slidebox').innerHTML=theimage[i][2];

	document.getElementById('slidecount').innerHTML= " "+(i+1)+" - "+theimage.length;

}
//###########################################
function PlaySlide() {
	if (!window.playing) {
		PlayingSlide(i+1);
		if(document.slideshow.play){
			document.slideshow.play.value="   Stop   ";
		}
	}
	else {
		playing=clearTimeout(playing);
		if(document.slideshow.play){
			document.slideshow.play.value="   Play   ";
		}
	}

	if(document.images.imgPlay){
		setTimeout('document.images.imgPlay.src="'+imgStop+'"',1);
		imgStop=document.images.imgPlay.src;
	}
}
//###########################################
function PlayingSlide(num) {
	playing=setTimeout('PlayingSlide(i+1);SetSlide(i+1);', playspeed);
}

//###########################################
function preloadSlide() {
	for(k=0;k<theimage.length;k++) {
		theimage[k][0]=new Image().src=theimage[k][0];
	}
}
//###########################################