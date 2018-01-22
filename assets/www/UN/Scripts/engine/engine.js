//--------------------------------------------*************Varialbles section*******************-----------------------------------------
var tempCourseId="";
var tempUserId="";
var tempBookmark="";
var tempScore="";
var tempTime="";
var tempCompletion=""
var TempStatus=""
var FinalStatus="";
var getSec = 0;
var finalSeconds=0
var checkTempCompletionARR=new Array()
checkTempCompletionARR[0]=0
checkTempCompletionARR[1]=0
var totalPages
var PageCompletedNumber
var completedModule= new Array()
var completedTopic= new Array()
var completeStatus="";
var whichTopic
var whichModule
var blockedTopic= new Array()
var blockedModule= new Array()
var playedNum=0
var moduleStr
var topicStr
var lastScreen
var moduleCompletedNumber
var TopicCompletedNumber
var tempCurrentTime
var tempTotalTime
var currehntTim
var percentage
var scoreFlag=true;
var oneClose=true;
var tempAudio
var userName
var bandSelection = "high";
var Controller
var CorrectAnswerCount = 0;
//--------------------------------------------------------------Conversation Template Script--------------------------------------------
var audioPlayed="false"
var startConversationTemplate="false"
var imageLoadingCount=0
var imagesLoader = new Array()
var imagesArr = new Array()
var imagesArrLoading= new Array()
var imagesArrLoadingStr=""
var audioPlayerCreated="no"
var imagesStr
var change
var bubbles
var numbers=0
var timerArray= new Array()
var timerStr
var textStr
var textArr= new Array()
var bubbleStyle= new Array
var topArr= new Array()
var leftArr= new Array()
var myObj 
var widthArr= new Array
var audioTime=0
var addChat=""
var totalAudioTime=0
var audioPlayHeadChecker
var chatStyleStr
var chatStyleArr=new Array()
var addBubble=""
var chatBubbleShow
var speechBubbleShow
var hideAllBubble
var chatBubbleHide
var mathch
var imagesAllLoaded="false"
var audioComplete=false
var debuggerShow=false
var xmlName
var templateID
var audioName
var currentSeekNumber
var animCounter=0
var myCount=0
var mySliderInterval
var currentSliderPos
var templateBeginScreen
var templateBeginScreen2
var numberofQuesToPull
var assessmentType
var assessmentScreenCount=0
var playAssessmentBeginScreenAudio=true
var relayClick = false;
var audioLoaded=false
var audioCounter=0


var playPauseInterval
var playPauseFnArr=[]
var playPauseCounter=0


var optionsLen
var lastQuestionSetDetails=[]
var answerSubmitted=false;
var reviewOptionsLen=[]	
var correctAnsSplit=[]
var reviewBtnAnswrID
function showReviewMode(){
$('#ReviewAssessment-panel .dataHolder').empty()
	for(i=0; i<lastQuestionSetDetails.length;i++){
			$('#ReviewAssessment-panel .dataHolder').append('<div class="reviewQuestionHolder" id="Question'+i+'"><div class="questionReview">'+lastQuestionSetDetails[i][0]+'</div><div class="questionFeedback">'+lastQuestionSetDetails[i][5]+'</div><div class="reviewOptions" id="reviewOptn'+i+'"></div></div>')
	}
	

	for(i=0; i<lastQuestionSetDetails.length;i++){
		for(j=0; j<lastQuestionSetDetails[i][3].length; j++){	
			$("#reviewOptn"+i).append('<div class="optionHolder" id="btn'+j+'"><div class="reviewTick"></div><input disabled="disabled" class="component" type='+lastQuestionSetDetails[i][4]+'></input><div class="optText" id="optText'+j+'">'+lastQuestionSetDetails[i][3][j]+'</div></div>')
		}
		$(".reviewQuestionHolder #Question"+i).hide()
	}
		
		
		
		
	setTimeout(function() {
	   for(i=0; i<lastQuestionSetDetails.length;i++){
			for(j=0; j<lastQuestionSetDetails[i][2].length; j++){	
				$("#reviewOptn"+i+" #btn"+j+" .component").prop("checked",lastQuestionSetDetails[i][2][j])
			}
		}
		
		for(i=0; i<lastQuestionSetDetails.length;i++){
			correctAnsSplit[i]= new Array()
			correctAnsSplit[i]=String(lastQuestionSetDetails[i][1]).split(",")
			 for(j=0; j<correctAnsSplit[i].length; j++){
			 reviewBtnAnswrID=String(correctAnsSplit[i][j]).substr(+6)
				 $("#reviewOptn"+i+" #btn"+Number(reviewBtnAnswrID-1)+" .reviewTick").html("<img src='Media/eng/images/assessment_correct.png'>")
			 }			 
		}		
	
	}, 500);
			
				
	if(JSONStructure[0].structure.AssessmentReviewMode=="pagination"){
		$('.reviewQuestionHolder').css('position','absolute')
		$('.reviewNxtBck').show()
		for(i=0; i<totalReviewScreens;i++){
			$(".dataHolder #Question"+i).hide()
		}
		
		reviewPageNum=1
		$('.reviewModePgNum').html("Question "+reviewPageNum+" of "+totalReviewScreens)
		lastReviewScreensNum=currentReviewScreensNum
		currentReviewScreensNum=reviewPageNum-1
		$(".dataHolder #Question"+lastReviewScreensNum).hide()
		$(".dataHolder #Question"+currentReviewScreensNum).show()
		
		checkReviewModeNavigation()
		$('.reviewNxtBck .prev').unbind().bind('click',function(){
			reviewPageNum--
			checkReviewModeNavigation()
			lastReviewScreensNum=currentReviewScreensNum
			currentReviewScreensNum=reviewPageNum-1
			$(".dataHolder #Question"+lastReviewScreensNum).hide()
			$(".dataHolder #Question"+currentReviewScreensNum).show()
			$('.reviewModePgNum').html("Question "+reviewPageNum+" of "+totalReviewScreens)
			
		})	
		
		$('.reviewNxtBck .next').unbind().bind('click',function(){
			reviewPageNum++
			checkReviewModeNavigation()
			lastReviewScreensNum=currentReviewScreensNum
			currentReviewScreensNum=reviewPageNum-1
			$(".dataHolder #Question"+lastReviewScreensNum).hide()
			$(".dataHolder #Question"+currentReviewScreensNum).show()
			$('.reviewModePgNum').html("Question "+reviewPageNum+" of "+totalReviewScreens)
		})	

	}
}

var reviewPageNum=1
var totalReviewScreensNum
var lastReviewScreensNum
var currentReviewScreensNum
function assessmentReviewMode(courseStructure,assessmentModNum,assessmentTopNum,totalAssessmentScreens){
		if(JSONStructure[0].structure.AssessmentType=='random'){
			totalReviewScreens=courseStructure.course.module[assessmentModNum].topic[assessmentTopNum].topicBreadCrum[0].pull 
		}else{
			totalReviewScreens=totalAssessmentScreens
		}
		
	for(i=0; i<totalReviewScreens;i++){
		lastQuestionSetDetails[i]=new Array()		
		for(j=0; j<6;j++){
			lastQuestionSetDetails[i][j]="$"
		}
		
	}
	$('.closeReviewAssessment').unbind().bind('click',function(){
		$('#ReviewAssessment-panel').hide();
		$('.ResultBtnSection').show()
	})	
	
}

function checkReviewModeNavigation(){

		if(reviewPageNum<=1){
			reviewPageNum=1
			$('.reviewNxtBck .prev').css('cursor','default').css('opacity','0.5')
		}else{
			$('.reviewNxtBck .prev').css('cursor','pointer').css('opacity','1')
		}
		
		
		if(reviewPageNum>=totalReviewScreens){
			reviewPageNum=totalReviewScreens
			$('.reviewNxtBck .next').css('cursor','default').css('opacity','0.5')
		}else{
			$('.reviewNxtBck .next').css('cursor','pointer').css('opacity','1')
		}	

}

//--------------------------------------------*************Debugger script*******************-----------------------------------------
//Reason: it shows the current loaded xml, template, audio and assessment correct answers. It also shos the values that are been set on scorm and retrived

var map = [];
onkeydown = onkeyup = function(e) {
    e = e || event;

    map[e.keyCode] = e.type == 'keydown';
    if (map[17] && map[192]) {
        
        if (debuggerShow == false) {
            $('#debugger').show()
            debuggerShow = true
        } else {
            debuggerShow = false
            $('#debugger').hide()
        }
        map = [];
    }

    var wid = $(window).outerWidth();
    var winx = $(window).width() / 2;
    var winy = $(window).height() / 2;
    var viewx = $('#debugger').outerWidth(true) / 2;
    var viewy = $('#debugger').outerHeight(true) / 2;
    $('#debugger').css('left', winx - viewx)

}


function hideLoader() {

   // setTimeout(function() {
        $('.loaderAssets').hide()
		$('.loaderAssets img').hide()
        $('.overlayBlack').hide()
		$('.breadcrumbs').css('opacity','1');
		$('.template-container').css('opacity','1');
		//showLoader()
    //}, 1000);
}


function showLoader() {
    $('.nav_style #prev, .nav_style #next').show();
    $('.loaderAssets').show()
	$('.loaderAssets img').show()
    $('.overlayBlack').show()
	$('.breadcrumbs').css('opacity','0');
	$('.template-container').css('opacity','0');
}


//--------------------------------------------*************is_touch_device*******************-----------------------------------------
//Reaseon: This funtion is used to check whether the device is touch or not. Basicaly it checks whether the device is mobile tablet or iPad.
function is_touch_device() {
    return (('ontouchstart' in window) || (navigator.MaxTouchPoints > 0) || (navigator.msMaxTouchPoints > 0));
}

//--------------------------------------------*************course xml loading functions*******************-----------------------------------------
//Reaseon: All the below given funtions are use to load the structure xml and parse it's data in arrays and variables
var topicTemplateId = '';
var templateDataId = '';
var templateAudio = '';
var template = '';
var topicData = '';
var glbcurrScore = 0;
var glbcurrAttempt = 0;
var globalcourseStructure = null;
var Engine = (function() {
    var courseStructure = null;
    var scromString = "";
    var currTopicData = null;
    var currAttempt = 1;
    var currScore = 0;
    var keywords = [];
    var alphabets = [];
    var USERSTATE = {
        module: 0,
        topic: 0,
        screen: 0,
        assessment: false

    };
    var templatesCache = {

    };
    var topicDataCache = {

    };

    function normalizeCourse(courseStructure){

		
	
		var modules 

		 modules = courseStructure.course.module.filter(function(element){
			 return element.visible=="true";
		});

		for(var moduleIndex=0;moduleIndex< modules.length;moduleIndex++){
			var module = modules[moduleIndex];

			var topics = module.topic;
			if(!(topics instanceof Array)){
				topics = module.topic = [topics];
			}
			topics  = module.topic = topics.filter(function(element){
				return element.visible=="true";
			});

			for(var topicIndex=0;topicIndex< topics.length;topicIndex++){
				/*for(var topicIndex in topics){*/
				var screens = topics[topicIndex].screen;
				if(!(screens instanceof Array)){
					screens = topics[topicIndex].screen = [screens];
				}
				var screens = topics[topicIndex].screen  = screens.filter(function(element){
					return element.visible=="true";
				});		
			}

		}
		return courseStructure;
	}
//.topicBreadCrum[0]
    
	var totalAssessmentScreens
	var assessmentModNum
	var assessmentTopNum
   function constructCourse(courseStructure){
	
			var modules = courseStructure.course.module;
		
		for(var index=0;index<modules.length;index++){
			var module = modules[index];
			for(var topicIndex=0;topicIndex<module.topic.length;topicIndex++){
			
			
				if(modules[index].topic[topicIndex].topicBreadCrum[0].type==="assessment"){
				
					totalAssessmentScreens=modules[index].topic[topicIndex].screen.length
					assessmentModNum=index
					assessmentTopNum=topicIndex
				}
			}
		}
		assessmentReviewMode(courseStructure,assessmentModNum,assessmentTopNum,totalAssessmentScreens)
		return courseStructure;
	}

	function getCourseStructure(){
		//var xhr= $.ajax({
			var myStructure= new Array()
			var normalizedCourse = normalizeCourse(JSONStructure[0].structure);
			courseStructure = constructCourse(normalizedCourse);
			globalcourseStructure =courseStructure;
			return globalcourseStructure
		
	};




   

function definedOrNot(flag){
		return ((flag==undefined) ? "" : flag);
	}




   //--------------------------------------------*************assessment_BeginScreen*******************-----------------------------------------
//Reaseon: Below given funtions is to create assessment begin screen which has instruction about the assessment module and the begin button on click of which the user will enter the assessment.
var beginScreenInside=false;
	function assessment_BeginScreen(template, topicData){
	
    		if(beginScreenInside){
			
			return false;	
		}else{
		TempStatus= new Array()
		for(i=0;i<courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen.length;i++){
				arrayScorm[USERSTATE.module][USERSTATE.topic][i] = "0"
				courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[i].isCorrect =false
			}
			for (i = 0; i < arrayScorm.length; i++) {
            for (k = 0; k < arrayScorm[i].length; k++) {
                if (k == (arrayScorm[i].length - 1)) {
                    TempStatus = TempStatus + arrayScorm[i][k];
                } else {
                    TempStatus = TempStatus + arrayScorm[i][k] + "^";
                }
            }
            if (i == (arrayScorm.length - 1)) {
			
			} else {
                TempStatus = TempStatus + "|";
            }
        }
		$('#debugger #info').text(xmlName + "---" + templateID + "---" + audioName + "---" + USERSTATE.module + "--" + USERSTATE.topic + "--" + USERSTATE.screen)
        $('#debugger #scorm').html("<p align='center'>Course Status</p>" + TempStatus + "~" + USERSTATE.module + ',' + USERSTATE.topic + ',' + USERSTATE.screen)
		if(courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].audioName!=''){
		
			playAssessmentBeginScreenAudio=true
           loadAudio(courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].audioName)
			
		}
	
		$('.template-container .content').hide();
			$('.BeginScreen').show();
			
			beginScreenInside=true;
		}
		$(".BeginScreen").html("");
            $(".BeginScreen").html(template);
			//alert($(".template-container .content #container").html)
		
			$('.btnBegin').unbind().bind('click',function(){
				$('.BeginScreen').hide();
				$('.template-container .content').show();
				$(".audioPlayer").trigger('pause');
				playAssessmentBeginScreenAudio=false
				
					
				for(i=0;i<courseStructure.course.module[assessmentModNum].topic[assessmentTopNum].screen.length;i++){
					courseStructure.course.module[assessmentModNum].topic[assessmentTopNum].screen[i].isCorrect =false
				}
				
			})
 
	}
	
	function assessment_BeginScreen2(template, topicData){
	
    		if(beginScreenInside){
			
			return false;	
		}else{
		TempStatus= new Array()
		for(i=0;i<courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen.length;i++){
				arrayScorm[USERSTATE.module][USERSTATE.topic][i] = "0"
				courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[i].isCorrect =false
			}
			for (i = 0; i < arrayScorm.length; i++) {
            for (k = 0; k < arrayScorm[i].length; k++) {
                if (k == (arrayScorm[i].length - 1)) {
                    TempStatus = TempStatus + arrayScorm[i][k];
                } else {
                    TempStatus = TempStatus + arrayScorm[i][k] + "^";
                }
            }
            if (i == (arrayScorm.length - 1)) {
			
			} else {
                TempStatus = TempStatus + "|";
            }
        }
		$('#debugger #info').text(xmlName + "---" + templateID + "---" + audioName + "---" + USERSTATE.module + "--" + USERSTATE.topic + "--" + USERSTATE.screen)
        $('#debugger #scorm').html("<p align='center'>Course Status</p>" + TempStatus + "~" + USERSTATE.module + ',' + USERSTATE.topic + ',' + USERSTATE.screen)
		if(courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].audioName!=''){
		
			playAssessmentBeginScreenAudio=true
           loadAudio(courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].audioName)
			
		}
	
		$('.template-container .content').hide();
			$('.BeginScreen').show();
			
			beginScreenInside=true;
		}
		$(".BeginScreen").html("");
            $(".BeginScreen").html(template);
			//alert($(".template-container .content #container").html)
		
			$('.btnBegin').unbind().bind('click',function(){
				$('.BeginScreen').hide();
				$('.template-container .content').show();
				$(".audioPlayer").trigger('pause');
				playAssessmentBeginScreenAudio=false
				
					
				for(i=0;i<courseStructure.course.module[assessmentModNum].topic[assessmentTopNum].screen.length;i++){
					courseStructure.course.module[assessmentModNum].topic[assessmentTopNum].screen[i].isCorrect =false
				}
				
			})
 
	}

    //--------------------------------------------*******************checkCompletion*******************-----------------------------------------
    //Reaseon: Below given funtions checks the complation of completed modules and it's topics to display green tickmark of completion on completed modules and topics
    function checkCompletion() {
        if (completeStatus == "completed") {
            setTimeout(function() {
                var modules = courseStructure.course.module;
                for (var i_mod = 0; i_mod < Number(modules.length); i_mod++) {
                    var topics = modules[i_mod].topic;
                    for (var i_top = 0; i_top < topics.length; i_top++) {
                        for (var i_scr = 0; i_scr < topics[i_top].screen.length; i_scr++) {
                            arrayScorm[i_mod][i_top][i_scr] = '1';
                        }
                        $(".accordion .menu-container").find('#panel' + i_mod).find('.' + i_mod + '-' + i_top).find('.completed').css('display', 'inline');
                    }
                    $(".accordion .menu-container").eq(i_mod).find('a').find('.completed').css('display', 'inline');
                }

            }, 1500);

        } else {

            setTimeout(function() {

                //completedModule=[0,11,2]
                if (moduleStr != "" && moduleStr != undefined && moduleStr != null) {
                    for (var i_mod = 0; i_mod < completedModule.length; i_mod++) {
                        $(".accordion .menu-container").eq(completedModule[i_mod]).find('a').find('.completed').css('display', 'inline');
                    }
                }
                var firstIndexOfTopic = new Array()
                var lastIndexOfTopic = new Array()
                for (var i_top = 0; i_top < completedTopic.length; i_top++) {
                    firstTopicIndex = String(completedTopic[i_top]).split("_");
                    lastTopicIndex = String(completedTopic[i_top]).split("_");
                    
                    $(".accordion .menu-container").find('#panel' + firstTopicIndex[0]).find('.' + firstTopicIndex[0] + '-' + lastTopicIndex[1]).find('.completed').css('display', 'inline')
                }


            }, 1500);

        }
    }


	

function withAudioFunctions(){

	var modules = courseStructure.course.module;
	loadAudio(templateAudio)
	$(".audioPlayer").unbind('canplaythrough').bind('canplaythrough', function(){
		audioLoaded=true
		$(".audioPlayer").unbind('canplaythrough')
	})
}

function withoutAudioFunctions(){
	$(".audioPlayer").unbind('canplaythrough')
	hideLoader()
	var modules = courseStructure.course.module;
	loadPages(template, topicData, topicTemplateId, templateAudio,USERSTATE)
	if(globalcourseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].interactiveLocknext=="false"){	
		$(".hover_tooltip").css('opacity', '1')
		$(".hover_tooltip").css('display', 'block')
	}
	

	if (is_touch_device()) {
		$('.nav_style #next').show();
		$('.nav_style #prev').show();
	}

				if (courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].type === "assessment") {
					if (courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].BeginScreen == "On") {						
						assessment_BeginScreen(templateBeginScreen, getTopicData("Assessment_BeginScreen.xml"))
					}
				}
	
               if (courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].type === "assessment2") {
					if (courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].BeginScreen == "On") {						
						assessment_BeginScreen2(templateBeginScreen2, getTopicData("Assessment_BeginScreen2.xml"))
					}
				}
	checkAssessment();

}
 //----------------------------------------*************`*******************-----------------------------------------
    // Reason: Below given funtions is called on every next or back click and even when the user jumps from menu. This parses the xml and html content to the function called in templated.js.
    // This function also handles the page assests cachign part. It will load all the images that are used in the page once also the images are loaded then it will load the audio.
    // Once the audio is loaded then it wil display the page. When the page images and the audio is beign loaded is will call showLoader() function once all the assessts are loaded
    // it will call hideLoader() function and will display the page

function renderTopic(template, topicData, topicTemplateId, templateAudio) {
	var modules = courseStructure.course.module;
	var tempmodule = globalcourseStructure.course.module;
	var temptopic = tempmodule[USERSTATE.module].topic;
	var tempflag = true;
	answerSubmitted=false
    
    clearInterval(playPauseInterval)
    playPauseCounter=0

        $('.template-container').addClass('mahindra');
        if (is_touch_device()) {
            $('.nav_style #next').hide();
            $('.nav_style #next').hide();
            //$('#audio').css('display', 'none')
            //$('#audio').hide()
        }

		
        startConversationTemplate = "false"
        audioPlayed = "false"
        audioComplete = false
		audioLoaded=false
		audioCounter=0
		
        if (scoreFlag) {
            if (globalcourseStructure.CertificateOption.status != "off") {
                var scoreVar = "";
                if (Controller.service == 'no') {
                    scoreVar = getLMSData('score');
                } else {
                    scoreVar = tempScore;
                }
                if (Number(JSONStructure[0].structure.assessmentScore.passingScore) > Number(scoreVar)) {} else {
                    if (globalcourseStructure.course.module[USERSTATE.module].topic[0].type == 'assessment') {
                        var r = confirm("Do you want to  see the Certificate?");
                        if (r == true) {
                            showCertificate(scoreVar);
                            scoreFlag = false;
                        }
                    }
                }
            }
        }

        currTopicData = topicData;
        $('.template-container').removeClass('mahindra');

        $(".template-container .content #container").css('height', '100px')
        $("#jquery_jplayer_1").jPlayer("clearMedia");
        $('.instunctionGloabal').removeClass("blinker")
        $('.instunctionGloabal').hide()
        

        $('.nav_style #next').removeClass("blinker")
        $('.nav_style #next').removeClass("border-pulsate")
        $(".hover_tooltip").hide()
        $(".template-container .content").html('');


        templateBeginScreen2 = '<div class="BeginScreen clearfix">\
		<div class="BeginCourseTitle">Managing Postpartum Hemorrhage</div>\
				<div class="assess_bg">\
					<div class="assess_tex_bg">\
						<div class="assessment_text">\
						 <p class="center_tex"><b>Post-Module Quiz</b></p>\
						 <p>The quiz will be scored. You have learnt about Managing Postpartum Hemorrhage now, so you are expected to know all the answers.</p>\
						 <p>To complete this 21 questions quiz, you will select the correct answer for each questions.</p>\
						 <p>After you complete the quiz, you will be able to see your results.</p>\
						</div>\
					</div>\
				</div>\
				<div class="clearfix">\
				<div class="ScoreText"><span>Score so far:</span> 0 points out of 0</div>\
				<div class="begin_btn"><div class="btnBegin assessmentBeginBtn">NEXT</div></div>\
				</div>\
			</div>';
			
			templateBeginScreen = '<div class="BeginScreen clearfix">\
		<div class="BeginCourseTitle">Managing Postpartum Hemorrhage</div>\
				<div class="assess_bg">\
					<div class="assess_tex_bg">\
						<div class="assessment_text">\
						 <p class="center_tex"><b>Pre-Module Quiz</b></p>\
						 <p>The quiz will not be scored and you are not expected to know all the answers. If you did, you wouldn&#39;t need this Module!</p>\
						 <p>To complete this 21 questions quiz, you will select the correct answer or select "I don&#39;t know." After you complete the quiz, you will be able to see the questions you missed.</p>\
						</div>\
					</div>\
				</div>\
				<div class="clearfix">\
				<div class="ScoreText"><span>Score so far:</span> 0 points out of 0</div>\
				<div class="begin_btn"><div class="btnBegin assessmentBeginBtn">NEXT</div></div>\
				</div>\
			</div>';

			$('.template-container').removeClass('mahindra');

			showLoader()
            imageLoadingCount = 0
            imagesArrLoading = new Array()
            imagesArrLoadingStr = ""
            imagesArrLoadingStr = topicData.content.image.cacheImages
            imagesArrLoading = imagesArrLoadingStr.split(",")
           
			
            $('.nav_style #prev, .nav_style #next').show();
            if (is_touch_device()) {
                $('.nav_style #next').hide();
                $('.nav_style #prev').hide();

                //$('#audio').css('display', 'none')
                //$('#audio').hide()

            }
            imageLoadingCount = 0
            for (i = 0; i < imagesArrLoading.length; i++) {
                imagesLoader[i] = new Image()
                imagesLoader[i].src = imagesArrLoading[i]
					imagesLoader[i].onload = function() {
						imageLoadingCount++
						if (imageLoadingCount >= imagesArrLoading.length) {
							if (templateAudio == "" || templateAudio == undefined || templateAudio == null) {
							$('.audioPlayer').attr('src',"")
								withoutAudioFunctions()
								//setCompletion() 
							} else {
								withAudioFunctions()
								
								//setCompletion() 
							}
					   }        
					}
					imagesLoader[i].onerror = function() {
						imageLoadingCount++
						if (imageLoadingCount >= imagesArrLoading.length) {
							if (templateAudio == "" || templateAudio == undefined || templateAudio == null) {
								withoutAudioFunctions()
								//setCompletion() 
							} else {
								withAudioFunctions()
								//setCompletion() 
							}
					   }        
					}
				}
       



        $('.nav_style #next').attr('data-disable', 'false');

       
		
		
        setTimeout(function() {
            $('img').unbind('error').bind('error', function() {
                $(this).hide();
            })
        }, 100);
   
   
   
      
		  
		if (courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].type != "assessment") {
			arrayScorm[USERSTATE.module][USERSTATE.topic][USERSTATE.screen] = "1";
			TempStatus = new Array()
				for (i = 0; i < arrayScorm.length; i++) {
					for (k = 0; k < arrayScorm[i].length; k++) {
						if (k == (arrayScorm[i].length - 1)) {
							TempStatus = TempStatus + arrayScorm[i][k];
						} else {
							TempStatus = TempStatus + arrayScorm[i][k] + "^";
						}
					}
					if (i == (arrayScorm.length - 1)) {
					
					} else {
						TempStatus = TempStatus + "|";
					}
				}
		}
		
		
		//$('#debugger #info').text(xmlName + "---" + templateID + "---" + audioName + "---" + USERSTATE.module + "--" + USERSTATE.topic + "--" + USERSTATE.screen)
        //$('#debugger #scorm').html("<p align='center'>Course Status</p>" + TempStatus + "~" + USERSTATE.module + ',' + USERSTATE.topic + ',' + USERSTATE.screen)

        setTimeout(function() {
            registerEvents();
            $("input[class='option']").attr('disabled', false);
        }, 1000);

		
        
       lastScreen = modules[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].eos
        if (lastScreen != "") {
            if (lastScreen == "true") {
                setCompleted(temptopic[temptopic.length - 1]);
            }
        }
		
		
        $.each(temptopic, function(i) {
            if ($('.accordion').find('.menu-container').eq(USERSTATE.module).find('.' + (USERSTATE.module) + '-' + i).find('.completed').css('display') != 'inline'){
                tempflag = false;
			}
        });
		
        if (tempflag) {
            setModuleCompleted(tempmodule[USERSTATE.module]);
        }
		
        moduleCompletedNumber = getMatchCount("0", String(arrayScorm[USERSTATE.module]))
        if (moduleCompletedNumber == 0) {
            setModuleCompleted(tempmodule[USERSTATE.module]);
        }
		
		
        TopicCompletedNumber = getMatchCount("0", String(arrayScorm[USERSTATE.module][USERSTATE.topic]))
        if (TopicCompletedNumber == 0) {
            setCompleted(temptopic[USERSTATE.topic]);
        }
		
		
        /*setTimeout(function() {
            if ($(window).outerWidth() >= 548) {
            } else {
                if (is_touch_device()) {
                    if ($(window).width() >= 548) {
                        
                        $('#audio').hide();
                    } else if ($(window).width() < 548) {
                       
                    }
                }
            }
        }, 1000);*/
		
		
        checkCompletion()
        bookmarkSetValue = '' + USERSTATE.module + ',' + USERSTATE.topic + ',' + USERSTATE.screen
        setLMSData('bookmarkdata', '' + TempStatus + "~" + USERSTATE.module + ',' + USERSTATE.topic + ',' + USERSTATE.screen + "~" + completedModule + '|' + completedTopic);
        
		//console.log(TempStatus + "~" + USERSTATE.module + ',' + USERSTATE.topic + ',' + USERSTATE.screen + "~" + completedModule + '|' + completedTopic)
        $('#debugger #info').text(xmlName + "---" + templateID + "---" + audioName + "---" + USERSTATE.module + "--" + USERSTATE.topic + "--" + USERSTATE.screen)
        $('#debugger #scorm').html("<p align='center'>Course Status</p>" + TempStatus + "~" + USERSTATE.module + ',' + USERSTATE.topic + ',' + USERSTATE.screen)

        $('#tempJump').unbind().bind('click', function() {
            var where = document.getElementById("goNum").value
            var finalID = where.split(',')
            USERSTATE.module = finalID[0]
            USERSTATE.topic = finalID[1]
            USERSTATE.screen = finalID[2]
            showTopic();
        })
		$('#nextBtn, #backBtn ').css('cursor','pointer')
        $('#nextBtn').unbind().bind('click', function() {
            Engine.showNextPage();
        })

        $('#backBtn').unbind().bind('click', function() {
            Engine.showPrevPage();
        })

		
        $(".toggle_menu").click(function() {
            $('.footer_menu').show('slide', {
                direction: 'left'
            }, 1000);
        })
		

        $('.dropdown-menu').click(function(e) {
        e.stopPropagation();
		});
		
		$(".btn-group").click(function(){	
			if($(this).hasClass('open')){
				$(".dropdown-menu").slideUp();
			}else{
				$(".dropdown-menu").slideDown();
			}
		}); 
		
		$(document).on('click.dropdown.data-api', function(){
				$(".dropdown-menu").slideUp();
		});

        $(".close_button").click(function() {
                $('.footer_menu').hide('slide', {
                    direction: 'left'
                }, 1000);
        })
            //-----------------------------------------------------
        
            if (globalcourseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].interactiveLocknext == "true") {
                disableMyNextButton()
                $('.nav_style #next').removeClass("border-pulsate")
            } else if (startConversationTemplate == "true") {
                disableMyNextButton()
                $('.nav_style #next').removeClass("border-pulsate")
            } else if (globalcourseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].forcelockNext == "true") {

                disableMyNextButton()
                $('.nav_style #next').removeClass("border-pulsate")
            } else if (modules[USERSTATE.module].topic[USERSTATE.topic].type == "assessment") {
                disableMyNextButton()
                disableMyPrevButton()
                $('#debugger #scorm').text(TempStatus + "~" + USERSTATE.module + ',' + USERSTATE.topic + ',' + USERSTATE.screen)
            } else if(lastScreen == "true"){
					disableMyNextButton()
				}else {
				
					enableMyNextButton()
				}
  
       
        $('#debugger').css('width', '50%')
        $('#debugger').addClass('warpText')
		updatePrevNavgation()
        sendSessionTimeToLMS()

    }


  
    

    
    //--------------------------------------------*************getTemplateData  and getTopicData *******************-----------------------------------------
    //Reaseon: Below given funtions to retrive the xml and html comtent of the template
    function getTemplateData(templateId, templateType) {
            var response = htmlData.JSONData['' + templateId]
            templatesCache[templateId] = response;
            return response;
       
    };


    function getTopicData(topicDataId){
			var responseTextXML=pageXmls[0].page[""+topicDataId]
			topicDataCache[topicDataId] = responseTextXML;
			return responseTextXML;
	};



    updateScromString = function() {
        var assString = "";
        scromString = "";
        var module = courseStructure.course.module;

        for (var index = 0; index < module.length; index++) {
            /*for(var index in module){*/
            var topic = module[index].topic;
            for (var topicIndex = 0; topicIndex < topic.length; topicIndex++) {
                /*for(var topicIndex in topic){*/
                var screen = topic[topicIndex].screen;
                if (topic[topicIndex]._type == "assessment") {

                    for (var screenIndex = 0; screenIndex < screen.length; screenIndex++) {
                        /*for(var screenIndex in screen){*/

                        if (screen[screenIndex].isCorrect) {
                            assString += "1,";
                        } else {
                            assString += "0,";
                        }
                    }
                    assString = assString.substring(0, assString.length - 1);
                    assString += "|";
                } else {
                    for (var screenIndex = 0; screenIndex < screen.length; screenIndex++) {
                        /*for(var screenIndex in screen){*/
                        if (screen[screenIndex].visited) {
                            scromString += "1,";
                        } else {
                            scromString += "0,";
                        }
                    }
                    scromString = scromString.substring(0, scromString.length - 1);
                    scromString += "^";
                }
            }
            scromString = scromString.substring(0, scromString.length - 1);
            scromString += "|";
        }
        scromString = scromString.substring(0, scromString.length - 1);
        assString = assString.substring(0, assString.length - 1);
        var currentPosition = USERSTATE.module + "," + USERSTATE.topic + "," + USERSTATE.screen;
        scromString += "~" + currentPosition + "~" + assString;
        updateSCORM(scromString);
    };

  

    //--------------------------------------------*************updateSCORMm*******************-----------------------------------------
    //Reaseon: Below given funtions is intialize the course in LMS
    updateSCORM = function(scromString) {
        if (Controller.scorm === "1.2") {
            doLMSCommit('');
        } else if (Controller.scorm === "2004") {
            doCommit('');
        }
    };




    //--------------------------------------------*************getSCORMData*******************-----------------------------------------
    //Reaseon: Below given funtions is retrive dat a form LMS
    getSCORMData = function() {
        var scormString = "";
        if (Controller.scorm === "1.2") {
            scormString = doLMSGetValue('cmi.suspend_data');
        } else if (Controller.scorm === "2004") {
            scormString = doGetValue('cmi.suspend_data', true);
        }
        return scormString;
    };


    //--------------------------------------------*************showTopicbookMark*******************-----------------------------------------
    //Reaseon: Below given funtions is only called when the user again visits the course in LMS this function will jump on the last visited page of the course

    showTopicbookMark =  function(modules,topic,screen){
		var screens,topics,module;
		USERSTATE.module=modules;
		USERSTATE.topic=topic;
		USERSTATE.screen=screen;
		module = courseStructure.course.module[USERSTATE.module];
			topics =  module.topic[USERSTATE.topic];
			screens = topics.screen[USERSTATE.screen];
		var lockNext = screens.lockNext
		
		if(lockNext == "true"){
			$("#next").addClass("disableNavigation");
		
		}


		screens.visited=true;
		topics.visited=true;
		module.visited=true;
			
		topicTemplateId = screens.templateID
		templateDataId = screens.xmlName
		templateAudio	= screens.audioName
		var templatePromise = getTemplateData(topicTemplateId);
		var topicDataPromise = getTopicData(templateDataId);
		
		updateScromString();
		updatePagination();
		updateBreadCrum();

		return $.when(templatePromise, topicDataPromise).then(function(){
			 template = templatesCache[topicTemplateId];
			 topicData = topicDataCache[templateDataId];
			
			 renderTopic(template, topicData,topicTemplateId,templateAudio);
			 checkAssessment();
		});
	};







	showTopic =  function(){

	
	if(courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].type==="assessment"){
		
		USERSTATE.screen = rand_arr[rand_Pullarr[assessmentScreenCount]]
	}else if(courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].type==="assessment2"){
		
		USERSTATE.screen = rand_arr[rand_Pullarr[assessmentScreenCount]]
	}
	
	var screens,topics,module;
			module = courseStructure.course.module[USERSTATE.module];
			topics =  courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic];
			screens =  courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen];
		
		
		var lockNext = screens.lockNext;
		if(lockNext == "true"){
			$("#next").addClass("disableNavigation");
			//$("#next").off("click");
		}


		screens.visited=true;
		topics.visited=true;
		module.visited=true;

		topicTemplateId = screens.templateID
		templateDataId = screens.xmlName
		templateAudio	= screens.audioName
		var templatePromise = getTemplateData(topicTemplateId);
		var topicDataPromise = getTopicData(templateDataId);

		updateScromString();
		updatePagination();
		updateBreadCrum();

		return $.when(templatePromise, topicDataPromise).then(function(){
			 template = templatesCache[topicTemplateId];
			 topicData = topicDataCache[templateDataId];
			  
			 renderTopic(template, topicData,topicTemplateId,templateAudio);
			 checkAssessment();
		});
	};



    //--------------------------------------------*************disableNextButton*******************-----------------------------------------
    //Reaseon: Below given funtions is called on the first page to disable back button
    var disableNextButton = function() {
        if (arrayScorm[USERSTATE.module][USERSTATE.topic][USERSTATE.screen] == "1") {} else {
            $('.nav_style #next').removeClass('enableNavigation').addClass('disableNavigation');
        }
    };

    //--------------------------------------------*************enableNextButton*******************-----------------------------------------
    //Reaseon: Below given funtions is called to  enable next button
    var enableNextButton = function() {
        var screens, topics, module;
        module = courseStructure.course.module[USERSTATE.module];
        topics = module.topic[USERSTATE.topic];
        screens = topics.screen[USERSTATE.screen];

        if (USERSTATE.assessment == true) {} else {
            $('.nav_style #next').addClass('enableNavigation').removeClass('disableNavigation');
        }
    };

    var showNote = function() {};




    //--------------------------------------------*************checkAssessment*******************-----------------------------------------
    //Reaseon: Below given funtions is called to load the assessment xml when user vists the assessmnt 
    checkAssessment = function() {
	
        $("input.option").attr('disabled', false);
        var module = courseStructure.course.module[USERSTATE.module];
        //if(module)
        var topics = module.topic[USERSTATE.topic];
        $('.btnSubmit').attr('disabled', true);
        /*$("input.option").unbind('change').bind('change', function() {
            if ($("input.option:checked").length >= 1) {
                $('.btnSubmit').attr('disabled', false);
            } else {
                $('.btnSubmit').attr('disabled', true);
            }
        })*/
		updatePagination();

        if (courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].type === "assessment") {
		
					if(assessmentType=='random'){
					
						numberofQuesToPull=courseStructure.course.module[assessmentModNum].topic[assessmentTopNum].topicBreadCrum[0].pull 
					}else{
						numberofQuesToPull=totalAssessmentScreens
					}
			
            USERSTATE.assessment = true;
            disableMyPrevButton()
            disableMyNextButton()
            verifyAssessment();
        }else if (courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].type === "assessment2") {
		
					if(assessmentType=='random'){
					
						numberofQuesToPull=courseStructure.course.module[assessmentModNum].topic[assessmentTopNum].topicBreadCrum[0].pull 
					}else{
						numberofQuesToPull=totalAssessmentScreens
					}
			
            USERSTATE.assessment = true;
            disableMyPrevButton()
            disableMyNextButton()
            verifyAssessment();
        } else {
            USERSTATE.assessment = false;
            if (beginScreenInside)
                beginScreenInside = false;
            enableNextButton();
			
					$('.BeginScreen').hide();
				$('.template-container .content').show();
            return;
        }
    };



function randRange(min, max) {
            var randomNum = Math.round(Math.random()*(max-min))+min;
            return randomNum;
}

var tmp_arr = new Array();
var rand_arr = new Array();
var random_nos;
function fnRandomizeAssessment() {

	if(assessmentType=='random'){
		for (var i = 0; i<totalAssessmentScreens; i++) {
			tmp_arr[i] = i;
		}
		for (var i = 0; i<totalAssessmentScreens; i++) {
			random_nos = randRange(0, (tmp_arr.length-1));
			rand_arr[i] = tmp_arr[random_nos];
			tmp_arr.splice(random_nos, 1);
		}
		console.log("----"+rand_arr+"rand_arr");

	}else{
	
	for (var i = 0; i<totalAssessmentScreens; i++) {
			rand_arr[i] = i;
		}
	}
}

var pull_arr = new Array();
var rand_Pullarr = new Array();
var random_nosPull;

function pullAssessment() {

	if(assessmentType=='random'){
		for (var i = 0; i<totalAssessmentScreens; i++) {
			pull_arr[i] = i;
		}
		for (var i = 0; i<totalAssessmentScreens; i++) {
			random_nosPull = randRange(0, (pull_arr.length-1));
			rand_Pullarr[i] = pull_arr[random_nosPull];
			pull_arr.splice(random_nosPull, 1);
		}
	
		console.log("----"+rand_Pullarr+"rand_Pullarr");

	}else{
	
	for (var i = 0; i<totalAssessmentScreens; i++) {
			rand_Pullarr[i] = i;
		}
	}
}
    //--------------------------------------------*************verifyAssessment*******************-----------------------------------------
    //Reaseon: Below given funtions is called to verify the user answer in the assessment module

    verifyAssessment = function() {
        var module = courseStructure.course.module[USERSTATE.module];
        //if(module)

		var point=0;
        var topics = module.topic[USERSTATE.topic];
        var nextQuestionValue = module.topic[USERSTATE.topic].topicBreadCrum[0].nextQuestion
        var showResultValue = module.topic[USERSTATE.topic].topicBreadCrum[0].showResultButton
       
        var feedbackpopup =  module.topic[USERSTATE.topic].screen[rand_arr[rand_Pullarr[assessmentScreenCount]]].feedbackpopup
		
        $("input.option").attr('disabled', false);
        $("input.option").unbind('change').bind('change', function() {
            if ($("input.option:checked").length >= 1) {
                $('.btnSubmit').attr('disabled', false);
				$('.btnSubmit').css('cursor','pointer').css('opacity','1')
				$('.AssessmentbtnSubmit').mouseover(function(){
					$('.btnSubmit').css('color','#fff')					
				})
				$('.AssessmentbtnSubmit').mouseout(function(){
					$('.btnSubmit').css('color','#879fb5')					
				})
				$('.btnSubmit').bind('click',btnAssessmentClick)
            } else {
                $('.btnSubmit').attr('disabled', true);
				$('.btnSubmit').css('cursor','default').css('opacity','0.5')
				$('.btnSubmit').unbind('mouseover')
				$('.btnSubmit').unbind('click');
				
            }
        });
        $('.btnSubmit').attr('disabled', true);
		$('.btnSubmit').css('cursor','default').css('opacity','0.5')
		$('.AssessmentbtnSubmit').unbind('mouseover')
        $('.btnSubmit').unbind('click');
		
		//$('.btnSubmit').bind('click',btnAssessmentClick)
	
        /*$('.btnSubmit').bind('click', function() {
            var c_flag = false;

		
            arrayScorm[USERSTATE.module][USERSTATE.topic][USERSTATE.screen] = "1"
			TempStatus = new Array()
        for (i = 0; i < arrayScorm.length; i++) {
            for (k = 0; k < arrayScorm[i].length; k++) {
                if (k == (arrayScorm[i].length - 1)) {
                    TempStatus = TempStatus + arrayScorm[i][k];
                } else {
                    TempStatus = TempStatus + arrayScorm[i][k] + "^";
                }
            }
            if (i == (arrayScorm.length - 1)) {
			
			} else {
                TempStatus = TempStatus + "|";
            }
        }
		
		//-------------------*****************************Latest code*********************---------------------	
			if(answerSubmitted==false){		
				optionsLen=currTopicData.content.optionsData.option.length
				
					  lastQuestionSetDetails[assessmentScreenCount][0]=currTopicData.content.questionText.text
					  lastQuestionSetDetails[assessmentScreenCount][1]=currTopicData.content.correctAnswer.answers
					
					 for (i = 0; i<optionsLen; i++) {
						 lastQuestionSetDetails[assessmentScreenCount][2]= new Array()
						 lastQuestionSetDetails[assessmentScreenCount][3]= new Array()
					}
					for (i = 0; i<optionsLen; i++) {
						if($(".selectableOptions #Option"+i).is(':checked')){
							lastQuestionSetDetails[assessmentScreenCount][2][i]=true
						}else{
							lastQuestionSetDetails[assessmentScreenCount][2][i]=false
						}
						
						lastQuestionSetDetails[assessmentScreenCount][3][i]=currTopicData.content.optionsData.option[i].optionDisplay
					}
					
					  if(currTopicData.content.optionsData.optionsDetails[0].type=="mcss"){
						lastQuestionSetDetails[assessmentScreenCount][4]="radio"
					  }else{
						lastQuestionSetDetails[assessmentScreenCount][4]="checkbox"
					  }
					  
					 
					 
							answerSubmitted=true
					  console.log(lastQuestionSetDetails+"------lastQuestionSetDetails----"+assessmentScreenCount)
			}
		
		
		$('#debugger #info').text(xmlName + "---" + templateID + "---" + audioName + "---" + USERSTATE.module + "--" + USERSTATE.topic + "--" + USERSTATE.screen)
        $('#debugger #scorm').html("<p align='center'>Course Status</p>" + TempStatus + "~" + USERSTATE.module + ',' + USERSTATE.topic + ',' + USERSTATE.screen)
            if ($(this).hasClass('nextQuestion')) {
			
               assessmentScreenCount++
				showTopic();
				
				
            }
            $("input[class='option']").attr('disabled', true);
            $(".feedbackContent").hide().html('');
            $("input[class='option']:checked").each(function() {
                c_flag = true;
            });
            var currScreen = getCurrentScreen();
            var currentTopic = getCurrentTopic();
			//console.log(currentTopic.screen[0].templateID+"--------s")
            if ($(this).hasClass('showResult')) {
                showResult(currentTopic);
            }

            if (c_flag === true) {
		
                var incorectFeedback = currTopicData.content.feedback.feedbackIncorrectContent;
                var feedbackCorrectContent = currTopicData.content.feedback.feedbackCorrectContent
                var feedbackPartialContent = currTopicData.content.feedback.feedbackPartialCorrectContent != undefined ? currTopicData.content.feedback.feedbackPartialCorrectContent : "";
                if (currTopicData.type === "mcq") {
                    var ans = $("input[class='option']:checked");
                    var corranswers = "" + currTopicData.content.correctAnswer.answers;

                    corranswers = corranswers.toLowerCase().split(",");
                    var corranswers1 = "" + currTopicData.content.correctAnswer.answers;
                    corranswers1 = corranswers1.split(",");
                    var flag = true;
                    if (ans.length == corranswers.length) {
                        for (var i = 0; i < ans.length; i++) {
                            if ($.inArray($(ans[i]).val().toLowerCase(), corranswers) == -1) {
                                flag = false;
                                break;
                            }
                        }
                    } else {
                        flag = false;
                    }
                    $(ans).each(function(key, value) {
                        if (nextQuestionValue != 'true') {
                            return false;
                        }
                        if ($.inArray($(ans[key]).val().toLowerCase(), corranswers) == -1) {
                            $(this).addClass('incorrect') //.next('label').append('<img src="Media/eng/images/exit.png"/>');
                            $(this).parent().css('position', 'relative');
							$('.feedback-container').show()
							$('.feedback-container').find('p').html('<b>Incorrect!</b>')
							$('.feedback-container').find('.rfeedbackContent').html(topicData.content.feedback.feedbackIncorrectContent);
							lastQuestionSetDetails[assessmentScreenCount][5]="<span class='Reviewincorrect'> - INCORRECT -</span>"
							
							
                            //$('<img style="position: absolute;left: -26px;" src="Media/eng/images/incorrect.png"/>').insertBefore(this);
							
                        } else {
                            $(this).addClass('correct') //.next('label').append('<img src="Media/eng/images/checkmark.png"/>');
                            $(this).parent().css('position', 'relative');
							$('.feedback-container').show()
							$('.feedback-container').find('p').html('<b>Correct!</b>')
							//alert('Correct');
							$('.feedback-container').find('.rfeedbackContent').html(topicData.content.feedback.feedbackCorrectContent);
							lastQuestionSetDetails[assessmentScreenCount][5]="<span class='Reviewcorrect'> - CORRECT -</span>"
							point++;			
							CorrectAnswerCount++							
							$('.CountPoint').html(CorrectAnswerCount)
                            //$('<img style="position: absolute;left: -26px;" src="Media/eng/images/correct.png"/>').insertBefore(this);

                        }
                    });
                    $(corranswers1).each(function(key, value) {
                        if (nextQuestionValue != 'true') {
                            return false;
                        }
                        $('input.option[value=' + value + ']').addClass('correct') //.next('label').append('<img src="Media/eng/images/checkmark.png"/>');
                        $('input.option[value=' + value + ']').parent().css('position', 'relative');
						//$('.feedback-container').find('p').html('<b>Correct!</b>')
						//$('.feedback-container').find('.rfeedbackContent').html(topicData.content.feedback.feedbackCorrectContent);
						//point++;
						//$('.CountPoint').html(point)
						
                        //$('<img style="position: absolute;left: -26px;" src="Media/eng/images/correct.png"/>').insertBefore($('input.option[value=' + value + ']'));
						
                    });
                    if (flag) {
                        currScreen.isCorrect = true;
                        currScore++;
                        if (assessmentScreenCount === numberofQuesToPull-1) {
                            if (showResultValue == "true") {
                                $('.btnSubmit').removeClass('showResult nextQuestion').addClass('showResult').text('Show Result');
								$('.AssessmentbtnSubmitSection .btnSubmit').text('SUBMIT')
								$('.AssessmentbtnSubmitSection .btnSubmit').css('cursor','default').css('opacity','0.5')
								$('.AssessmentbtnSubmitSection .btnSubmit').unbind('click')
								$('.AssessmentbtnSubmitSection .btnSubmit').removeClass('nextQuestion').removeClass('showResult')
								$('.AssessmentbtnSubmitSection .btnSubmit').unbind('mouseover')
                            } else {
                                showResult(currentTopic);
                            }
                            return;
                        }
                        enableNextButton();
                        showNote();
                        //Engine.showNextPage();
						if (feedbackpopup == 'true') {
                                $('.feedback-container').show('slow');
                                $(".rfeedbackContent").html(feedbackCorrectContent).slideDown();
                            }
                        if (nextQuestionValue == 'true') {
                            $('.btnSubmit').removeClass('nextQuestion').addClass('nextQuestion').text('Next Question');
                            $('.AssessmentbtnSubmitSection .btnSubmit').text('SUBMIT')
							$('.AssessmentbtnSubmitSection .btnSubmit').css('cursor','default').css('opacity','0.5')
							$('.AssessmentbtnSubmitSection .btnSubmit').unbind('click')
							$('.AssessmentbtnSubmitSection .btnSubmit').removeClass('nextQuestion')
							$('.AssessmentbtnSubmitSection .btnSubmit').unbind('mouseover')

                        } else {
                            Engine.showNextPage();
                        }
                        return;
                    } else {
                        currScreen.isCorrect = false;
                          if (assessmentScreenCount === numberofQuesToPull-1) {
                            if (showResultValue == "true") {
                                $('.btnSubmit').removeClass('showResult nextQuestion').addClass('showResult').text('Show Result');
								$('.AssessmentbtnSubmitSection .btnSubmit').text('SUBMIT')
								$('.AssessmentbtnSubmitSection .btnSubmit').css('cursor','default').css('opacity','0.5')
								$('.AssessmentbtnSubmitSection .btnSubmit').unbind('click')
								$('.AssessmentbtnSubmitSection .btnSubmit').removeClass('nextQuestion').removeClass('showResult')
								$('.AssessmentbtnSubmitSection .btnSubmit').unbind('mouseover')
                            } else {
                                showResult(currentTopic);
                                var pageNumber = 0
                            }
                            return;
                        }
						
						if (feedbackpopup == 'true') {
                                $('.feedback-container').show('slow')
                                $(".rfeedbackContent").html(incorectFeedback).slideDown();   
                          }	
                        if (nextQuestionValue == 'true') {
							//alert('2')
                            $('.btnSubmit').removeClass('nextQuestion').addClass('nextQuestion').text('Next Question');
							$('.AssessmentbtnSubmitSection .btnSubmit').text('SUBMIT')
							$('.AssessmentbtnSubmitSection .btnSubmit').css('cursor','default').css('opacity','0.5')
							$('.AssessmentbtnSubmitSection .btnSubmit').unbind('click')
							$('.AssessmentbtnSubmitSection .btnSubmit').removeClass('nextQuestion')
							$('.AssessmentbtnSubmitSection .btnSubmit').unbind('mouseover')
                            
                        } else {
                            Engine.showNextPage();
                        } //Engine.showNextPage();

                    }

                    if (parseInt(currScreen._attempt) === currAttempt) {
                          if (assessmentScreenCount === numberofQuesToPull-1) {
                            showResult(currentTopic);
                            return;
                        }
                        showNote();
                        enableNextButton();
                        if (nextQuestionValue == 'true') {
                            $('.btnSubmit').removeClass('nextQuestion').addClass('nextQuestion').text('Next Question');
							$('.AssessmentbtnSubmitSection .btnSubmit').text('SUBMIT')
							$('.AssessmentbtnSubmitSection .btnSubmit').css('cursor','default').css('opacity','0.5')
							$('.AssessmentbtnSubmitSection .btnSubmit').unbind('click')
							$('.AssessmentbtnSubmitSection .btnSubmit').removeClass('nextQuestion')
							$('.AssessmentbtnSubmitSection .btnSubmit').unbind('mouseover')
                        } else {
                            Engine.showNextPage();
                        } //Engine.showNextPage();
                        return;
                    }
                } else if (currTopicData.type === "saq") {
                    var ans = $("input[class='option']:checked").val().toLowerCase();
                    var corranswers = currTopicData.content.correctAnswer.answers
                    if (corranswers === ans) {
                        currScreen.isCorrect = true;
                        currScore++;
                        if (USERSTATE.screen === currentTopic.screen.length - 1) {
                            showResult(currentTopic);
                            return;
                        }
                        if (nextQuestionValue == 'true') {
                            $('.btnSubmit').removeClass('nextQuestion').addClass('nextQuestion').text('Next Question');
							$('.AssessmentbtnSubmitSection .btnSubmit').text('SUBMIT')
							$('.AssessmentbtnSubmitSection .btnSubmit').css('cursor','default').css('opacity','0.5')
							$('.AssessmentbtnSubmitSection .btnSubmit').unbind('click')
							$('.AssessmentbtnSubmitSection .btnSubmit').removeClass('nextQuestion')
							$('.AssessmentbtnSubmitSection .btnSubmit').unbind('mouseover')
                        } else {
                            Engine.showNextPage();
                        } //Engine.showNextPage();
                        return;
                    } else {
                        currScreen.isCorrect = false;
                        $('.feedback-container').show('slow');
                        $(".rfeedbackContent").html(incorectFeedback).slideDown();
                    }

                    if (parseInt(currScreen._attempt) === currAttempt) {
                          if (assessmentScreenCount === numberofQuesToPull-1) {
                            showResult(currentTopic);
                            return;
                        }
                        if (nextQuestionValue == 'true') {
                            $('.btnSubmit').removeClass('nextQuestion').addClass('nextQuestion').text('Next Question');
							$('.AssessmentbtnSubmitSection .btnSubmit').text('SUBMIT')
							$('.AssessmentbtnSubmitSection .btnSubmit').css('cursor','default').css('opacity','0.5')
							$('.AssessmentbtnSubmitSection .btnSubmit').unbind('click')
							$('.AssessmentbtnSubmitSection .btnSubmit').removeClass('nextQuestion')
							$('.AssessmentbtnSubmitSection .btnSubmit').unbind('mouseover')
                        } else {
                            Engine.showNextPage();
                        } //Engine.showNextPage();
                        return;
                    }
                }
                currAttempt++;
            } else {
                var errStr = currTopicData.content.feedback.feedbackError
            }
            var currentTopic = getAssessmentTopic();
            //	$('#debugger #info').text(screen[USERSTATE.screen]["_xmlName"]+"---"+screen[USERSTATE.screen]["_templateID"]+"---"+screen[USERSTATE.screen]["_audioName"]+"---"+USERSTATE.module+"--"+USERSTATE.topic+"--"+USERSTATE.screen+"~ Corerct Answer: "+currTopicData.question[0].correctAnswer[0]._cdata)
            //$('#debugger #scorm').text(TempStatus+"~"+USERSTATE.module+','+USERSTATE.topic+','+USERSTATE.screen)
        });*/
		
		// --------------------------------------------------------------
		
		function btnAssessmentClick(){
            var c_flag = false;
$('.buttonQuiz input,.buttonQuiz label').css('cursor','default')
		
            arrayScorm[USERSTATE.module][USERSTATE.topic][USERSTATE.screen] = "1"
			TempStatus = new Array()
        for (i = 0; i < arrayScorm.length; i++) {
            for (k = 0; k < arrayScorm[i].length; k++) {
                if (k == (arrayScorm[i].length - 1)) {
                    TempStatus = TempStatus + arrayScorm[i][k];
                } else {
                    TempStatus = TempStatus + arrayScorm[i][k] + "^";
                }
            }
            if (i == (arrayScorm.length - 1)) {
			
			} else {
                TempStatus = TempStatus + "|";
            }
        }
		
		//-------------------*****************************Latest code*********************---------------------	
			if(answerSubmitted==false){		
				optionsLen=currTopicData.content.optionsData.option.length
				
					  lastQuestionSetDetails[assessmentScreenCount][0]=currTopicData.content.questionText.text
					  lastQuestionSetDetails[assessmentScreenCount][1]=currTopicData.content.correctAnswer.answers
					
					 for (i = 0; i<optionsLen; i++) {
						 lastQuestionSetDetails[assessmentScreenCount][2]= new Array()
						 lastQuestionSetDetails[assessmentScreenCount][3]= new Array()
					}
					for (i = 0; i<optionsLen; i++) {
						
						//if($(".selectableOptions #Option"+i).is(':checked')){
						if($(".options #Option"+(i+1)).is(':checked')){
							lastQuestionSetDetails[assessmentScreenCount][2][i]=true
						}else{
							lastQuestionSetDetails[assessmentScreenCount][2][i]=false
						}
						
						lastQuestionSetDetails[assessmentScreenCount][3][i]=currTopicData.content.optionsData.option[i].optionDisplay
					}
					
					  if(currTopicData.content.optionsData.optionsDetails[0].type=="mcss"){
						lastQuestionSetDetails[assessmentScreenCount][4]="radio"
					  }else{
						lastQuestionSetDetails[assessmentScreenCount][4]="checkbox"
					  }
					  
					 
					 
							answerSubmitted=true
					  console.log(lastQuestionSetDetails+"------lastQuestionSetDetails----"+assessmentScreenCount)
			}
		
		
			$('#debugger #info').text(xmlName + "---" + templateID + "---" + audioName + "---" + USERSTATE.module + "--" + USERSTATE.topic + "--" + USERSTATE.screen)
			$('#debugger #scorm').html("<p align='center'>Course Status</p>" + TempStatus + "~" + USERSTATE.module + ',' + USERSTATE.topic + ',' + USERSTATE.screen)
            if ($(this).hasClass('nextQuestion')) {
				$(this).removeClass('nextQuestion')
                assessmentScreenCount++
				//alert('b4 showTopic')
				showTopic();
            }
            $("input[class='option']").attr('disabled', true);
            $(".feedbackContent").hide().html('');
            $("input[class='option']:checked").each(function() {
                c_flag = true;
            });
            var currScreen = getCurrentScreen();
            var currentTopic = getCurrentTopic();
			//console.log(currentTopic.screen[0].templateID+"--------s")
            if ($(this).hasClass('showResult')) {
                showResult(currentTopic);
            }
			var incrementTemp = true;
            if (c_flag === true) {
		
                var incorectFeedback = currTopicData.content.feedback.feedbackIncorrectContent;
                var feedbackCorrectContent = currTopicData.content.feedback.feedbackCorrectContent
                var feedbackPartialContent = currTopicData.content.feedback.feedbackPartialCorrectContent != undefined ? currTopicData.content.feedback.feedbackPartialCorrectContent : "";
                if (currTopicData.type === "mcq") {
                    var ans = $("input[class='option']:checked");
                    var corranswers = "" + currTopicData.content.correctAnswer.answers;

                    corranswers = corranswers.toLowerCase().split(",");
                    var corranswers1 = "" + currTopicData.content.correctAnswer.answers;
                    corranswers1 = corranswers1.split(",");
                    var flag = true;
					var checkCount = true;
                    if (ans.length == corranswers.length) {
						checkCount = false;
                        for (var i = 0; i < ans.length; i++) {
                            if ($.inArray($(ans[i]).val().toLowerCase(), corranswers) == -1) {
                                flag = false;
                                break;
                            }
                        }
                    } else {
                        flag = true;
						checkCount = true;
                    }
					if(!checkCount){
						$(ans).each(function(key, value) {
							if (nextQuestionValue != 'true') {
								return false;
							}
							if (($.inArray($(ans[key]).val().toLowerCase(), corranswers) == -1)) {
								$(this).addClass('incorrect') //.next('label').append('<img src="Media/eng/images/exit.png"/>');
								$(this).parent().css('position', 'relative');
								$('.feedback-container').show()
								$('.feedback-container').find('p').html('<b>Incorrect!</b>')
								$('.feedback-container').find('.rfeedbackContent').html(topicData.content.feedback.feedbackIncorrectContent);
								lastQuestionSetDetails[assessmentScreenCount][5]="<span class='Reviewincorrect'> - INCORRECT -</span>"
								if(topicData.content.optionsData.optionsDetails[0].type == "mcss"){
									if($($(ans[key]).siblings()[0]).text().trim() == "I don't know"){
										$('.feedback-container').find('.rfeedbackContent').html("It is fine that you do not know this now. You will learn about this in the module.");
									}
								}
								/*************--------------------------*************/
								//$('<img style="position: absolute;left: -26px;" src="Media/eng/images/incorrect.png"/>').insertBefore(this);
								/*************--------------------------*************/
							}else {
								$(this).addClass('correct') //.next('label').append('<img src="Media/eng/images/checkmark.png"/>');
								$(this).parent().css('position', 'relative');
								$('.feedback-container').show()
								$('.feedback-container').find('p').html('<b>Correct!</b>')
								//alert('Correct');
								$('.feedback-container').find('.rfeedbackContent').html(topicData.content.feedback.feedbackCorrectContent);
								lastQuestionSetDetails[assessmentScreenCount][5]="<span class='Reviewcorrect'> - CORRECT -</span>"
								point++;
								if(incrementTemp){
									CorrectAnswerCount++
									incrementTemp = false
								}
															
								$('.CountPoint').html(CorrectAnswerCount)
								/*************--------------------------*************/
								//$('<img style="position: absolute;left: -26px;" src="Media/eng/images/correct.png"/>').insertBefore(this);
								/*************--------------------------*************/
							}
						});
					}else{
						$(this).addClass('incorrect') //.next('label').append('<img src="Media/eng/images/exit.png"/>');
						$(this).parent().css('position', 'relative');
						$('.feedback-container').show()
						$('.feedback-container').find('p').html('<b>Incorrect!</b>')
						$('.feedback-container').find('.rfeedbackContent').html(topicData.content.feedback.feedbackIncorrectContent);
						lastQuestionSetDetails[assessmentScreenCount][5]="<span class='Reviewincorrect'> - INCORRECT -</span>"
						if(topicData.content.optionsData.optionsDetails[0].type == "mcss"){
							if($($(ans[key]).siblings()[0]).text().trim() == "I don't know"){
								$('.feedback-container').find('.rfeedbackContent').html("It is fine that you do not know this now. You will learn about this in the module.");
							}
						}
						/*************--------------------------*************/
						//$('<img style="position: absolute;left: -26px;" src="Media/eng/images/incorrect.png"/>').insertBefore(this);
						/*************--------------------------*************/
					}
                    
					
                    $(corranswers1).each(function(key, value) {
                        if (nextQuestionValue != 'true') {
                            return false;
                        }
                        $('input.option[value=' + value + ']').addClass('correct') //.next('label').append('<img src="Media/eng/images/checkmark.png"/>');
                        $('input.option[value=' + value + ']').parent().css('position', 'relative');
						//$('.feedback-container').find('p').html('<b>Correct!</b>')
						//$('.feedback-container').find('.rfeedbackContent').html(topicData.content.feedback.feedbackCorrectContent);
						//point++;
						//$('.CountPoint').html(point)
						/*************--------------------------*************/
                        //$('<img style="position: absolute;left: -26px;" src="Media/eng/images/correct.png"/>').insertBefore($('input.option[value=' + value + ']'));
						/*************--------------------------*************/
                    });
                    if (flag) {
                        currScreen.isCorrect = true;
                        currScore++;
                        if (assessmentScreenCount === numberofQuesToPull-1) {
                            if (showResultValue == "true") {
                                $('.btnSubmit').removeClass('showResult nextQuestion').addClass('showResult').text('View Results');
								$('.AssessmentbtnSubmitSection .btnSubmit').text('SUBMIT')
								$('.AssessmentbtnSubmitSection .btnSubmit').css('cursor','default').css('opacity','0.5')
								$('.AssessmentbtnSubmitSection .btnSubmit').unbind('click')
								$('.AssessmentbtnSubmitSection .btnSubmit').removeClass('nextQuestion').removeClass('showResult')
								$('.AssessmentbtnSubmitSection .AssessmentbtnSubmit').unbind('mouseover')
                            } else {
                                showResult(currentTopic);
                            }
                            return;
                        }
                        enableNextButton();
                        showNote();
                        //Engine.showNextPage();
						if (feedbackpopup == 'true') {
                                $('.feedback-container').show('slow');
                                $(".rfeedbackContent").html(feedbackCorrectContent).slideDown();
                            }
                        if (nextQuestionValue == 'true') {
                            $('.btnSubmit').removeClass('nextQuestion').addClass('nextQuestion').text('Next Question');
                            $('.AssessmentbtnSubmitSection .btnSubmit').text('SUBMIT')
							$('.AssessmentbtnSubmitSection .btnSubmit').css('cursor','default').css('opacity','0.5')
							$('.AssessmentbtnSubmitSection .btnSubmit').unbind('click')
							$('.AssessmentbtnSubmitSection .btnSubmit').removeClass('nextQuestion')
							$('.AssessmentbtnSubmitSection .AssessmentbtnSubmit').unbind('mouseover')

                        } else {
                            Engine.showNextPage();
                        }
                        return;
                    } else {
                        currScreen.isCorrect = false;
                          if (assessmentScreenCount === numberofQuesToPull-1) {
                            if (showResultValue == "true") {
                                $('.btnSubmit').removeClass('showResult nextQuestion').addClass('showResult').text('View Results');
								$('.AssessmentbtnSubmitSection .btnSubmit').text('SUBMIT')
								$('.AssessmentbtnSubmitSection .btnSubmit').css('cursor','default').css('opacity','0.5')
								$('.AssessmentbtnSubmitSection .btnSubmit').unbind('click')
								$('.AssessmentbtnSubmitSection .btnSubmit').removeClass('nextQuestion').removeClass('showResult')
								$('.AssessmentbtnSubmitSection .AssessmentbtnSubmit').unbind('mouseover')
                            } else {
                                showResult(currentTopic);
                                var pageNumber = 0
                            }
                            return;
                        }
						
						if (feedbackpopup == 'true') {
                                $('.feedback-container').show('slow')
                                $(".rfeedbackContent").html(incorectFeedback).slideDown();   
                          }	
                        if (nextQuestionValue == 'true') {
							//alert('2')
                            $('.btnSubmit').removeClass('nextQuestion').addClass('nextQuestion').text('Next Question');
							$('.AssessmentbtnSubmitSection .btnSubmit').text('SUBMIT')
							$('.AssessmentbtnSubmitSection .btnSubmit').css('cursor','default').css('opacity','0.5')
							$('.AssessmentbtnSubmitSection .btnSubmit').unbind('click')
							$('.AssessmentbtnSubmitSection .btnSubmit').removeClass('nextQuestion')
							$('.AssessmentbtnSubmitSection .AssessmentbtnSubmit').unbind('mouseover')
                            
                        } else {
                            Engine.showNextPage();
                        } //Engine.showNextPage();

                    }

                    if (parseInt(currScreen._attempt) === currAttempt) {
                          if (assessmentScreenCount === numberofQuesToPull-1) {
                            showResult(currentTopic);
                            return;
                        }
                        showNote();
                        enableNextButton();
                        if (nextQuestionValue == 'true') {
                            $('.btnSubmit').removeClass('nextQuestion').addClass('nextQuestion').text('Next Question');
							$('.AssessmentbtnSubmitSection .btnSubmit').text('SUBMIT')
							$('.AssessmentbtnSubmitSection .btnSubmit').css('cursor','default').css('opacity','0.5')
							$('.AssessmentbtnSubmitSection .btnSubmit').unbind('click')
							$('.AssessmentbtnSubmitSection .btnSubmit').removeClass('nextQuestion')
							$('.AssessmentbtnSubmitSection .AssessmentbtnSubmit').unbind('mouseover')
                        } else {
                            Engine.showNextPage();
                        } //Engine.showNextPage();
                        return;
                    }
                } else if (currTopicData.type === "saq") {
                    var ans = $("input[class='option']:checked").val().toLowerCase();
                    var corranswers = currTopicData.content.correctAnswer.answers
                    if (corranswers === ans) {
                        currScreen.isCorrect = true;
                        currScore++;
                        if (USERSTATE.screen === currentTopic.screen.length - 1) {
                            showResult(currentTopic);
                            return;
                        }
                        if (nextQuestionValue == 'true') {
                            $('.btnSubmit').removeClass('nextQuestion').addClass('nextQuestion').text('Next Question');
							$('.AssessmentbtnSubmitSection .btnSubmit').text('SUBMIT')
							$('.AssessmentbtnSubmitSection .btnSubmit').css('cursor','default').css('opacity','0.5')
							$('.AssessmentbtnSubmitSection .btnSubmit').unbind('click')
							$('.AssessmentbtnSubmitSection .btnSubmit').removeClass('nextQuestion')
							$('.AssessmentbtnSubmitSection .AssessmentbtnSubmit').unbind('mouseover')
                        } else {
                            Engine.showNextPage();
                        }
                        return;
                    } else {
                        currScreen.isCorrect = false;
                        $('.feedback-container').show('slow');
                        $(".rfeedbackContent").html(incorectFeedback).slideDown();
                    }

                    if (parseInt(currScreen._attempt) === currAttempt) {
                          if (assessmentScreenCount === numberofQuesToPull-1) {
                            showResult(currentTopic);
                            return;
                        }
                        if (nextQuestionValue == 'true') {
                            $('.btnSubmit').removeClass('nextQuestion').addClass('nextQuestion').text('Next Question');
							$('.AssessmentbtnSubmitSection .btnSubmit').text('SUBMIT')
							$('.AssessmentbtnSubmitSection .btnSubmit').css('cursor','default').css('opacity','0.5')
							$('.AssessmentbtnSubmitSection .btnSubmit').unbind('click')
							$('.AssessmentbtnSubmitSection .btnSubmit').removeClass('nextQuestion')
							$('.AssessmentbtnSubmitSection .AssessmentbtnSubmit').unbind('mouseover')
                        } else {
                            Engine.showNextPage();
                        } //Engine.showNextPage();
                        return;
                    }
                }
                currAttempt++;
            } else {
                var errStr = currTopicData.content.feedback.feedbackError
            }
            var currentTopic = getAssessmentTopic();
            //	$('#debugger #info').text(screen[USERSTATE.screen]["_xmlName"]+"---"+screen[USERSTATE.screen]["_templateID"]+"---"+screen[USERSTATE.screen]["_audioName"]+"---"+USERSTATE.module+"--"+USERSTATE.topic+"--"+USERSTATE.screen+"~ Corerct Answer: "+currTopicData.question[0].correctAnswer[0]._cdata)
            //$('#debugger #scorm').text(TempStatus+"~"+USERSTATE.module+','+USERSTATE.topic+','+USERSTATE.screen)
        }

    };



    //--------------------------------------------*************jumpToBegin*******************-----------------------------------------
    //Reaseon: Below given funtions is called to jump to the first page of the course  when user wishes to again view the course from start
    jumpToBegin = function() {
        $('.footer').show();
		
       
        USERSTATE.module = 0;
        USERSTATE.topic = 0;
        USERSTATE.screen = 0;
		
        showTopic();
        var modules = courseStructure.course.module;
        var topics = modules[USERSTATE.module].topic;

        if (USERSTATE.module === 0 && USERSTATE.topic === 0) {
            disableMyPrevButton()
        }else {
            if (modules[USERSTATE.module].topic[USERSTATE.topic].type != "assessment") {
                enableMyPrevButton()
                enableMyNextButton()
            }
        }
		
		
	
    }

 var rmfAssessmentScore = 0;
    var arrAssessmentRMF = new Array();
    var arrAssessmentRMFRef = new Array();
    //--------------------------------------------*************showResult*******************-----------------------------------------
    //Reaseon: Below given funtions is called when the user click the show result button that appeas on the last page of the assessmrnt to display to user score
    showResult = function(assessment) {
       //percentage = Math.round((((getAssesmentScore(assessment)) * 100) / (numberofQuesToPull)));
		percentage = Math.round((CorrectAnswerCount*100) / numberofQuesToPull);
        if (arrAssessmentRMFRef.length > 0) {
            var totalPercentage = 0;
            $(arrAssessmentRMFRef).each(function(key, value) {
                totalPercentage += arrAssessmentRMF[value];
            });
            // var actualPercentage = parseInt((totalPercentage / (arrAssessmentRMFRef.length * 100)) * 100);
            // var mixedPercentage = parseInt(((actualPercentage + percentage) / 200) * 100)
            // percentage = mixedPercentage;
        }
        var asmtStatusMsg = '';
		
        var passingScore = JSONStructure[0].structure.assessmentScore.passingScore;
        var asmtbuttonText = '';
		var asmtbuttonText2 = '';
        if (percentage >= passingScore) {
            asmtStatusMsg = '<div class="asmtSuccess"><br><img src="Media/eng/images/passed.png" style="position: relative;top: 11px;"><b>Congratulations, you passed.</b><br><br> Click &#39;Review Quiz&#39; to view your results.<br><br><p>Congratulations! You have passed the quiz.</p></div>';
            asmtbuttonText = '<div class="asmtExitbtnClick_style">Finish</div>';
			asmtbuttonText2 = '<div class="asmtExitbtnClick_style">Review Quiz</div>';
			

        } else {
			if(assessment.topicBreadCrum[0].type == "assessment2"){
				asmtStatusMsg = '<div class="asmtFailure"><img src="Media/eng/images/fail.jpg" style="position: relative;top: 11px;"> You did not pass. <br/><br/>Click &#34;Review Quiz&#34; to view your results.<br/><br>You can take this quiz again to pass the quiz.<br/> Go through the module to revise, if required.</div>';
			}else{
				asmtStatusMsg = '<div class="asmtFailure asmtFailure1">Click &#34;Review Quiz&#34; to view your results.<br/><br>Begin with the Lesson</div>';
			}
			
            //asmtbuttonText='Re-attempt';
            asmtbuttonText = '<div class="asmtExitbtnClick_style" style="display:none;">Re-attempt</div>';
			asmtbuttonText = 'Finish';
			asmtbuttonText2 = 'Review Quiz';
		
        }
		
		assessmentScreenCount=0
		assessmentScreenCount2=1
		fnRandomizeAssessment()
		pullAssessment()
        setScoreVal(percentage);
        var modules = courseStructure.course.module;
        var currentModule = modules[USERSTATE.module];
        var currentTopic = modules[USERSTATE.module].topic[USERSTATE.topic];
        setCompleted(currentTopic);
        setModuleCompleted(currentModule);
		
			
		
		
		checkCompletion()
        setTimeout(function() {
            //setCompletion()
        }, 1000);
		
		var passingPoints= 0;
		var totalscreeenPoints= assessment.screen.length;
		passingPoints=Math.round((assessment.screen.length*80)/100);
		//alert(passingPoints)
		
		if(assessment.topicBreadCrum[0].type == "assessment2")
		{
        var popupResult = '<div class="attemppopUpDiv" >\
		    <div class="CourseResult">Managing Postpartum Hemorrhage</div>\
			<div class="ScoreSection clearfix" style="padding-top: 20px;">\
			 <div class="ScreTextTitle">Your Score:</div>\
			 <div class="SCoreeGot">' + percentage + '% (<span>'+ CorrectAnswerCount +'</span> points)</div>\
			</div>\
			<div class="ScoreSection clearfix">\
			 <div class="ScreTextTitle">Passing Score:</div>\
			 <div class="SCoreeGot">80% (<span>' + 12 + '</span> points)</div>\
			</div>\
			<div class="ResultLine"><img src="Media/eng/images/resultline.jpg"></div>\
			<div class="container">\
			<div class="CourseResult">Result:</div>\
			<div class="CourseResult">' + asmtStatusMsg + '</div>\
			<!--<div class="middleContainer">' + asmtStatusMsg + '</div>\
            <div class="asmtExitbtnClick">' + asmtbuttonText + '</div>\
			<div class="asmtCertificationbtnClick">Certificate</div><div style="clear:both"></div>-->\
			</div></div>\
			<div class="clearfix ResultBtnSection">\
			<div class="ReviewBtn">' + asmtbuttonText2 + '</div>\
			 <div class="FinitBtn">' + asmtbuttonText + '</div>\
		</div>';
		}else 
		{
			 var popupResult = '<div class="attemppopUpDiv" >\
		    <div class="CourseResult">Managing Postpartum Hemorrhage</div>\
			<div class="ScoreSection clearfix" style="padding-top: 20px;">\
			 <div class="ScreTextTitle">Your Score:</div>\
			 <div class="SCoreeGot">' + percentage + '% (<span>'+ CorrectAnswerCount +'</span> points)</div>\
			</div>\
			<div class="ResultLine" style="margin-top:110px;"><img src="Media/eng/images/resultline.jpg"></div>\
			<div class="container">\
			<div class="middleContainer">' + asmtStatusMsg + '</div>\
            <!--<div class="asmtExitbtnClick">' + asmtbuttonText + '</div>\-->\
			<div class="asmtCertificationbtnClick">Certificate</div><div style="clear:both"></div>\
			</div></div>\
			<div class="clearfix ResultBtnSection">\
			<div class="ReviewBtn">' + asmtbuttonText2 + '</div>\
			 <div class="FinitBtn">' + asmtbuttonText + '</div>\
		</div>';
		}
        $('.template-container .content .AssResult').html(popupResult);
		$('.template-container .content .AssementQuizSection').hide()
		for(i=0;i<modules[USERSTATE.module].topic[USERSTATE.topic].screen.length;i++){
				arrayScorm[USERSTATE.module][USERSTATE.topic][i] = "1"
				modules[USERSTATE.module].topic[USERSTATE.topic].screen[i].isCorrect =false
			}
        if (JSONStructure[0].structure.CertificateOption.status== "off")
            $('.asmtCertificationbtnClick').hide();
        if (percentage < passingScore)
            $('.asmtCertificationbtnClick').hide();
        $('.asmtCertificationbtnClick').bind('click', function() {
            showCertificate(percentage);
        })
        $('.asmtExitbtnClick').bind('click', function() {
            if ($('.asmtExitbtnClick').text() == 'Re-attempt') {
                pageNumber = 1;
                $('#panel' + ($(".accordion .menu-container").length - 1) + ' ul li').trigger('click')
                $('.footer').show();
            } else
                $('#exit').trigger('click');
        });

        $('.ReviewBtn').unbind().bind('click',function(){
			$('#ReviewAssessment-panel').show();
			$('.ResultBtnSection').hide()
			showReviewMode()
			
		})
		
		$('.FinitBtn').unbind().bind('click',function(){
			sendSessionTimeToLMS()
            updateScromString();
            var tempComplete = getLMSData('completion_status')
            if (tempComplete == "completed") {
                doLMSSetValue("cmi.core.exit", "logout")
            } else {
                doLMSSetValue("cmi.core.exit", "suspend")
            }
            closeLMS();
            window.open('', '_self', '');
            window.close();
			
		})

        setTimeout(function() {
            if (Number(getLMSData('score')) < 80) {
                var s_value = doLMSSetValue("cmi.core.lesson_status", "failed");
                doLMSCommit();
            }
        }, 1500);



    };



    //--------------------------------------------*************showCertificate*******************-----------------------------------------
    //Reaseon: Below given funtions is called show the certificate when user passes the assessmnet or get score greter than or equal to 80.
    //Certificate will diasplay the user score along with date and user name

    var showCertificate = function(percentage) {

        userName = doLMSGetValue("cmi.core.student_name");
		if(userName=='' || userName==undefined){
		userName='You'
		}
        $('.certificatepopUpDiv').find('span').eq(0).html('<div class="passingCertificate CertificateFont">\
			<div class="axisImage"><img src="Media/eng/images/logo.png"/></div>\
			<div class="titleCompletion"></div>\
			<div class="CertificateText"></div>\
			<div class="studentName"></div>\
			<div class="courseName">Demo</div>\
			<div class="date">Date: <span class="currentDate">10-10-2010</span></div>\
			<div class="score">Score: <span class="currentScore">80%</span></div>\
			</div>\
			</div><div class="CertificationPrintButton"><img src="Media/eng/images/printButton.png"/></div>');
			
			var certificateData = getTopicData("certication.xml");
			


       
                $('.passingCertificate .titleCompletion').html('<div>' + certificateData.content.CertificateHeading + '</div>');
                $('.passingCertificate .CertificateText').html(certificateData.content.CertificateText);
                $('.passingCertificate 	.studentName').html(userName + " have successfully completed the elearning module")
                $('.passingCertificate .currentDate').html(new Date().getDate() + "/" + (new Date().getMonth() + 1) + "/" + new Date().getFullYear());
                $('.passingCertificate .currentScore').html(percentage + "%");
                $('.certificatepopUpDiv').show();
          
        $('.CertificationPrintButton').bind('click', function() {
            $('body').prepend('<div class="printPaper"></div>')
            setTimeout(function() {
                $('.closeIcon').hide();
                $('.printPaper').html($('.certificatepopUpDiv').html());
                $('.bodyContainer').hide();
                $('.CertificationPrintButton').hide();
                $('.closeIcon').hide();
                window.print();
                $('.printPaper').delay(500);
            }, 500);
            setTimeout(function() {
                $('.printPaper').remove();
                $('.CertificationPrintButton').show();
                $('.bodyContainer').show();
                $('.closeIcon').show();
            }, 1000)
        })
        $('.certificatepopUpDiv .closeIcon').bind('click', function() {
            $('.certificatepopUpDiv').hide();
            $('.overlayBlack').hide();
        })
        var winx = $(window).width() / 2;
        var winy = $(window).height() / 2;
        var viewx = $('.certificatepopUpDiv').outerWidth(true) / 2;
        var viewy = $('.certificatepopUpDiv').outerHeight(true) / 2;
        $('.certificatepopUpDiv').css('left', winx - viewx);
        $('.certificatepopUpDiv').show();
        $('.overlayBlack').show();
    }


    //--------------------------------------------*************getAssesmentScore*******************-----------------------------------------
    //Reaseon: Below given funtions is to calculate the score of the assessment
    var getAssesmentScore = function(assessment) {
        return _.filter(courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen, function(screen) {
            return screen.isCorrect;
        }).length
    };


    //--------------------------------------------*************registerEvents*******************-----------------------------------------
    //Reaseon: Below given funtions is to register events for GUI button
    registerEvents = function() {
        //////////////////////New Code Start//////////////////////
        $('ul.inline-list li#replay').unbind('click').bind("click", function() {
            renderTopic(template, topicData, topicTemplateId, templateAudio);
        });
        $('ul.inline-list li#home').unbind('click').bind("click", function() {
            $(location).attr('href', 'index.html');
        });
        //////////////////////New Code End//////////////////////
        $('ul.inline-list li#playpause').unbind('click').bind("click", function() {
            return playpauseHandler.call(this);
        });
        $('#menu').unbind('click').bind("click", function() {
            return menuHandler.call(this);
        });
		
		$('#PageNumber').keyup(function(e){
			if(e.keyCode == 13)
			{
				if($.isNumeric($('#PageNumber').val())){
					var num = $('#PageNumber').val()-1;
					if (typeof arrayScorm[USERSTATE.module][num]  !== "undefined"){
						USERSTATE.topic = num;
						USERSTATE.screen = 0;
						$('#PageNumber').blur();
						relayClick= true;
						showTopic();
					}
				}
			}
		});
		
		$('#replay').unbind('click').bind("click", function() {
			relayClick = true;
			showTopic();
        });
		
		$('#goIntrodunction').addClass('topic_ul_hovered');
		$('#goIntrodunction').unbind('click').bind("click", function() {
			$('#goIntrodunction').addClass('topic_ul_hovered');
			$('#goSummary').removeClass('topic_ul_hovered');
			$('#goLesson').removeClass('topic_ul_hovered');
			$('#goPostQuiz').removeClass('topic_ul_hovered');
			$('#goPreQuiz').removeClass('topic_ul_hovered');
			$('#ReviewAssessment-panel').hide()
			$('#transcript_modal').hide()
			
			USERSTATE.module = 0;
			USERSTATE.topic = 0;
			USERSTATE.screen = 0;
			$('#transcript_modal,#resources-panel').hide();
			

			$("#credits_modal").hide();
			$('.tooltip_footer,.tooltip_footer2,.TransDiv').hide();
            if(!audioComplete){
				$(".audioPlayer").trigger('play');
			}
			if (globalcourseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].playPauseController == "true") {
				playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);
			}
			$("div, li, p, span").css("-webkit-animation-play-state", "running"); 
			$("div, li, p, span").css("-moz-animation-play-state", "running"); 
			$("div, li, p, span").css("-o-animation-play-state", "running"); 
			$("div, li, p, span").css("-ms-animation-play-state", "running"); 
			$("div, li, p, span").css("animation-play-state", "running");
			$('#audio').addClass('audioon').removeClass('audiooff').html('<img src="Media/eng/images/newTemplates/pause.png">');
			$('#audio').addClass('audioon').removeClass('audiooff').attr('data-original-title','Audio On');
			$('.pause_tool').html('Pause')
			audioState="On"
			beginScreenInside=false;
			/*Assessment start*/
			assessmentScreenCount=0
			assessmentScreenCount2=1
			CorrectAnswerCount=0
			showTopic();
			fnRandomizeAssessment()
			pullAssessment()
			setScoreVal(percentage);
			var modules = courseStructure.course.module;
			var currentModule = modules[USERSTATE.module];
			var currentTopic = modules[USERSTATE.module].topic[USERSTATE.topic];
			setCompleted(currentTopic);
			setModuleCompleted(currentModule);
			/*Assessment end*/
			
        });
		
		//$('#goPreQuiz').css('cursor','default')
		$('#goPreQuiz').unbind('click').bind("click", function() {
			USERSTATE.module = 1;
			USERSTATE.topic = 0;
			USERSTATE.screen = 0;
			
			$('#ReviewAssessment-panel').hide()
			$('#goPreQuiz').addClass('topic_ul_hovered');
			$('#goIntrodunction').removeClass('topic_ul_hovered');
			$('#goLesson').removeClass('topic_ul_hovered');
			$('#goSummary').removeClass('topic_ul_hovered');
			$('#goPostQuiz').removeClass('topic_ul_hovered');
			$('#ReviewAssessment-panel').hide()
			$('#transcript_modal').hide()
			beginScreenInside=false;
			/*Assessment start*/
			assessmentScreenCount=0
			assessmentScreenCount2=1
			CorrectAnswerCount=0
			showTopic();
			fnRandomizeAssessment()
			pullAssessment()
			setScoreVal(percentage);
			var modules = courseStructure.course.module;
			var currentModule = modules[USERSTATE.module];
			var currentTopic = modules[USERSTATE.module].topic[USERSTATE.topic];
			setCompleted(currentTopic);
			setModuleCompleted(currentModule);
			/*Assessment end*/
			
			
			$('.template-container .content').hide();
			$('.BeginScreen').show();
			
			if(!audioComplete){
				$(".audioPlayer").trigger('play');
			}
			if (globalcourseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].playPauseController == "true") {
				playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);
			}
			$("div, li, p, span").css("-webkit-animation-play-state", "running"); 
			$("div, li, p, span").css("-moz-animation-play-state", "running"); 
			$("div, li, p, span").css("-o-animation-play-state", "running"); 
			$("div, li, p, span").css("-ms-animation-play-state", "running"); 
			$("div, li, p, span").css("animation-play-state", "running");
			$('#audio').addClass('audioon').removeClass('audiooff').html('<img src="Media/eng/images/newTemplates/pause.png">');
			$('#audio').addClass('audioon').removeClass('audiooff').attr('data-original-title','Audio On');
			$('.pause_tool').html('Pause')
			audioState="On"
        });
		
		$('#goLesson').unbind('click').bind("click", function() {
			$('#goLesson').addClass('topic_ul_hovered');
			$('#goIntrodunction').removeClass('topic_ul_hovered');
			$('#goSummary').removeClass('topic_ul_hovered');
			$('#goPostQuiz').removeClass('topic_ul_hovered');
			$('#goPreQuiz').removeClass('topic_ul_hovered');
			$('#ReviewAssessment-panel').hide()
			USERSTATE.module = 2;
			USERSTATE.topic = 0;
			USERSTATE.screen = 0;
			$('#transcript_modal,#resources-panel').hide();
			
			
			
			beginScreenInside=false;
			/*Assessment start*/
			assessmentScreenCount=0
			assessmentScreenCount2=1
			CorrectAnswerCount=0
			showTopic();
			fnRandomizeAssessment()
			pullAssessment()
			setScoreVal(percentage);
			var modules = courseStructure.course.module;
			var currentModule = modules[USERSTATE.module];
			var currentTopic = modules[USERSTATE.module].topic[USERSTATE.topic];
			setCompleted(currentTopic);
			setModuleCompleted(currentModule);
			/*Assessment end*/

			$("#credits_modal").hide();
			$('.tooltip_footer,.tooltip_footer2,.TransDiv').hide();
            if(!audioComplete){
				$(".audioPlayer").trigger('play');
			}
			if (globalcourseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].playPauseController == "true") {
				playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);
			}
			$("div, li, p, span").css("-webkit-animation-play-state", "running"); 
			$("div, li, p, span").css("-moz-animation-play-state", "running"); 
			$("div, li, p, span").css("-o-animation-play-state", "running"); 
			$("div, li, p, span").css("-ms-animation-play-state", "running"); 
			$("div, li, p, span").css("animation-play-state", "running");
			$('#audio').addClass('audioon').removeClass('audiooff').html('<img src="Media/eng/images/newTemplates/pause.png">');
			$('#audio').addClass('audioon').removeClass('audiooff').attr('data-original-title','Audio On');
			$('.pause_tool').html('Pause')
			audioState="On"
        });
		

		$('#goSummary').unbind('click').bind("click", function() {
			$('#goSummary').addClass('topic_ul_hovered');
			$('#goIntrodunction').removeClass('topic_ul_hovered');
			$('#goLesson').removeClass('topic_ul_hovered');
			$('#goPostQuiz').removeClass('topic_ul_hovered');
			$('#goPreQuiz').removeClass('topic_ul_hovered');
			$('#ReviewAssessment-panel').hide()
			$('#transcript_modal').hide()
			USERSTATE.module = 3;
			USERSTATE.topic = 0;
			USERSTATE.screen = 0;
			$('#transcript_modal,#resources-panel').hide();
			

			$("#credits_modal").hide();
			$('.tooltip_footer,.tooltip_footer2,.TransDiv').hide();
            if(!audioComplete){
				$(".audioPlayer").trigger('play');
			}
			if (globalcourseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].playPauseController == "true") {
				playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);
			}
			$("div, li, p, span").css("-webkit-animation-play-state", "running"); 
			$("div, li, p, span").css("-moz-animation-play-state", "running"); 
			$("div, li, p, span").css("-o-animation-play-state", "running"); 
			$("div, li, p, span").css("-ms-animation-play-state", "running"); 
			$("div, li, p, span").css("animation-play-state", "running");
			$('#audio').addClass('audioon').removeClass('audiooff').html('<img src="Media/eng/images/newTemplates/pause.png">');
			$('#audio').addClass('audioon').removeClass('audiooff').attr('data-original-title','Audio On');
			$('.pause_tool').html('Pause')
			audioState="On"
			
			beginScreenInside=false;
			/*Assessment start*/
			assessmentScreenCount=0
			assessmentScreenCount2=1
			CorrectAnswerCount=0
			showTopic();
			fnRandomizeAssessment()
			pullAssessment()
			setScoreVal(percentage);
			var modules = courseStructure.course.module;
			var currentModule = modules[USERSTATE.module];
			var currentTopic = modules[USERSTATE.module].topic[USERSTATE.topic];
			setCompleted(currentTopic);
			setModuleCompleted(currentModule);
			/*Assessment end*/
        });
		
	
		$('#goPostQuiz').unbind('click').bind("click", function() {
			USERSTATE.module =4;
			USERSTATE.topic = 0;
			USERSTATE.screen = 0;
			
			$('#ReviewAssessment-panel').hide()
			$('#goPostQuiz').addClass('topic_ul_hovered');
			$('#goIntrodunction').removeClass('topic_ul_hovered');
			$('#goLesson').removeClass('topic_ul_hovered');
			$('#goSummary').removeClass('topic_ul_hovered');
			$('#goPreQuiz').removeClass('topic_ul_hovered');
			$('#ReviewAssessment-panel').hide()
			$('#transcript_modal').hide()
			beginScreenInside=false;
			/*Assessment start*/
			assessmentScreenCount=0
			assessmentScreenCount2=1
			CorrectAnswerCount=0
			showTopic();
			fnRandomizeAssessment()
			pullAssessment()
			setScoreVal(percentage);
			var modules = courseStructure.course.module;
			var currentModule = modules[USERSTATE.module];
			var currentTopic = modules[USERSTATE.module].topic[USERSTATE.topic];
			setCompleted(currentTopic);
			setModuleCompleted(currentModule);
			/*Assessment end*/
			
			
			$('.template-container .content').hide();
			$('.BeginScreen').show();
			
			if(!audioComplete){
				$(".audioPlayer").trigger('play');
			}
			if (globalcourseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].playPauseController == "true") {
				playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);
			}
			$("div, li, p, span").css("-webkit-animation-play-state", "running"); 
			$("div, li, p, span").css("-moz-animation-play-state", "running"); 
			$("div, li, p, span").css("-o-animation-play-state", "running"); 
			$("div, li, p, span").css("-ms-animation-play-state", "running"); 
			$("div, li, p, span").css("animation-play-state", "running");
			$('#audio').addClass('audioon').removeClass('audiooff').html('<img src="Media/eng/images/newTemplates/pause.png">');
			$('#audio').addClass('audioon').removeClass('audiooff').attr('data-original-title','Audio On');
			$('.pause_tool').html('Pause')
			audioState="On"
        });
		
		$('#text').unbind('click').bind("click", function() {
			$('#transcript_modal').toggle();
        });
		
	/*Credit Start*/
		$('#Credits').unbind('click').bind("click", function() {
			$('#credits_modal').toggle();
			$('.tooltip_footer').show();

			$(".audioPlayer").trigger('pause');
			clearInterval(playPauseInterval)
			$("div, li, p, span").css("-webkit-animation-play-state", "paused"); 
			$("div, li, p, span").css("-moz-animation-play-state", "paused"); 
			$("div, li, p, span").css("-o-animation-play-state", "paused"); 
			$("div, li, p, span").css("-ms-animation-play-state", "paused"); 
			$("div, li, p, span").css("animation-play-state", "paused");
			$('#audio').addClass('audiooff').removeClass('audioon').html('<img src="Media/eng/images/newTemplates/pause_hover.png">');
			$('#audio').addClass('audiooff').removeClass('audioon').attr('data-original-title','Audio Off');
			$('.pause_tool').html('Play')
			audioState="Off"
        });
		
		$(".credits_close").unbind('click').bind("click",function(){
			$("#credits_modal").hide();
			$('.tooltip_footer,.tooltip_footer2,.TransDiv').hide();

			if(!audioComplete){
				$(".audioPlayer").trigger('play');
			}
			if (globalcourseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].playPauseController == "true") {
				playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);
			}
			$("div, li, p, span").css("-webkit-animation-play-state", "running"); 
			$("div, li, p, span").css("-moz-animation-play-state", "running"); 
			$("div, li, p, span").css("-o-animation-play-state", "running"); 
			$("div, li, p, span").css("-ms-animation-play-state", "running"); 
			$("div, li, p, span").css("animation-play-state", "running");
			$('#audio').addClass('audioon').removeClass('audiooff').html('<img src="Media/eng/images/newTemplates/pause.png">');
			$('#audio').addClass('audioon').removeClass('audiooff').attr('data-original-title','Audio On');
			$('.pause_tool').html('Pause')
			audioState="On"
		})
		
		
		
		
		$("#Credits, #Credits img").bind("mouseenter",function(){
				$('.credits_tool').show();
			});
			
		$("#Credits, #Credits img").bind("mouseout",function(){
				$('.credits_tool').hide();
			});
			
		$("#audio, #audio img").bind("mouseover",function(){
				$('.pause_tool').show();
			});
			
		$("#audio, #audio img").bind("mouseout",function(){
				$('.pause_tool').hide();
			});
			
		$("#resources_new, #resources_new img").bind("mouseenter",function(){
				$('.resources_tool').show();
			});
			
		$("#resources_new, #resources_new img").bind("mouseout",function(){
				$('.resources_tool').hide();
			});
			
		$("#text, #text img").bind("mouseover",function(){
				$('.txt_tool').show();
			});
			
		$("#text, #text img").bind("mouseout",function(){
				$('.txt_tool').hide();
			});
			
		$("#replay, #replay img").bind("mouseover",function(){
				$('.replay_tool').show();
			});
			
		$("#replay, #replay img").bind("mouseout",function(){
				$('.replay_tool').hide();
			});
			
		$("#prev, #prev img").bind("mouseover",function(){
				$('.prev_tool').show();
			});
			
		$("#prev, #prev img").bind("mouseout",function(){
				$('.prev_tool').hide();
			});
			
		$("#next, #next img").bind("mouseover",function(){
				$('.next_tool').show();
			});
			
		$("#next, #next img").bind("mouseout",function(){
				$('.next_tool').hide();
			});
			
			
		
		$(".credits_close").mouseover(function(){
			$(".credits_close_txt").show()
		})
		$(".credits_close").mouseout(function(){
			$(".credits_close_txt").hide();
		})
		/****/
		$(".ack_close,.ref_close,.cont_close,.tech_close,.cred_close,.info_close").mouseover(function(){
			$(".ack_close_txt,.ref_close_txt,.cont_close_txt,.tech_close_txt,.cred_close_txt,.info_close_txt").show()
		})
		$(".ack_close,.ref_close,.cont_close,.tech_close,.cred_close,.info_close").mouseout(function(){
			$(".ack_close_txt,.ref_close_txt,.cont_close_txt,.tech_close_txt,.cred_close_txt,.info_close_txt").hide();
		})
		
		/*1*/
		$(".ack_close").unbind('click').bind("click",function(){
			$(".ack_pop").hide();
			$(".red_pointer").hide();
		})
		
		$('.ack_btnn').unbind('click').bind("click", function() {
			$('.ack_pop').show();
			$('.ref_pop').hide();
			$('.cont_pop').hide();
			$('.tech_pop').hide();
			$('.cred_pop').hide();
			$('.info_pop').hide();
			
			$('.red_pointer').show();
			$('.green_pointer').hide();
			$('.purple_pointer').hide();
			$('.yellow_pointer').hide();
			$('.blue_pointer').hide();
			$('.orange_pointer').hide();
        });
		/*2*/
		$(".ref_close").unbind('click').bind("click",function(){
			$(".ref_pop").hide();
			$('.green_pointer').hide();
		})
		
		$('.ref_btnn').unbind('click').bind("click", function() {
			$('.ack_pop').hide();
			$('.ref_pop').show();
			$('.cont_pop').hide();
			$('.tech_pop').hide();
			$('.cred_pop').hide();
			$('.info_pop').hide();
			
			$('.ref_para').scrollTop(0);
			$('.red_pointer').hide();
			$('.green_pointer').show();
			$('.purple_pointer').hide();
			$('.yellow_pointer').hide();
			$('.blue_pointer').hide();
			$('.orange_pointer').hide();

			
        });
		/*3*/
		$(".cont_close").unbind('click').bind("click",function(){
			$(".cont_pop").hide();
			$(".purple_pointer").hide();
		})
		
		$('.cont_btnn').unbind('click').bind("click", function() {

			//$(".ref_para").animate({ scrollTop: 0 }, "fast");
			$('.ack_pop').hide();
			$('.ref_pop').hide();
			$('.cont_pop').show();
			$('.tech_pop').hide();
			$('.cred_pop').hide();
			$('.info_pop').hide();
			
			$('.cont_para,.production_text').scrollTop(0);
			$('.red_pointer').hide();
			$('.green_pointer').hide();
			$('.purple_pointer').show();
			$('.yellow_pointer').hide();
			$('.blue_pointer').hide();
			$('.orange_pointer').hide();

			
        });
		/*4*/
		$(".tech_close").unbind('click').bind("click",function(){
			$(".tech_pop").hide();
			$(".yellow_pointer").hide();
		})
		
		$('.tech_btnn').unbind('click').bind("click", function() {
			$('.ack_pop').hide();
			$('.ref_pop').hide();
			$('.cont_pop').hide();
			$('.tech_pop').show();
			$('.cred_pop').hide();
			$('.info_pop').hide();
			
			$('.red_pointer').hide();
			$('.green_pointer').hide();
			$('.purple_pointer').hide();
			$('.yellow_pointer').show();
			$('.blue_pointer').hide();
			$('.orange_pointer').hide();
        });
		/*5*/
		$(".cred_close").unbind('click').bind("click",function(){
			$(".cred_pop").hide();
			$(".blue_pointer").hide();
		})
		
		$('.cred_btnn').unbind('click').bind("click", function() {
			$('.ack_pop').hide();
			$('.ref_pop').hide();
			$('.cont_pop').hide();
			$('.tech_pop').hide();
			$('.cred_pop').show();
			$('.info_pop').hide();
			$('.cred_para').scrollTop(0);
			
			$('.red_pointer').hide();
			$('.green_pointer').hide();
			$('.purple_pointer').hide();
			$('.yellow_pointer').hide();
			$('.blue_pointer').show();
			$('.orange_pointer').hide();
        });
		/*6*/

		$(".info_close").unbind('click').bind("click",function(){
			$(".info_pop").hide();
			$(".orange_pointer").hide();
		})
		
		$('.info_btnn').unbind('click').bind("click", function() {
			$('.ack_pop').hide();
			$('.ref_pop').hide();
			$('.cont_pop').hide();
			$('.tech_pop').hide();
			$('.cred_pop').hide();
			$('.info_pop').show();
			$('.info_para').scrollTop(0);
			
			$('.red_pointer').hide();
			$('.green_pointer').hide();
			$('.purple_pointer').hide();
			$('.yellow_pointer').hide();
			$('.blue_pointer').hide();
			$('.orange_pointer').show();
        });
		/**/
	/*Credit end*/
        $('#glossary').unbind('click').bind("click", function() {
		
            return glossaryHandler.call(this);

        });
        $('#resources_new').unbind('click').bind("click", function() {
            return resourcesHandler.call(this);

        });
        $('#help').unbind('click').bind("click", function() {
            return helpHandler.call(this);
        });
        $('.nav_style #prev').unbind('click').bind("click", function() {
			relayClick = true;
            return prevHandler.call(this);
        });

        $('#exit').unbind('click').bind("click", function() {
            return exitHandler.call(this);
        });

        $('.close').unbind('click').bind("click", function() {
			$(".popupBg").hide()

            if ($(".centeContent").find('video').length > 0) {
                $(".centeContent").find('video').css('visibility', 'visible');
            }
            $(".modal").css('display', 'none');

            $($(this).parent()[0]).removeClass('open');

            $('.BindBg').hide();
            if ($("#jquery_jplayer_1").length >= 1) {
                if ($("#jquery_jplayer_1").data("jPlayer").status.currentTime != 0) {
                    setTimeout(function() {
                        $("#jquery_jplayer_1").jPlayer('play')
                    }, 500)
                }
            }
			
			if (currehntTim != 0) {
			if (courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].type === "assessment" && playAssessmentBeginScreenAudio==true) {
				//$(".audioPlayer").trigger('play');
				$(".audioPlayer").prop("volume",1);
			}else if (courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].type === "assessment2" && playAssessmentBeginScreenAudio==true) {
				//$(".audioPlayer").trigger('play');
				$(".audioPlayer").prop("volume",1);
			}else{
				if (courseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].type != "assessment"){
					//$(".audioPlayer").trigger('play');
					$(".audioPlayer").prop("volume",1);
				}
			}
			
			
			}
           
        });



       
	   
	   var audioState="On"

        $('#audio').unbind('click').bind('click', function(e) {
            e.preventDefault();
            e.stopPropagation();
			//alert(audioComplete+" audioComplete");
            if (audioState=="On") {
                $('#audio .AudioOntooltip p').html('Audio Off');
               // $(".audioPlayer").prop('volume',0)
				$(".audioPlayer").trigger('pause');
				clearInterval(playPauseInterval)
				$("div, li, p, span").css("-webkit-animation-play-state", "paused"); 
				$("div, li, p, span").css("-moz-animation-play-state", "paused"); 
				$("div, li, p, span").css("-o-animation-play-state", "paused"); 
				$("div, li, p, span").css("-ms-animation-play-state", "paused"); 
				$("div, li, p, span").css("animation-play-state", "paused");
                $(this).addClass('audiooff').removeClass('audioon').html('<img src="Media/eng/images/newTemplates/pause_hover.png">');
				$(this).addClass('audiooff').removeClass('audioon').attr('data-original-title','Audio Off');
				$('.pause_tool').html('Play')
				audioState="Off"
				//$(".tooltip_footer_right").show();
				//$(".tooltip_footer_left").show();
				$('.tooltip_footer2,.TransDivTrtanscript,.TransDiv').show()
				/*$('.transcript_text').css({
					'overflow-y': 'hidden',
					'height': '48px'
				});*/
            }else{
				$('#audio .AudioOntooltip p').html('Audio ON');
              // $(".audioPlayer").prop('volume',1)
			    if(!audioComplete){
					$(".audioPlayer").trigger('play');
				}
				if (globalcourseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].playPauseController == "true") {
					playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);
				}
			    $("div, li, p, span").css("-webkit-animation-play-state", "running"); 
				$("div, li, p, span").css("-moz-animation-play-state", "running"); 
				$("div, li, p, span").css("-o-animation-play-state", "running"); 
				$("div, li, p, span").css("-ms-animation-play-state", "running"); 
				$("div, li, p, span").css("animation-play-state", "running");
                $(this).addClass('audioon').removeClass('audiooff').html('<img src="Media/eng/images/newTemplates/pause.png">');
				$(this).addClass('audioon').removeClass('audiooff').attr('data-original-title','Audio On');
				$('.pause_tool').html('Pause')
				audioState="On"
				//$(".tooltip_footer_right").hide();
				//$(".tooltip_footer_left").hide();
				$('.tooltip_footer2,.tooltip_footer,.TransDiv,.TransDivTrtanscript').hide()
				/*$('.transcript_text').css({
					'overflow-y': 'auto',
					'height': '48px'
				});*/
			}
			
        });

        $(".accordion li").unbind('click').bind("click", function() {
            if (globalcourseStructure.menuType.type == 'liner') {
                if ($(this).find('span').css('display') == 'inline')
                    return menuTopicHandler.call(this);
                else
                    return false;
            } else {
                return menuTopicHandler.call(this);
            }
        });

        $(".accordion a").unbind('click').bind("click", function() {
			for(var i = 0; i<$('.menu-container').length ;i++){
				$($('.menu-container')[i]).find('a').removeClass('openedNow');
				$($('.menu-container')[i]).find('a').css('background','#ff7200');
				//var ab = $($('.menu-container')[i]).find('a').find('.menu_arrow')
                //ab.html('<img src="Media/eng/images/menu_side_arrow.png">');
			}
			$(this).addClass('openedNow');
			$(this).css('background','#594f8c');
			var a = $(this).find('.menu_arrow')
            a.html('<img src="Media/eng/images/menu_down_arrow.png">');

			
            if (globalcourseStructure.menuType.type == 'liner') {
                if ($(this).find('span').css('display') == 'inline')
                    return menuModuleHandler.call(this);
                else
                    return false;
            } else {

                return menuModuleHandler.call(this);
            }


        });

      

        //--------------------------------------------*************$(window).unload*******************-----------------------------------------
        //Reaseon: Below given funtions is called when the user exit's the course directly by closing the browser window. It will call LMS exit function.
        $(window).unload(function() {
            sendSessionTimeToLMS()
            var tempCompleteStatus = getLMSData('completion_status')
            if (tempCompleteStatus == "completed") {
                doLMSSetValue("cmi.core.exit", "logout")
            } else {
                doLMSSetValue("cmi.core.exit", "suspend")
            }

            updateScromString();
            closeLMS();

        });

       
      
    };

 //--------------------------------------------*************`*******************-----------------------------------------
    //Reaseon: Below given funtions is called to Load Glossary popup
    generateGlossary = function() {
       
    
        var glossaryData = getTopicData("glossary.xml");
        $.when(glossaryData).then(function() {
            var template = templatesCache["glossary.html"];
            var template1 = templatesCache["glossaryWord.html"];
            var template2 = templatesCache["glossaryDesc.html"];
            var glossaryContent = topicDataCache["glossary.xml"];

            keywords = glossaryContent.wordlist
            letters = glossaryContent.alphabets

           

            var defaultId = keywords[0].id;

            var glossayData = {};
            glossayData.letters = glossaryContent.alphabets
            glossayData.keywords = getWordsForID(defaultId);
            glossayData.defaultDesc = keywords;
            var glosoryhtml = '<div class="label-container">\
				<div class="new-tab">'
            $.each(glossayData.letters, function(i) {
                glosoryhtml += '<div class="letter" data-id="' + glossayData.letters[i].id + '" id="letter' + glossayData.letters[i].id + '"><a href=# id="letter_link' + glossayData.letters[i].id + '">' + glossayData.letters[i].letter + '</a></div>';
            })

            glosoryhtml += '</div>\
			</div>\
			<div class="glossary-data-container">\
				<div class="words-conatiner"><div class="glossaryContent"><div class="mid-glossaryWrap"><h3 class="terms">Terms</h3><div class="glossary"></div></div></div></div>\
				<!--<div class="small-8 columns desc-container new-width"></div>-->\
			</div>'
            $(".glossary-container").html(glosoryhtml);

            var gwords = "";
            var index = 0;
            
            $.each(glossayData.keywords, function(i) {
                index++;
                
                gwords += '<div class="panel"><h3><a data-toggle="collapse" data-parent="#accordion_gloss" href="#'+index+'">' + glossayData.keywords[i].word + '</a></h3><div id="'+index+'" class="panel-collapse collapse glossary-desc"><p><div class="def">Definition</div>' + glossayData.keywords[i].desc + '</p></div></div>'
            })


          
            $(".glossary").html('<div id="accordion_gloss" class="panel-group">' + gwords + '</div>');

            bindGlossaryClick()
          

        });
    };

    function bindGlossaryClick() {
        $('.label-container .letter').unbind('click').bind('click', function() {
            return glossaryLetterHandler.call(this);

        });

        $('.glossary .word').unbind('click').bind('click', function() {
            return glossaryWordHandler.call(this);
        });
    }



    //--------------------------------------------*************glossaryWordHandler*******************-----------------------------------------
    //Reaseon: Below given funtions is to handle the glossary word that appears after selecting particular alphabet.
    glossaryWordHandler = function() {
        var key = $(this).id
        var word = $(this).text();
        getDescForWord(word);

    };
    //--------------------------------------------*************glossaryLetterHandler*******************-----------------------------------------
    //Reaseon: Below given funtions is called when the user clicks on any letter on glossary
    glossaryLetterHandler = function() {
	
        var key = $(this).attr('data-id')
        var glossaryContent = topicDataCache["glossary.xml"];
        temp = getWordsForID(key)
        var gwords = "";
        var gDesc = ""
        var index = 0;
        $.each(temp, function(i) {
            index++;
            gwords += '<div class="panel"><h3><a data-toggle="collapse" data-parent="#accordion_gloss" href="#'+index+'">' + temp[i].word + '</a></h3><div id="'+index+'" class="panel-collapse collapse glossary-desc"><p><div class="def">Definition</div>' + temp[i].desc + '</p></div></div>'
        })

        $(".glossary").html('<div id="accordion_gloss" class="panel-group">' + gwords + '</div>');
    
      setTimeout(function() {
            bindGlossaryClick()

        }, 1000);
       
    };
	
	glossaryHandler = function() {
        $('.BindBg').show();
        $('.inline-list li').css('opacity', '0.7')
         $(".audioPlayer").trigger('pause');

        if ($(".centeContent").find('video').length > 0) {
            $(".centeContent").find('video').css('visibility', 'hidden');
        }

        $(".popupBg").show()
         $("#glossary-panel").css('display', 'block');
     

        setTimeout(function() {
            $("#jquery_jplayer_1").jPlayer('pause')
        }, 500)
    };
	
	
	getWordsForID = function(id) {
        var idKeyWords = [];
        for (var int = 0; int < keywords.length; int++) {
            if (id == keywords[int].id) {
                idKeyWords.push(keywords[int])
            }
        }

        return idKeyWords;
    };

    getDescForWord = function(word) {
        var desc = "";
        var gDesc = "";
        var gwords = ""
        var glossaryContent = topicDataCache["glossary.xml"]
        keywords = glossaryContent.wordlist.keyword;
        for (var int = 0; int < keywords.length; int++) {
            if (word == keywords[int].word) {
                desc = keywords[int]
                gDesc = '<div class="glossaryContent"><div class="mid-glossaryWrap"><h6>Definition</h6><div class="desc">' + keywords[int].desc + '</div></div></div>';
                break;
            }
        }

        $(".desc-container").html(gDesc);

    };


    //--------------------------------------------*************getCurrentTopic*******************-----------------------------------------
    //Reaseon: Below given funtions is called get the current topic data
    getCurrentTopic = function() {
        var module = courseStructure.course.module[USERSTATE.module];
        var currtopics = module.topic[USERSTATE.topic];
        return currtopics;
    };


    //--------------------------------------------*************getAssessmentTopic*******************-----------------------------------------
    //Reaseon: Below given funtions is called get the data of assessmnt module
    getAssessmentTopic = function() {
        var module = courseStructure.course.module[1];
        var currtopics = module.topic[0];
        return currtopics;
    };


    //--------------------------------------------*************getCurrentScreen*******************-----------------------------------------
    //Reaseon: Below given funtions is called get the date of current screem module
   getCurrentScreen = function(){
		var module = courseStructure.course.module[USERSTATE.module];
		var topics =  module.topic[USERSTATE.topic];
		var currScreen =  topics.screen[USERSTATE.screen];
		return currScreen;
	};



    //--------------------------------------------*************menuModuleHandler*******************-----------------------------------------
    //Reaseon: Below given funtions is called when the user clicks on module button form menu the user will then be taken to the selected module
    menuModuleHandler = function() {
        var menuType = courseStructure.course.menuType
        if (menuType === "module") {
            USERSTATE.module = parseInt($(this).attr("class"));
            USERSTATE.topic = 0;
            showTopic();
            var modules = courseStructure.course.module;
			var topics = modules[USERSTATE.module].topic;
            $('.BindBg').hide();
            $(".topic_name").css('visibility', 'visible');
            $(".bg").css('visibility', 'visible');
            

            if (USERSTATE.module === 0 && USERSTATE.topic === 0) {
                $('.nav_style #prev').addClass('disableNavigation');
                
            }  else {
                $('.nav_style #prev').removeClass('disableNavigation');
           
            }

            return false;
        }


    };


    //--------------------------------------------*************menuTopicHandler*******************-----------------------------------------
    //Reaseon: Below given funtions is called when the user clicks on Topic button form menu the user will then be taken to the selected Topic
    menuTopicHandler = function() {
		beginScreenInside=false
        if (courseStructure.course._navigationMode == "linear") {
            if (courseStructure.course.module[parseInt($(this).attr("class").split("-")[0])].topic[parseInt($(this).attr("class").split("-")[1])].visited) {} else {
                return;
            }
        }

        USERSTATE.module = parseInt($(this).attr("class").split("-")[0]);
        USERSTATE.topic = parseInt($(this).attr("class").split("-")[1]);
		assessmentScreenCount=0
		assessmentScreenCount2=1
		fnRandomizeAssessment()
		pullAssessment()
        USERSTATE.screen = 0;
        showTopic();
        $('.BindBg').hide();
        $('.inline-list li').css('opacity', '1')
        $(".topic_name").css('visibility', 'visible');
        $(".bg").css('visibility', 'visible');
        var modules = courseStructure.course.module;
        var topics = modules[USERSTATE.module].topic;
    };
   


    //--------------------------------------------*************updatePagination*******************-----------------------------------------
    //Reaseon: Below given funtions is called to update the course pagination
    var currentModule = 0;
    var pageNumber = 0;
    updatePagination = function() {

        var modules = courseStructure.course.module;
        var count = 0;
        var counttopics = 0;

        var topics = modules[USERSTATE.module].topic;

        for (var i = 0; i < topics.length; i++) {
            count += topics[i].screen.length;
        }

        for (var i = 0; i < USERSTATE.topic; i++) {
            counttopics += topics[i].screen.length;
        }
        if (currentModule < USERSTATE.module) {
            pageNumber = 1;
            currentModule++;
        }
        var screens = topics[USERSTATE.topic].screen;
		
        if (screens instanceof Array) {
		
			if(modules[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].type == "assessment"){
				$('.curr-page').text(assessmentScreenCount+1);
				$('.totalPoint').html("")
				$('.totalPoint').html($('.curr-page').html())
				if(assessmentType=='random'){
					$('.total-page').text(numberofQuesToPull);
				}else{
					$('.total-page').text(count);
				}
			}else if(modules[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].type == "assessment2"){
				$('.curr-page').text(assessmentScreenCount+1);
				$('.totalPoint').html("")
				$('.totalPoint').html($('.curr-page').html())
				if(assessmentType=='random'){
					$('.total-page').text(numberofQuesToPull);
				}else{
					$('.total-page').text(count);
				}
			}else{		
				$('.curr-page').text((counttopics + (Number(USERSTATE.screen) + 1)));
				$('.total-page').text(count);	
			}
        } else {
            $('.curr-page').text(1);
            $('.total-page').text(1);
        }

    };
	
	updatePoint = function() {

        var modules = courseStructure.course.module;
        var count = 0;
        var counttopics = 0;

        var topics = modules[USERSTATE.module].topic;

        for (var i = 0; i < topics.length; i++) {
            count += topics[i].screen.length;
        }

        for (var i = 0; i < USERSTATE.topic; i++) {
            counttopics += topics[i].screen.length;
        }
        if (currentModule < USERSTATE.module) {
            pageNumber = 1;
            currentModule++;
        }
        var screens = topics[USERSTATE.topic].screen;
		
        if (screens instanceof Array) {
		
		if(modules[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].type == "assessment"){
			$('.totalPoint').text(assessmentScreenCount+1);
		            
		}else{		
            $('.totalPoint').text((counttopics + (Number(USERSTATE.screen) + 1)));
            $('.total-page').text(count);	
			}
        } else {
            $('.totalPoint').text(1);
        }

    };

    //---------------------------------------------------------------------------------------------------------
    rollOverHandler = function() {
        var srcName = $(this).attr("src").split(".")[0].split("/")[3];
        var imageSrc = Controller.paths['EngineImage'] + srcName + "_over.png";
        $(this).attr("src", imageSrc);
    };

    rolloutHandler = function() {
        var srcName = $(this).attr("src").split(".")[0].split("/")[3].split("_")[0];
        var imageSrc = Controller.paths['EngineImage'] + srcName + ".png";
        $(this).attr("src", imageSrc);
    };

    playpauseHandler = function() {
        var imgObj = $(this).find('img');
        var status = $(imgObj).attr("src").split(".")[0].split("/")[3]
            .split("_")[0];
        status === "play" ? $(imgObj).attr({
            "src": Controller.paths['EngineImage'] + "pause.png",
            "title": "Pause"
        }) : $(imgObj).attr({
            "src": Controller.paths['EngineImage'] + "play.png",
            "title": "Play"
        });
    };

    menuHandler = function() {
      
        $('.BindBg').show();
        if ($(".centeContent").find('video').length > 0) {
            $("#jquery_jplayer_1").find('video').css('z-index', '5');
            $(".centeContent").find('video').css('visibility', 'hidden');
        }
              
         $(".popupBg").show()
         $("#menu-panel").css('display', 'block');
   
        setTimeout(function() {
            $("#jquery_jplayer_1").jPlayer('pause');
			 $(".audioPlayer").trigger('pause');
            if ($('.moduleMenu').attr('aria-expanded') =="true") {
             $('.moduleMenu').css('background','#ff7200')
            }else if ($('.moduleMenu').attr('aria-expanded') =="false") {
               $('.moduleMenu').css('background','#594f8c')
            }
        }, 500)
		
		for (var i = 0; i < arrayScorm.length; i++) {
            var moduleCompleted = 0;
            for (var j = 0; j < arrayScorm[i].length; j++) {
                var topicCompleted = 0;
                for (var k = 0; k < arrayScorm[i][j].length; k++) {
                    if (arrayScorm[i][j][k] == "1") {
                        topicCompleted++;
                    }
                }
                if (topicCompleted >= arrayScorm[i][j].length) {
                    $("." + i + "-" + j).find("span").show();
                    moduleCompleted++;
                }
            }
            if (moduleCompleted >= arrayScorm[i].length) {
                $("#Module" + i).find("span").show();
            }else{
				$("#Module" + i).find("span").hide();
			}
        }
    };

    

    resourcesHandler = function() {
	
        $('.BindBg').show();
        $('.inline-list li').css('opacity', '0.7')
        //$(".audioPlayer").trigger('pause');
		//$(".audioPlayer").prop("volume",0);

        if ($(".centeContent").find('video').length > 0) {
            $(".centeContent").find('video').css('visibility', 'hidden');
			$("#example_video_1").css('visibility', 'visible')
        }
		
		
		$(".popupBg").show()
        $("#resources-panel").css('display', 'block');
    };

    




    //-----------------------------------------------------------------------------------------

    //--------------------------------------------*************prevHandler*******************-----------------------------------------
    //Reaseon: Below given funtions is called on back button click
    prevHandler = function() {
        showPrevPage();
		$('#resources-panel').hide();
    };



    //--------------------------------------------*************prevHandler*******************-----------------------------------------
    //Reaseon: Below given funtions is called on next button click

    nextHandler = function() {
        showNextPage();		
		$('#resources-panel').hide();
		//alert('NNNNNn')
		$(".hover_tooltip").hide()
    };

    //--------------------------------------------*************helpHandler*******************-----------------------------------------
    //Reaseon: Below given funtions is called on help button click

    helpHandler = function() {
        $('.BindBg').show();
        $("#jquery_jplayer_1").jPlayer('pause')
		 $(".audioPlayer").trigger('pause');
	
        if ($(".centeContent").find('video').length > 0) {
            $(".centeContent").find('video').css('visibility', 'hidden');
        }
        
      
        $(".popupBg").show()
         $("#help-panel").css('display', 'block');
        
    };



    //--------------------------------------------*************exitHandler*******************-----------------------------------------
    //Reaseon: Below given funtions is called on exit button click. 
    exitHandler = function() {
        $('.BindBg').show();
		$("#jquery_jplayer_1").jPlayer('pause')
		$(".audioPlayer").trigger('pause');

        $(".popupBg").show()

        if ($(".centeContent").find('video').length > 0) {
            $(".centeContent").find('video').css('visibility', 'hidden');
        }
        $("#noBtn").bind("click", function() {
        $("#exit-panel").hide()
        $(".popupBg").hide()
        })

        $("#exit-panel").css('display', 'block');

        $("#yesBtn").bind("click", function() {
            //setCompletion()
            sendSessionTimeToLMS()
            updateScromString();
            var tempComplete = getLMSData('completion_status')
            if (tempComplete == "completed") {
                doLMSSetValue("cmi.core.exit", "logout")
            } else {
                doLMSSetValue("cmi.core.exit", "suspend")
            }
            closeLMS();
            window.open('', '_self', '');
            window.close();
        })


        
    };



    //--------------------------------------------*************closeLMS*******************-----------------------------------------
    //Reaseon: Below given funtions is called on exit button click. 

    closeLMS = function() {
        if (Controller.scorm === "1.2") {
            doLMSFinish();
        } else if (Controller.scorm === "2004") {
            doTerminate();
        }
        setTimeout("parent.top.close()", 1000);
    };


   



    var scoreVarFromService = "";
    var bookmarkSetValue = "";



    //--------------------------------------------*************setScoreVal*******************-----------------------------------------
    //Reaseon: Below given funtions is called set score on LMS. 
    setScoreVal = function(nScore) {
        if (getLMSData('score') == null || getLMSData('score') == undefined || getLMSData('score') == '' || getLMSData('score') == 0 || getLMSData('score') == 'unknown') {
            setScore(nScore + "");
        } else if (getLMSData('score') < nScore) {
            setScore(nScore + "");
        } else if (getLMSData('score') >= nScore) {
            setScore(getLMSData('score') + "");
        }
        scoreVarFromService = nScore;



    }


    //--------------------------------------------*************showNextPage*******************-----------------------------------------
    //Reaseon: Below given funtions is called on next button click
    showNextPage = function() {
      
        if ($(".template-container .content").html() != "") {
            var modules = courseStructure.course.module;
            var currentModule = modules[USERSTATE.module];
            var currentTopic = modules[USERSTATE.module].topic[USERSTATE.topic];
            var nextScreen = ++USERSTATE.screen;
            var moudlesLength = modules.length;
            currAttempt = 1;

            if (nextScreen > currentTopic.screen.length - 1) {
                USERSTATE.screen = nextScreen = currentTopic.screen.length - 1;
                setCompleted(currentTopic);
                currentTopic.completed = true;
                USERSTATE.topic++;
                var moduleCompleted = true;

                for (var topicIndex = 0; topicIndex < currentModule.topic.length; topicIndex++) {
                    /*for(var topicIndex in currentModule.topic){*/
                    if (!currentModule.topic[topicIndex].completed) {
                        moduleCompleted = false;
                        break;
                    }
                }
                if (moduleCompleted) {
                    setModuleCompleted(currentModule);
                }
                if (USERSTATE.topic > currentModule.topic.length - 1) {
                    USERSTATE.topic = currentModule.topic.length - 1;

                    USERSTATE.module++;
                    if (USERSTATE.module > moudlesLength - 1) {
                        USERSTATE.module = moudlesLength - 1;
                        return;
                    }

                    USERSTATE.topic = 0;
                }
                USERSTATE.screen = nextScreen = 0;
            }


            modules[USERSTATE.module].topic[USERSTATE.topic].type === "assessment" ? USERSTATE.assessment = true : USERSTATE.assessment = false;
			modules[USERSTATE.module].topic[USERSTATE.topic].type === "assessment2" ? USERSTATE.assessment = true : USERSTATE.assessment = false;


            updateNextNavigation();
            showTopic();

        }




    };

    //--------------------------------------------*************updateNextNavigation*******************-----------------------------------------
    //Reaseon: Below given funtions is called on next button click
    updateNextNavigation = function() {
        var modules = courseStructure.course.module;
        var currentModule = modules[USERSTATE.module];
        var topics = modules[USERSTATE.module].topic;
       
    };



    //--------------------------------------------*************updatePrevNavgation*******************-----------------------------------------
    //Reaseon: Below given funtions is called on back button click

    updatePrevNavgation = function() {
        var modules = courseStructure.course.module;
        if (USERSTATE.module === 0 && USERSTATE.topic === 0 && USERSTATE.screen === 0) {
            disableMyPrevButton()
        } else {
            if (modules[USERSTATE.module].topic[USERSTATE.topic].type != "assessment") {
			
                enableMyPrevButton()
            }
        }


    };


    
    var target = "";
    //var spinner="";



    //--------------------------------------------*************initView*******************-----------------------------------------
    //Reaseon: Below given funtions is called on start of the course loading it has all the audio loading events like audio progress and audio time update 
    initView = function() {
        var moduleAssessment = courseStructure.course.module[USERSTATE.module];
        var topicsAssessment = moduleAssessment.topic[USERSTATE.topic];
        target = document.getElementsByClassName('bodyContainer')[0];

        var modules = courseStructure.course.module;
        updatePagination();
        updateBreadCrum();
        generateMenu(modules);
        updateNextNavigation();
        updatePrevNavgation();
        registerEvents();
         generateHelp();
         generateGlossary();
        generateResource();
         generateExit();
        	templateAudio=modules[0].topic[0].screen[0].audioName
        if (modules[0].topic[0].screen[0].audioButton == "false") {
            $('#audio').removeClass('disabled').find('.footerClickableLinks').text('');
        } else {
            templateAudio = null;
            $('#audio').removeClass('disabled').addClass('disabled').find('.footerClickableLinks').text('');
        }		
    };

function updateTrackTime(track){
                totalAudioTime = Math.floor(track.duration)
				//console.log(currehntTim+"--"+totalAudioTime)	
                currehntTim = Math.floor(track.currentTime)
				moduleAssessment = courseStructure.course.module[USERSTATE.module];
				topicsAssessment = moduleAssessment.topic[USERSTATE.topic];
                tempCurrentTime = currehntTim
                tempTotalTime = totalAudioTime
				
				 if (currehntTim == 0) {
					if (startConversationTemplate == "false") {
						if (topicTemplateId != "VideoTemplate.html") {
							if (globalcourseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].interactiveLocknext != "true") {
								if (topicsAssessment.type != "assessment") {
									$('.instunctionGloabal').html("Audio Playing...")
									$('.instunctionGloabal').show()
									$(".hover_tooltip").hide()
								}
							}
						}
					}
				}
				console.log(audioLoaded+"---audioLoaded---")
	//-----------------------------------********************-------------------------------------
				if(audioLoaded==true){
					
			//-----------------------------------********************-------------------------------------
					if (track.currentTime > 0) {
					console.log('load Audiooooo')
								audioCounter++
								if(audioCounter==1){
									hideLoader();
									loadPages(template, topicData, topicTemplateId, templateAudio,USERSTATE)
									$('.nav_style #next').removeClass("border-pulsate")
									$('.instunctionGloabal').removeClass("border-pulsate")
									
									var moduleAssessment = courseStructure.course.module[USERSTATE.module];
									var topicsAssessment = moduleAssessment.topic[USERSTATE.topic];
									if (startConversationTemplate == "false") {
										if (topicTemplateId != "VideoTemplate.html") {
											if (globalcourseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].interactiveLocknext != "true") {
												if (topicsAssessment.type != "assessment") {
													$('.instunctionGloabal').html("Audio Playing...")
													$('.instunctionGloabal').show()
												}
											}
										}
									}
								}
						}
			
				}
			//-----------------------------------********************-------------------------------------		
				if (currehntTim >= totalAudioTime && currehntTim != 0) {
					audioComplete = true
				}
                if (startConversationTemplate == "true") {
                    $('.progressBar').html('')

                    if (currehntTim <= 0) {
                        $("#bubble").hide()

                    }

                    if (track.currentTime > 0) {
                        $("#bubble").show()
                        $("#imageBG").show()
                        audioPlayed = "true"
                        hideLoader()
                        $('.progressBar').show()


                    }

                    showChatBubble(currehntTim)

                    if (currehntTim < 10) {
                        tempCurrentTime = "0" + currehntTim
                    }
                    if (currehntTim > 9) {
                        tempCurrentTime = currehntTim
                    }

                    if (totalAudioTime < 10) {
                        tempTotalTime = "0" + totalAudioTime
                    }
                    if (totalAudioTime > 9) {
                        tempTotalTime = totalAudioTime
                    }


                    if (currehntTim >= totalAudioTime && currehntTim != 0) {

                        audioComplete = true

                    }

                    if (audioComplete == true) {
					//	alert('audioComplete');
                        $('.progressBar').html("")
                        $('.progressBar').css('background-color', '#ff7101')
                        $('.progressBar').css('width', 'auto')
                        $('.progressBar').css('text-align', 'center')
                        $('.progressBar').css('color', '#fff')
						$(".hover_tooltip").show()
						$('.nav_style #next').addClass("border-pulsate")
						$('.nav_style #next').css('cursor', 'pointer')
						$('.nav_style #next').addClass('enableNavigation').removeClass('disableNavigation')
                        
                    } else {
                        $('.progressBar').html(tempCurrentTime + ":" + tempTotalTime)
                        $('.progressBar').css('background-color', '#ff7101')
                        $('.progressBar').css('height', '20px')
                        $('.progressBar').css('width', Math.round(currehntTim / totalAudioTime * 100) + '%')
                        $('.progressBar').css('text-align', 'center')
                        $('.progressBar').css('color', '#fff')
                        $('.nav_style #next').removeClass("border-pulsate")
                        $('.nav_style #next').addClass('disableNavigation').removeClass('enableNavigation')
                    }
                } else {
                    if (track.currentTime > 0 && audioLoaded==false) {
                        hideLoader();
						console.log('click Audiooooo')
                    }
                    if (currehntTim >= totalAudioTime && currehntTim != 0) {
					
                        if (startConversationTemplate == "false") {
                            if (topicTemplateId != "VideoTemplate.html") {
                                if (globalcourseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].interactiveLocknext != "true") {
                                    if (topicsAssessment.type != "assessment") {
										if(lastScreen != "true"){
										if (globalcourseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].forcelockNext != "true") {
											$('.nav_style #next').addClass('enableNavigation').removeClass('disableNavigation')
											$('.nav_style #next').removeClass("border-pulsate")
											$('.instunctionGloabal').removeClass("border-pulsate")
												
												$('.nav_style #next').addClass("border-pulsate")
												$('.nav_style #next').css('cursor', 'pointer')
												$('.nav_style #next').addClass('enableNavigation').removeClass('disableNavigation')

										  
											$('.instunctionGloabal').show()
											$('.instunctionGloabal').html("Click NEXT to continue")
											$('.instunctionGloabal').addClass("blinker")
											$('.nav_style #next').css('cursor', 'pointer')
											 $('.hover_tooltip').show();
											 enableMyNextButton()
										}
										}
                                    }
                                }
                            }
                        }


                        if (globalcourseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].forcelockNext == "true") {
                            if (topicTemplateId != "VideoTemplate.html") {
                                if (topicsAssessment.type != "assessment") {
									if(lastScreen != "true"){
										//alert('=over=')
										$('.nav_style #next').addClass('enableNavigation').removeClass('disableNavigation')
											$('.nav_style #next').removeClass("border-pulsate")
											$('.instunctionGloabal').removeClass("border-pulsate")
											
												$('.nav_style #next').addClass("border-pulsate")
												$('.nav_style #next').css('cursor', 'pointer')
												$('.nav_style #next').addClass('enableNavigation').removeClass('disableNavigation')

										  
											$('.instunctionGloabal').show()
											$('.instunctionGloabal').html("Click NEXT to continue")
											$('.instunctionGloabal').addClass("blinker")
											$('.nav_style #next').css('cursor', 'pointer')
											 $('.hover_tooltip').show();
											 enableMyNextButton()
									}
								}
							}
						}
					
                    }
			
				}
            }
			
			
			
			
			
			
    //--------------------------------------------*************hideUI*******************-----------------------------------------
    //Reaseon: Below given funtions is called to hide Ui if needed
    hideUI = function(hide) {
        var module = courseStructure.course.module[USERSTATE.module];
        var topics = module.topic[USERSTATE.topic];
        var screens = topics.screen[USERSTATE.screen];
        $('.nav_style #next').attr('data-disable', 'false');
        if (USERSTATE.module == 0) {
            if (screens._lockNext == "false") {
                
            } else {
                $('.nav_style #next').attr('data-disable', 'diabledXml')
                $('.nav_style #next').addClass('disableNavigation').removeClass('enableNavigation');
            }
        }
        if (hide == true) {
            $('.content .iconlist,.content p:visible:not(.image-border),.content').hide();
            $('.content .option').parent().hide();
        } else {
            $('.content .iconlist,.content p:visible:not(.image-border),.content').css('opacity', 0);

            $('.content .option').parent().css('opacity', 0);
        }
    };


    //--------------------------------------------*************showUI*******************-----------------------------------------
    //Reaseon: Below given funtions is called to show Ui if needed
    showUI = function(show, key) {
        if (show == true) {
            if (key == null) {
                $('.content .iconlist,.content p:not(.image-border),.content,.content ').fadeIn('slow');
            } else {
                $('.content .iconlist,.content p:not(.image-border),.content,.content ').eq(key).fadeIn('slow');
            }
        } else {
            if (key == null) {
                $('.content .iconlist,.content p:not(.image-border),.content').animate({
                    'opacity': 1
                }, 'slow');
                $('.content .option').parent().css('opacity', 1);
            } else {
                $('.content .iconlist,.content p:not(.image-border),.content').eq(key).animate({
                    'opacity': 1
                }, 'slow');
                $('.content .option').parent().css('opacity', 1);
            }
        }
    }


    //--------------------------------------------*************renderUI*******************-----------------------------------------
    //Reaseon: Below given funtions is called to render the GUI assests on lauch of the course
    renderUI = function (){
			var headerTemplate = getTemplateData("shellHeader.html","engine");
			var breadcrumTemplate = getTemplateData("shellBreadcrum.html","engine");
			var footerTemplate = getTemplateData("shellFooter.html","engine");
	
			var rvalue=$.when(headerTemplate,breadcrumTemplate,footerTemplate).then(function(){
				var header = templatesCache["shellHeader.html"];
				var breadcrum = templatesCache["shellBreadcrum.html"];
				var footer = templatesCache["shellFooter.html"];
				var headerData = {
						courseTitle: courseStructure.courseTitle,
						courseLogo : courseStructure.course.logo.image
				};
				$(".header-container").html('<div class="course-header clearfix">\
				<div class="course-title">{{{courseTitle}}}</div>\
				<div class="course-logo"><img src="{{courseLogo}}" alt="Logo" class="h_logo"></div>\
			</div>')
				$(".header-container").find('.course-header').find('.course-title').html(courseStructure.courseTitle);
				$(".header-container").find('.course-header').find('.course-logo').find('img').attr('src',courseStructure.course.logo.image);
				$('.header-container')[0].style.cssText = courseStructure.course.style;
				//$(".breadcrumbs").html(Handlebars.compile(breadcrum));
				$(".breadcrumbs").html(breadcrum);
				//$('.breadcrumbs')[0].style.cssText = courseStructure.course.breadcrum.style;
				//$(".footer").html(Handlebars.compile(footer));
				$(".footer").html(footer);
				//$(".footer-menu")[0].style.cssText = courseStructure.course.footer.style;
				//$(".dummy-row")[0].style.cssText = courseStructure.course.bottom.style;
				$('.template-container')[0].style.cssText = courseStructure.course.container.style;
				initView();
			});
			return rvalue;
	};

	updateBreadCrum = function(){
		var modules = courseStructure.course.module;
		var topics = modules[USERSTATE.module].topic;
		var screen =  topics[USERSTATE.topic].screen;
		var screenTitle = "";
		if(modules[USERSTATE.module].moduleBreadCrum[0].title==''){
			$('.module-name').parent().addClass('removeGreaterThanSymbol');
			$('.module-name').text('');
		}
		else{
			$('.module-name').html(modules[USERSTATE.module].moduleBreadCrum[0].title);
			$('.module-name').parent().removeClass('removeGreaterThanSymbol');
		}
		if(modules[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].title==''){
			$('.module-topic').html().addClass('removeGreaterThanSymbol');
			$('.module-topic').text('');
		}
		else{
			$('.module-topic').html(modules[USERSTATE.module].topic[USERSTATE.topic].topicBreadCrum[0].title);
			$('.module-topic').parent().removeClass('removeGreaterThanSymbol');
		}
		
		
		if(screenTitle==''){
			$('.module-screen').parent().addClass('removeGreaterThanSymbol');
			$('.module-screen').text('');
		}else{
			$('.module-screen').text(screenTitle);
			$('.module-screen').parent().removeClass('removeGreaterThanSymbol');
		}
	

        xmlName = screen[USERSTATE.screen].xmlName
        templateID = screen[USERSTATE.screen].templateID
        audioName = screen[USERSTATE.screen].audioName
    };


    //--------------------------------------------*************generateExit*******************-----------------------------------------
    //Reaseon: Below given funtions is called to Load exit section
    generateExit = function() {
       
        var exitData = getTopicData("exit.xml");
        $.when( exitData).then(function() {
            var template = templatesCache["exit.html"];
            var exitContent = topicDataCache["exit.xml"];
            var htmlExit = "";
           
                htmlExit = '<div class="exit_bg">\
               <div class="to_exit">\
                 <p>Do you really want to exit ?</p>\
					<div class="exit_container clearfix">\
						<div id="yesBtn" class="ExitBtns"><span>Yes</span></div>\
						<div id="noBtn" class="ExitBtns"><span>No</span></div>\
					</div>\
               </div>\
				</div>'
            
            $(".exit-container").html(htmlExit);
            //$(".help-container").html(Handlebars.compile(template)(helpContent.items[0]));
        });
    };


    //--------------------------------------------*************generateHelp*******************-----------------------------------------
    //Reaseon: Below given funtions is called to Load help section
    generateHelp = function() {
        
        var helpData = getTopicData("help.xml");
        $.when( helpData).then(function() {
            var template = templatesCache["help.html"];
            var helpContent = topicDataCache["help.xml"];
            var htmlHelp = "";
			for(i=0;i<helpContent.items.length;i++){
                htmlHelp += '<div style="clear:both;">\
				<div class="help-image"><div><img src="' + helpContent.items[i].image + '"></div></div>\
                <div class="saperator">|</div>\
				<div class="help-description">' + helpContent.items[i].description + '</div>\
				</div>\
                <div style="padding-top:10px;clear:both;"></div>'
            }
            $(".help-container").html(htmlHelp);
            //$(".help-container").html(Handlebars.compile(template)(helpContent.items[0]));
        });
    };



    //--------------------------------------------*************generateResource*******************-----------------------------------------
    //Reaseon: Below given funtions is called to Load resource popup
    generateResource = function() {
    
        var resourceData = getTopicData("resource.xml");
        $.when(resourceData).then(function() {
            var resourceContent = topicDataCache["resource.xml"];
            var htmlResource = '<div class="TableHeading">\
				<div class="resourceHeading"></div>\
				<!--<div class="resourcedownld"></div>-->\
				<div style="clear:both"></div>\
			</div>';
            $.each(resourceContent.items, function(i) {
                htmlResource += '<div class="resourceContent clearfix">\
					<div class="resources_name">\
						<div class="resources_name_inside">\
							<p class="res_anchor"><a href="Resource/Overview_of_2012_WHO_PPH_Recs.pdf" target="_blank" >Overview of 2012 WHO PPH <br>Recommendations</a></p>\
						</div>\
						<br>\
						<div class="resources_name_inside">\
							<p class="res_anchor"><a href="Resource/WHO_recommendations_for_prevention_treatment_pph.pdf" target="_blank">WHO Recommendations for PPH<br>Prevent and Treatment</a></p>\
						</div>\
						<br>\
						<div class="resources_name_inside">\
							<p class="res_anchor"><a href="Resource/Primary_PPH_management.pdf" target="_blank">Primary PPH management</a></p>\
						</div>\
					</div>\
					</div>\
					<!--<div class="resourceFileTypeContent"><img src="' + resourceContent.items[i].imageFileType + '" /></div>\
					<div class="resourcedownldContent"><a target="_blank" href="' + resourceContent.items[i].downloadPath + '"><img src="' + resourceContent.items[i].imageDownload + '" width="40" /></a></div>-->\
				    </div>\
					</div>';
            });
            $(".resourceContainer").html(htmlResource);
            //$(".help-container").html(Handlebars.compile(template)(helpContent.items[0]));
        });
    };



   


    //--------------------------------------------*************generateMenu*******************-----------------------------------------
    //Reaseon: Below given funtions is called to Load Menu popup

    generateMenu = function(modules) {
    
        var moduleArray = [];
		

        for (var i = 0; i < modules.length; i++) {
            var moduleObj = {
                id: "",
                name: "",
                topics: []
            };

            moduleObj.id = i;
			
            modules[i]["id"] = i;
			
            moduleObj.completed = modules[i]["completed"];
            moduleObj.name = modules[i].moduleBreadCrum[0].title;
			
            var topicLength = modules[i].topic.length;
			
            for (var j = 0; j < topicLength; j++) {
                var topicObj = {
                    id: '',
                    name: ''
                };
                topicObj.id = i + "-" + j;
				//alert(topicObj.id)
                topicObj.name = modules[i].topic[j].topicBreadCrum[0].title;
                topicObj.completed = modules[i].topic[j].completed;
                modules[i].topic[j]["id"] = topicObj.id;
                moduleObj.topics.push(topicObj);
            }

            moduleArray.push(moduleObj);
        }
        
            var ModuleIndex = 1;
            $.each(moduleArray, function(i) {
                var htmlMenu = '<dd class="menu-container panel">\
					<a data-toggle="collapse" data-parent="#accordion" href="#panel' + moduleArray[i].id + '" class="' + moduleArray[i].id + ' moduleMenu" id="Module' + moduleArray[i].id + '"><!--<span style="font-weight:normal;text-transform:uppercase;">Module ' + ModuleIndex + '</span> - -->' + moduleArray[i].name + '<span class="completed\
	' + ((moduleArray[i].completed) ? "show" : "") + '">\
	</span><span class="menu_arrow"></span></a>\
	<div id="panel' + moduleArray[i].id + '" class="panel-collapse collapse">\
		<ul>'
                $.each(moduleArray[i].topics, function(index) {
                    if (moduleArray[i].topics[index].name == '' || moduleArray[i].topics[index].name == undefined) {} else
                        htmlMenu += '<li class="' + moduleArray[i].topics[index].id + ' topicMenu" data-dismiss="modal"><span style="cursor:pointer;">' + moduleArray[i].topics[index].name + '</span>\
						<span class="completed ' + ((moduleArray[i].topics[index].completed) ? "show" : "") + '">\
						</span></li>'
                })
                htmlMenu += '</ul></div></dd>'
                $('#menu-panel').find(".accordion").append(htmlMenu);
                ModuleIndex++;
            });

            //$('.panel').on('hidden.bs.collapse', function (e) {
                //$(e.currentTarget).find('a').css('background','#ff7200')
                //$(e.currentTarget).find('a').find('.menu_arrow').html('<img src="Media/eng/images/menu_side_arrow.png">');
            //})
 
    };


    //--------------------------------------------*************showPrevPage*******************-----------------------------------------
    //Reaseon: Below given funtions is called to back button click
    showPrevPage = function() {
           
        if ($(".template-container .content").html() != "") {

            var modules = courseStructure.course.module;
            var prevScreen = --USERSTATE.screen;
            currAttempt = 1;
            if (prevScreen < 0) {
                USERSTATE.screen = prevScreen = 0;
                USERSTATE.topic--;
                if (USERSTATE.topic < 0) {
                    USERSTATE.topic = 0;
                    USERSTATE.module--;
                    if (USERSTATE.module < 0) {
                        USERSTATE.module = 0;
                        return;
                    }
                    USERSTATE.topic = modules[USERSTATE.module].topic.length - 1;
                }
                USERSTATE.screen = prevScreen = modules[USERSTATE.module].topic[USERSTATE.topic].screen.length - 1;
            }

            updatePrevNavgation();
            showTopic();
            updatePagination();
            updateBreadCrum();
        }
    };


    //--------------------------------------------*************setCompleted*******************-----------------------------------------
    //Reaseon: Below given funtions is called set the status of the Topics that are complted and show green tick in menu on the visited Topics. same vlaues will be sene to LMS
    setCompleted = function(topic) {
        blockedTopic = new Array()
        $("." + topic.id + ".topicMenu").find("span").show();
        for (i = 0; i < 100; i++) {
            if (String(USERSTATE.module + '_' + USERSTATE.topic) == String(completedTopic[i])) {
                blockedTopic.push(i)
            }
        }

        if (blockedTopic.length == 0) {
            completedTopic.push(USERSTATE.module + '_' + USERSTATE.topic)

        }
       
        PageCompletedNumber = getMatchCount("1", String(arrayScorm))
        bookmarkSetValue = '' + USERSTATE.module + ',' + USERSTATE.topic + ',' + USERSTATE.screen

        setLMSData('bookmarkdata', '' + TempStatus + "~" + USERSTATE.module + ',' + USERSTATE.topic + ',' + USERSTATE.screen + "~" + completedModule + '|' + completedTopic);

    }



    //--------------------------------------------*************setModuleCompleted*******************-----------------------------------------
    //Reaseon: Below given funtions is called set the status of the modules that are complted and show green tick in menu on the visited modules. same vlaues will be sene to LMS



    setModuleCompleted = function(module) {
        blockedModule = new Array()


        for (j = 0; j < 100; j++) {
            if (String(USERSTATE.module) == String(completedModule[j])) {
                blockedModule.push(j)
            }
        }

        if (blockedModule.length == 0) {
            completedModule.push(USERSTATE.module)
        }
      
        PageCompletedNumber = getMatchCount("1", String(arrayScorm))
        bookmarkSetValue = '' + USERSTATE.module + ',' + USERSTATE.topic + ',' + USERSTATE.screen

        setLMSData('bookmarkdata', '' + TempStatus + "~" + USERSTATE.module + ',' + USERSTATE.topic + ',' + USERSTATE.screen + "~" + completedModule + '|' + completedTopic);
        $("." + module.id + ".moduleMenu").find("span").show();

    };



 

    //--------------------------------------------*************initialize*******************-----------------------------------------
    //Reaseon: Below given funtions is called on lauch of the course. It will check Render UI and course assets. It will also check whether the user is launching the course first time or the user is revisting the course.
    //Deoending uoon that the user will be taken to the last visited page.
    return {
        initialize: function() {
            var courseStructureObtained = getCourseStructure();
			
            if (is_touch_device()) {
                /*$('.playAnimation').hide()
                $('.playAnimation').unbind().bind('click', function() {
                    loadAudio(audio)
                    $('.playAnimation').hide()
                })
				*/
            }

			
            $.when(courseStructureObtained).then(function() {
                arrayAdded(courseStructureObtained)
				assessmentType=JSONStructure[0].structure.AssessmentType
				fnRandomizeAssessment()
				pullAssessment()
                if (Controller.scorm === "1.2") {
                    doLMSInitialize();
                } else if (Controller.scorm === "2004") {
                    doInitialize();
                }
                var scormString = getSCORMData();
                var bookmarkIndexData = ""
                bookmarkIndexData = getLMSData('bookmarkdata');
                completeStatus = getLMSData('completion_status')
				
				$(".audioPlayer").bind('timeupdate', function(){
					updateTrackTime(this)
				});
				
                if (bookmarkIndexData == undefined || bookmarkIndexData == null || $.trim(bookmarkIndexData) == "") {
                    renderUI();
                    showTopic();
                } else {

                    var r = confirm("Do you want to  Resume from last Stage?");

                    if (r == true) {

                        
                        $.when(renderUI()).done(function() {
                            var bookmarkPage = bookmarkIndexData;
                            var lastVisit = bookmarkPage.split('~')
                            var finalVisitedPage = lastVisit[1].split(',')
                            var module = finalVisitedPage[0]
                            var topic = finalVisitedPage[1]
                            var screen = finalVisitedPage[2]
                            var getTime = finalVisitedPage[3]
                            var mod = courseStructure.course.module;
                            var top = mod[module].topic;
                            var tempCompletedModuleTopic = new Array()


                            arrayScorm = new Array();
                            arrayScorm = lastVisit[0].split("|");
                            tempCompletedModuleTopic = lastVisit[2].split('|')
                            moduleStr = String(tempCompletedModuleTopic[0]).split(',')
                            topicStr = String(tempCompletedModuleTopic[1]).split(',')
                            if (moduleStr != "" && moduleStr != undefined && moduleStr != null) {
                                completedModule = moduleStr
                            } else {
                                completedModule = new Array()
                                    

                            }
                            if (topicStr != "" && topicStr != undefined && topicStr != null) {
                                completedTopic = topicStr
                            } else {
                                completedTopic = new Array()
                                 

                            }




                            for (i = 0; i < arrayScorm.length; i++) {
                                arrayScorm[i] = arrayScorm[i].split("^");
                                for (k = 0; k < arrayScorm[i].length; k++) {
                                    arrayScorm[i][k] = arrayScorm[i][k].split(",");
                                }
                            }
                            if (typeof top[Number(topic)].type === 'undefined') {
                                showTopicbookMark(module, topic, screen);
                            } else if (top[Number(topic)].type === "assessment") {
                                showTopicbookMark(module, topic, 0);
                            } else if (top[Number(topic)].type === "assessment2") {
                                showTopicbookMark(module, topic, 0);
                            } else {
                                showTopicbookMark(module, topic, screen);
                            }

                            checkCompletion()

                        });

                    } else {
						USERSTATE.module=0;
						USERSTATE.topic=0;
						USERSTATE.screen=0;
						renderUI();
                        showTopic();
                       
                    }
                }


            });
        },
        showNextPage: showNextPage,
        showPrevPage: showPrevPage
    };
})()



//--------------------------------------------*************arrayAdded*******************-----------------------------------------
//Reaseon: Below given funtions is called to set an array called (arrayScorm) to store the cousre values of pages visited in course 
var arrayScorm = new Array();

function arrayAdded(courseStructureObtained){
	arrayScorm=new Array();
	for(var moduleIndex=0;moduleIndex< JSONStructure[0].structure.course.module.length;moduleIndex++){
		arrayScorm[moduleIndex]=new Array();
		playPauseFnArr[moduleIndex]= new Array()
		for(var topicIndex=0;topicIndex< JSONStructure[0].structure.course.module[moduleIndex].topic.length;topicIndex++){
			arrayScorm[moduleIndex][topicIndex]=new Array();
			playPauseFnArr[moduleIndex][topicIndex]= new Array()
			for(var screenIndex=0;screenIndex< JSONStructure[0].structure.course.module[moduleIndex].topic[topicIndex].screen.length;screenIndex++){
				arrayScorm[moduleIndex][topicIndex].push('0');
			}
		}
	}
	
}


//--------------------------------------------*************displayAll*******************-----------------------------------------
//Reaseon: Below given funtions is called to load the course configuration file initialize the course.
// This function is called on click of enter button of start of the course if index page is ON elae if it is off the displayAll function will be called on delay of i sec automaticaly


function displayAll() {
    $('.mainDiv').hide();
    $('.bodyContainer').show();
    $('.main-container').show();

    var timerTemp = setInterval(setTime, 1000);
    idTimerTemp = timerTemp;

    $("#jquery_jplayer_3").jPlayer("clearMedia");
    $('.mainDiv').find('.audioContainer').remove();
   
       var data = config
			Controller = {
				paths: {
					'Data': 'Data',
					'Templates': 'Templates',
					'EngineTemplate': 'Scripts/engine/html/',
					'EngineImage': 'Media/eng/images/'
				},
				'lang': config[0].Controller.settings.defaultLanguage,
				'scorm': config[0].Controller.settings.lms,
				'service': config[0].Controller.settings.webservice,
			};
        Engine.initialize();
    

    if (is_touch_device()) {
        $('.nav_style #next').show();
        $('.nav_style #prev').show();
    }

    $('.nav_style #next').addClass('outNext')
    $('.nav_style #prev').addClass('outPrev')

}


//--------------------------------------------*************setCompletion*******************-----------------------------------------
//Reaseon: Below given funtions is called set course completion on LMS. This function is called on every page loading. And once all the pages are completed the course completion will be set to complete on LMS.
// if it course has an asessment then in that case when user visits all the page and get 80 or more than 80 percent in assessment only then the course will be set completed on LMS.

function setCompletion() {
    var passingScore = JSONStructure[0].structure.assessmentScore.passingScore;

    console.log(completedModule.length+"---completedModule---"+arrayScorm.length)
	if(JSONStructure[0].structure.courseType=="Assessment"){
		if(completedModule.length>=arrayScorm.length && percentage>=Number(passingScore)){
			console.log('pass')
			setCompletionStatus("completed")

		}else{
			console.log('fail')
			setCompletionStatus("incomplete");
			
		}
	}else{
		if (completedModule.length >= arrayScorm.length) {
			
		   setCompletionStatus("completed")

		} else {
			
			setCompletionStatus("incomplete");
		}
	
	}

  
}



//--------------------------------------------*************restartTest*******************-----------------------------------------
//Reaseon: Below given funtions is called set when the user fails in asssessment and if he want's the re attempt the assessment.

function restartTest() {

    pageNumber = 1;
	
    $('#panel' + ($(".accordion .menu-container").length - 1) + ' ul li').trigger('click');
    $('.footer').show();
}

//--------------------------------------------*************getMatchCount*******************-----------------------------------------
//Reaseon: Below given funtions is called to check how many times the particular value is repeated in a string. This function is used to calculate the course completion
function getMatchCount(search, target) {
    return target.split(search).length - 1;
}

function definedOrNot(flag) {
    return ((flag == undefined) ? "" : flag);
}


function enableMyNextButton() {
$('.nav_style #next').addClass('enableNavigation').removeClass('disableNavigation')
    $('.nav_style #next').css('opacity', 1)
    $('.nav_style #next').css('cursor', 'pointer')
    $('.nav_style #next').unbind('click').bind('click', function(e) {
        nextHandler.call(this);
    })

    $("#next, #next img").bind("mouseover",function(){
				$('.next_tool').show();
			});
			
		$("#next, #next img").bind("mouseout",function(){
				$('.next_tool').hide();
			});
}

function disableMyNextButton() {
    $('.nav_style #next').css('opacity', 0.5)
    $('.nav_style #next').css('cursor', 'default')
    $('.nav_style #next').unbind('click')
    $('.nav_style #next').unbind('mouseover')
    $('.nav_style #next').unbind('mouseout')
    $('.nav_style #next').addClass('outNext')
    $('.nav_style #next').removeClass('hoverNext')
	
	$('#next, #next img').unbind('mouseover')
}

function enableMyPrevButton() {
    $('.nav_style #prev').css('opacity', 1)
    $('.nav_style #prev').css('cursor', 'pointer')

    $('.nav_style #prev').unbind('click').bind("click", function() {
		relayClick = true;
        prevHandler.call(this);
    });
	
    $("#prev, #prev img").bind("mouseover",function(){
				$('.prev_tool').show();
			});
			
		$("#prev, #prev img").bind("mouseout",function(){
				$('.prev_tool').hide();
			});
}

function disableMyPrevButton() {	
    $('.nav_style #prev').css('opacity', 0.5)
    $('.nav_style #prev').css('cursor', 'default')
    $('.nav_style #prev').unbind('click')
    $('.nav_style #prev').unbind('mouseover')
    $('.nav_style #prev').unbind('mouseout')
    $('.nav_style #prev').addClass('outPrev')
    $('.nav_style #prev').removeClass('hoverPrev')
    //$('.FooterTooltipPrev').removeAttr('data-toggle');
$('#prev, #prev img').unbind('mouseover')

}

var setBand = "high";

function setValBand(str) {
    setBand = str;
}