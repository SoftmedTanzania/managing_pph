
function make010101_01(template, topicData) {

    $(".template-container .content").html(template);
	$('.module-topic').css('visibility','hidden');
    $('.copy_right').html(topicData.content.Data.copy_right);
	$('.text_para').html(topicData.content.Data.text_para);
	$('.text_para2').html(topicData.content.Data.text_para2);
	$('.page_footer').html(topicData.content.Data.page_footer);
	$('.copy_right').addClass('copy_right_ani animated');
	$('.text_para').addClass('text_para_ani animated');
    $('.text_para2').addClass('text_para_ani animated');
	$('.page_footer').addClass('page_footer_ani animated');

	
	if(relayClick){
		$('.mainDiv_intro').hide();
		loadClickAudio('Media/eng/audio/mod_1_screen_1');
		$('.page_bg_4').show();
		relayClick = false;
	}else{
		$('#main-header').hide();
		$('.footer-wrap').hide();
		$('.content').css('background','transparent');
		$('.middle-container').css('border-left','1px solid #979797');
		$('.middle-container').css('border-right','1px solid #979797');
		loadClickAudio('Media/eng/audio/Intro');
	}
	
	
	$('.clickMain_1_01').bind('click', function () {
	
		$('#main-header').show();
		$('.footer-wrap').show();
		$('.content').css('background','#fef8ea');
	
		$('.middle-container').css('border-left','1px solid #fff');
		$('.middle-container').css('border-right','1px solid #fff');
		loadClickAudio('Media/eng/audio/mod_1_screen_1');
	
	    $('.mainDiv_intro').hide();
		$('.page_bg_4').show();
	});
}

function make010101_02(template, topicData, USERSTATE) {

    $(".template-container .content").html(template);
	disableMyPrevButton()
    $('.inform_txt').html(topicData.content.Data.inform_txt);
	$('.lap_para').html(topicData.content.Data.lap_para);
	$('.clock_para').html(topicData.content.Data.clock_para);
	$('.laptop_img').html(topicData.content.Data.laptop_img);
	$('.clock_img').html(topicData.content.Data.clock_img);
	$('.arrow_img').html(topicData.content.Data.arrow_img);
	$('.tree_img').html(topicData.content.Data.tree_img);
	$('.clock_img').addClass('clock_img_ani animated');
	$('.lap_para').addClass('lap_para_ani animated');
	$('.laptop_img').addClass('laptop_img_ani animated');
	$('.clock_para').addClass('clock_para_ani animated');
	$('.tree_img').addClass('tree_img_ani animated');
	$('.arrow_img').addClass('arrow_img_ani animated');
	
	
	 /*setTimeout (function(){
	$(".pages_bg_2_1").hide();
	$(".pages_bg_2_2").show();
	},20000); */

   playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]=function(){
		//console.log(currehntTim)
		if(currehntTim>=3){
		playPauseCounter++
			if(playPauseCounter==20){
				$(".pages_bg_2_1").hide();
	            $(".pages_bg_2_2").show();
			}
		}
	}

    playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);

			
	}
	
function make010101_03(template, topicData) {

    $(".template-container .content").html(template);

    $('.help_txt').html(topicData.content.Data.help_txt);

	$('.help_txt').addClass('help_txt_ani animated');
	$('.emergency_para').addClass('emergency_para_ani animated');
	

	}
	
function make010101_04(template, topicData) {

    $(".template-container .content").html(template);
    $('.help_txt_1').html(topicData.content.Data.help_txt_1);
	
	$('.help_txt_1').addClass('help_txt_1_ani animated');
	$('.emergency_para_1').addClass('emergency_para_1_ani animated');
	

		
	}
	
function make010101_05(template, topicData) {

    $(".template-container .content").html(template);

    $('.intro_txt').html(topicData.content.Data.intro_txt);

	$('.intro_txt').addClass('intro_txt_ani animated');
	$('.module_para').addClass('module_para_ani animated');
	
		
	}	
	
function make010101_06(template, topicData) {

    $(".template-container .content").html(template);
	
	$('.impac_para').addClass('impac_para_ani animated');
	$('.impac1').addClass('impac_fadeIn2 animated');
	$('.impac2').addClass('impac_fadeIn3 animated');
	$('.impac_footer').addClass('float_right animated');
	
		
	}	
	
	
function make010101_07(template, topicData) {

	$(".template-container .content").html(template);
	
	$('.arrow_fades1,.arrow_fades2,.arrow_fades3').addClass('arrow_bounces animated');


}

function make010101_08(template, topicData) {

	$(".template-container .content").html(template);
	
	$(".template-container .content").html(template);

	$('.clinical_txt').html(topicData.content.Data.clinical_txt);
	$('.how_do_txt').html(topicData.content.Data.how_do_txt);
	$('.diagnose_para').html(topicData.content.Data.diagnose_para);
	$('.assess_para').html(topicData.content.Data.assess_para);
	$('.provide_para').html(topicData.content.Data.provide_para);
	$('.evaluate_para').html(topicData.content.Data.evaluate_para);

	$('.how_do_txt').addClass('clinical_fadeIn animated');
	$('.assess_para').addClass('clinical_fadeIn animated');
	$('.diagnose_para').addClass('clinical_fadeIn animated');
	$('.provide_para').addClass('clinical_fadeIn animated');
	$('.evaluate_para').addClass('clinical_fadeIn animated');

	$('.arrow_fade1,.arrow_fade2,.arrow_fade3').addClass('arrow_bounce animated');

}

function make010101_09(template, topicData, USERSTATE) {

	$(".template-container .content").html(template);

	
	$('.bubble_img').html(topicData.content.Data.bubble_img);

	var timestamp = new Date().getTime();
	$('.bubble_imggif').html("<img src='Media/eng/images/sp_bubble1.gif?" + timestamp + "'>");

	//$('.bubble_img').html("<img src='Media/eng/images/sp_bubble1.png'>");

	$('.pre_module_txt').addClass('pre_module_txt_ani animated');
	$('.bubble_img').addClass('bubble_img_ani animated');
	$('.quiz_para').addClass('quiz_para_ani animated');
	$('.lady_img').addClass('lady_img_ani animated');

	/*setTimeout(function(){
	 alert('--')
		  $('.bubble_img').show()
		 $('.bubble_img').html("<img src='Media/eng/images/sp_bubble1.gif?" + timestamp + "'>");
	},3000)*/
    $('.bubble_imggif').hide()
	playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]=function(){
		if(currehntTim>=3){
		playPauseCounter++
			if(playPauseCounter==5){
				$('.bubble_imggif').show()
			}
		}
	}

    playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);
}



	
	
function make010103_01(template, topicData, USERSTATE) {

    $(".template-container .content").html(template);
  disableMyPrevButton() 

	/*$('.how_txt').addClass('model_fadeIn2 animated');
	$('.diagnose_mod').addClass('model_fadeIn2 animated');
	$('.assess_mod').addClass('model_fadeIn2 animated');
	$('.provide_mod').addClass('model_fadeIn2 animated');
	$('.evaluate_mod').addClass('model_fadeIn2 animated');*/
	$('.summaze_txt').addClass('flo_right animated');
	
	var timestamp = new Date().getTime();
	$('.arrow_animation').html("<img src='Media/eng/images/arrow_animation.gif?" + timestamp + "'>");
	
	$('.arrow_point1,.arrow_point2,.arrow_point3').addClass('arrow_pointer animated');
	
	if(relayClick){
		loadClickAudio('Media/eng/audio/mod_3_screen_1')
		$('.pages3_bg_01').show();
		$('.mainDiv_summary').hide();
		relayClick = false;
	}else{
		$('#main-header').hide();
		$('.footer-wrap').hide();
		$('.content').css('background','transparent');
		
		$('.middle-container').css('border-left','1px solid #979797');
		$('.middle-container').css('border-right','1px solid #979797');
		loadClickAudio('Media/eng/audio/Intro');
	}
	
	
	
	$('.clickMain_3_01').bind('click', function () {
		$('#main-header').show();
		$('.footer-wrap').show();
		$('.content').css('background','#fef8ea');
		
		$('.middle-container').css('border-left','1px solid #fff');
		$('.middle-container').css('border-right','1px solid #fff');
		loadClickAudio('Media/eng/audio/mod_3_screen_1')
		
			   $('.pages3_bg_01').show();
		   $('.mainDiv_summary').hide();
	 });
	
	
	/*setTimeout(function(){
	$(".arrow_animation").show();
	},21000)*/

		
		playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]=function(){
		if(currehntTim>=3){
		playPauseCounter++
			if(playPauseCounter==21){
				$(".arrow_animation").show();
			}
		}
	}

    playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);
	}


	
function make010103_02(template, topicData , USERSTATE) {

    $(".template-container .content").html(template);

    $('.view_txts').html(topicData.content.Data.view_txts);
	
	$('.a_fade1_103_02,.a_fade2_103_02,.a_fade3_103_02').addClass('arrow_pointer animated');
	$('.view_txts').addClass('flo_right animated');
	
	/*$('.view_list_bg').addClass('view_fadeIn4 animated');
	$('.a_list1').addClass('list_right3 animated');
	$('.a_list2').addClass('list_right4 animated');
	$('.a_list3').addClass('list_right5 animated');
	$('.a_list4').addClass('list_right6 animated');
	$('.a_list5').addClass('list_right7 animated');
	$('.a_list6').addClass('list_right8 animated');*/
	$('.provide_mod').addClass('model_fadeIn2 animated');


				 $('.assess_gra_103_02').css('cursor','pointer');
		$('.diagnose_gra_103_02').css('cursor','pointer');
		$('.provide_gra_103_02').css('cursor','pointer');
		$('.evaluate_gra_103_02').css('cursor','pointer');
			

	$('.close_tabs_103_02').bind('click', function () {
	        $('.pages3_bg_02').show();
			 $('.R_Popup').hide();
			 $('.G_Popup').hide();
			 $('.P_Popup').hide();
			 $('.B_Popup').hide();
			 $('.close_tabs_103_02').hide();

			 $('.arrow_pointer ').removeClass('animated')
	    });
		
		$(".close_tabs_103_02").mouseover(function(){
			$('.close_tabs_txt_103_02').show();
		});	
	
		$(".close_tabs_103_02").mouseout(function(){
			$('.close_tabs_txt_103_02').hide();
		});
		

		
	$('.assess_gra_103_02').bind('click', function () {
		  clearAudio()
	       $('.R_Popup').show();
			 $('.G_Popup').hide();
			 $('.P_Popup').hide();
			 $('.B_Popup').hide();
		   $('.close_tabs_103_02').show();
		   $('.pages3_bg_02').hide();
		   chkComp[0] = 1
      chkCompletion()
	
	    });
	$('.diagnose_gra_103_02').bind('click', function () {
		clearAudio()
	       $('.G_Popup').show();
		   $('.R_Popup').hide();
			 $('.P_Popup').hide();
			 $('.B_Popup').hide();
		   $('.close_tabs_103_02').show();
		   $('.pages3_bg_02').hide();
		   chkComp[1] = 1
      chkCompletion()
	
	    });
		
		$('.provide_gra_103_02').bind('click', function () {
			clearAudio()
	       $('.G_Popup').hide();
		   $('.R_Popup').hide();
		   $('.P_Popup').show();
		   $('.B_Popup').hide();
		   $('.close_tabs_103_02').show();
		   $('.pages3_bg_02').hide();
		   
	chkComp[2] = 1
      chkCompletion()
	    });
		
		$('.evaluate_gra_103_02').bind('click', function () {
			clearAudio()
	       $('.G_Popup').hide();
		   $('.R_Popup').hide();
		   $('.P_Popup').hide();
		   $('.B_Popup').show();
		   $('.close_tabs_103_02').show();
		   $('.pages3_bg_02').hide();
		   
	chkComp[3] = 1
      chkCompletion()
	    });

	
	$('.arrow_p1,.arrow_p2,.arrow_p3').addClass('arrow_pointer_bounce animated');

		var chkComp = new Array()
          chkComp[0] = 0
          chkComp[1] = 0
		  chkComp[2] = 0
		  chkComp[3] = 0

          function chkCompletion() {
              if (chkComp[0] == 1 && chkComp[1] == 1 && chkComp[2] == 1 && chkComp[3] == 1) {
				  $(".hover_tooltip").fadeIn()
				  enableMyNextButton()
              }
		  }
	}	
	
	
function make010103_03(template, topicData) {

    $(".template-container .content").html(template);

	$('.intro_txt').addClass('intro_txt_ani animated');
	$('.module_para').addClass('module_para_ani animated');
	$('.congrate_img_bg').addClass('cong_fadeIn animated');
	$('.lady_graphics,.quiz_title,.post_title').addClass('cong_fadeIn5 animated');
	$('.green_patch_bg').addClass('cong_fadeIn8 animated');
	$('.red1_graphics').addClass('cong_fadeIn3 animated')
	$('.arr1_graphics').addClass('a_pointer_bounce animated');
		
	}	
	/*------------CYK------------*/
function makeMCQWithScenarios(template, topicData) {

	$(".template-container .content").html("<div id='container' class='clearfix'></div>");
    $(".template-container .content #container").css("background",topicData.background[0]._cdata);

	$('.playAnimation').hide();
	 $('.playAnimation').css('display','none');  
    if(topicData.background[0]._repeat == "no") {
    }
      $(".template-container .content #container").html(template);
	var container = $(".template-container .content #container");

	makeMCQWith3Scenarios_new2(container.find('.sectionSecond'),topicData.content[0].secondSection[0]);	
	
	$('#question-0').html('<img src="Media/eng/images/cyk_correct.png">')
	$('#question-1').html('<img src="Media/eng/images/cyk_incorrect.png">')

 
	
    //$('.feedback-container').find('.rfeedbackContent').html("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
    if(is_touch_device()){
         $('label').click(function() {
             $(this).siblings('input').click();
         });
     }

}


function makeMCQWith3Scenarios_new2(template,topicData){	
		var container=$(".template-container .content #container .sectionSecond ");
		var correctAudio
		var incorrectAudio
		var radioStr
		var radioArr= new Array()
		correctAudio=topicData.content[0].audioCorrect[0]._cdata
		incorrectAudio=topicData.content[0].audioinCorrect[0]._cdata
	
		if(topicData.content[0].Scenarios!=undefined){
			var scenario=topicData.content[0].Scenarios[0].Scenario;
			if(scenario!=undefined){
				var text='';
				container.find('.medium-9').find('.right-margin-zero').html('');
				$.each(scenario,function(index){
					
				
				text+='<div class="col-md-12"><p class="que">'+scenario[index].information1[0]._cdata+'</p>\
					<p class="content_Text">'+scenario[index].information[0]._cdata+'</p>\
					</div>';			
				})
				container.find('.medium-9').find('.right-margin-zero').html(text);
				container.find('.medium-9').find('.right-margin-zero').find('img').load(function(){
					if($(window).width()>800){
						var a=$('.medium-4').width()-container.find('.medium-9').find('.right-margin-zero').find('img').width()-20;
						container.find('.medium-9').find('.right-margin-zero').find('img').css('float','left');
					}else{
						container.find('.medium-9').find('.right-margin-zero').find('.content_Text').css('float','left').css('width','auto');
						container.find('.medium-9').find('.right-margin-zero').find('img').css('float','none');
					}
				})
			}
		}
		$('.RightImage').attr('src',topicData.image[0]._text).attr('style',topicData.image[0]._style);
		if(topicData.question[0]._style!=""||topicData.question[0]._style!=undefined){
			container.find('.content-background').attr('style',topicData.question[0]._style);
		}
		//container.find('.content-background').find('p').attr('style',topicData.question[0].questionText[0]._style).html(topicData.question[0].questionText[0]._cdata);
		container.find('.medium-3').find('.row').find('div').eq(0).html('');
		if(topicData.question[0].questionHeader!=undefined){
			var	element='<div class="medium-12 columns" style='+topicData.question[0].questionHeader[0]._style+'>\
				'+topicData.question[0].questionHeader[0]._cdata+'\
				</div>';
				container.find('.medium-3').find('.row').find('div').eq(0).append(element);
		}
		container.find('.content-background').find('div').eq(1).attr('style',topicData.question[0].options[0]._style);
		$('.RightImage none-img').attr('src')
		var val=topicData.question[0].options[0].value
		var type='';
		if(val!=undefined){
			var a=''
			type=topicData.question[0].options[0]._type
			var inptype='';
			if(type=='mcms')
				inptype='checkbox'
			else if(type=='mcss')
				inptype='radio'
			$.each(val,function(index){
				radioArr[index]=0
					
				a+='<div class="form-group" id="question_style'+index+'"><div class="tickmark" id="question-'+index+'" style="display:none;"></div><label for="mcq-option-'+index+'" class="lblStyle col-md-10"><input type="'+inptype+'" class="option checkbox optionDisable" name="mcq" id="mcq-option-'+index+'" value="'+val[index].optionValue[0]._cdata+'"/>'+val[index].optionDisplay[0]._cdata+'</label></div>';
				
			})
			container.find('.content-background').find('div').eq(1).html(a);
		}
		container.find('.content-background').find('.btnSubmit').attr('style',topicData.question[0].submitButton[0]._style).html(topicData.question[0].submitButton[0]._cdata)
		var correctanswer=topicData.question[0].correctAnswer[0]._cdata.split(',');
					
		$('.option').bind('click',function(){
        //debugger;
			if(type=='mcms'){
				if($(this).hasClass('check')){								   
					$(this).removeClass('check');
				var thisID=this.id
				radioArr[thisID.substr(+11)]=0
				//alert(radioArr)
				}else{
					$(this).addClass('check');
					var thisID=this.id
				radioArr[thisID.substr(+11)]=1
				//alert(radioArr)
				}				
			}else if(type=='mcss'){
				/*if($(this).hasClass('check')){								   
					$(this).removeClass('check');
					var thisID=this.id
					radioArr[thisID.substr(+11)]=0
					//alert(radioArr)
				}else{*/
					$(this).addClass('check');
					var thisID=this.id
					radioArr[thisID.substr(+11)]=1;
					var no = radioArr.length-1;
					var arrayNo = thisID.substr(+11);
					for(var i = 0;i<= no;i++){
						if(i != parseInt(arrayNo)){
							radioArr[i]=0;
						}
					}
				//}
			}
		})
		$('.btnSubmitClickMe').bind('click',function(){
			$('.RightImageContainer2').show();
		})
		var correctOptions=topicData.feedback[0].feedbackCorrectContent[0]._cdata;
		var wrongOptions=topicData.feedback[0].feedbackIncorrectContent[0]._cdata;
		var partiallyCorrectOptions=topicData.feedback[0].feedbackPartialCorrectContent[0]._cdata;
		 $('.RightImageContainer2').hide();
		if(globalcourseStructure.course.module[USERSTATE.module].topic[USERSTATE.topic].screen[USERSTATE.screen].interactiveLocknext=="true")
			setTimeout(function(){
				$('.nav_style #next').addClass('disableNavigation');
				$('.nav_style #next').find('a').css('cursor','default');
			},500)
		
		var ansCorrect = 0;
		var ansIncorr = 0;
		
		$('.btnSubmit').unbind('click').bind('click',function(){
            var optionFlag=true;
			$('.btnSubmit').css('cursor','default').css('opacity','0.5')
			$('.btnSubmit').unbind('click');
			$('.btnSubmit').prop("disabled",true);
			document.getElementsByClassName('btnSubmit').disabled = true;
            //$(".btnSubmit").click(function(){ return false; });
			
			$('.feedback-container').show('slow');
			var feedbackContent='';
			
			if(type=='mcss'){
				if(String(radioArr)==String(correctanswer)){           
					
					container.find('.feedback-container').find('.rfeedbackContent').html(correctOptions);
                    //$(".fd_cont, .feedback-container").addClass("fd_cont animated");
                    container.find('.feedback-container').find('.rfeedbackContent').removeClass('cyk_wrong_feedback').addClass('cyk_right_feedback');
                    $('.feedback_tickmark').show()
					$('.tickmark').show()
				
				}else{
				    //alert(correctanswer)
					//alert(radioArr)
					container.find('.feedback-container').find('.rfeedbackContent').html(wrongOptions);
                    //$(".fd_cont, .feedback-container").addClass("fd_cont animated");
                    $('.feedback_wrongtickmark').show()
					$('.tickmark').show()
                    container.find('.feedback-container').find('.rfeedbackContent').removeClass('cyk_right_feedback').addClass('cyk_wrong_feedback');
					container.find('.feedback-container').find('.rfeedbackContent').html(wrongOptions);
                    $(".fd_cont, .feedback-container").addClass("fd_cont animated");
                    container.find('.feedback-container').find('.rfeedbackContent').removeClass('cyk_right_feedback').addClass('cyk_wrong_feedback');
					$('.feedback_wrongtickmark').show()
					$('.tickmark').show()
						
				}
			//$('#next').addClass('enableNavigation').removeClass('disableNavigation')
			//$('#next').removeClass("blinker")
			//$('#next').addClass("blinker")
            $(".hover_tooltip").fadeIn()
           
			}

			if(type=='mcms'){
			ansCorrect = String(radioArr).match(/1/g).length;
			ansIncorr = correctanswer.length-ansCorrect;
			console.log("correct Activity6 - "+ansCorrect);
			console.log("INcorrect Activity6 - "+ansIncorr);
			//displayResult6(radioArr,correctanswer);
	
				if(String(radioArr)==String(correctanswer)){
					container.find('.feedback-container').find('.rfeedbackContent').html(correctOptions);
                    //$(".fd_cont, .feedback-container").addClass("fd_cont animated");
                    container.find('.feedback-container').find('.rfeedbackContent').removeClass('cyk_wrong_feedback').addClass('cyk_right_feedback');
					$('.feedback_tickmark').show()
					$('.tickmark').show()
				
				}else{
					container.find('.feedback-container').find('.rfeedbackContent').html(wrongOptions);
                    //$(".fd_cont, .feedback-container").addClass("fd_cont animated");
                    container.find('.feedback-container').find('.rfeedbackContent').removeClass('cyk_right_feedback').addClass('cyk_wrong_feedback');
					$('.feedback_wrongtickmark').show()
					$('.tickmark').show()
					
						
				}
                $(".hover_tooltip").fadeIn()
               
			    //$('#next').addClass('enableNavigation').removeClass('disableNavigation')
			    //$('#next').removeClass("blinker")
			    //$('#next').addClass("blinker")
			}
			 
			$('.optionDisable').attr('disabled','true');
			 $('.lblStyle, .lblStyle span').css('cursor','default');
			 
		})
		container.find('.feedback-container').find('p').html(topicData.feedback[0].feedbackTitle[0]._cdata);
	}



 function makeMCQWithSingleScenarioRadio(template,topicData){

	$('#main-header').hide();
	$('.footer-wrap').hide();
		  
	$('.LoaderAnimation').hide();
    $('.playAnimation').hide()
	$('.resumeAnimation').hide()
	$('.overlayBlackTempNew').hide();
	$(".template-container .content").html("<div id='container' style='padding:0;'></div>");

	$(".template-container .content #container").html(template);
	
	$('.main-container,.middle-container').css('border-radius','12px')
	$('.template-container,.content').css('background','rgba(0,0,0,0)')

	var container=$(".template-container .content #container");		
	$(".medium-4").find('.question-body').find('.tittle').html(topicData.content.title.text);
	if(topicData.content.AssessmentImg.text != ""){
		$(".medium-8").find('.question-options').find('.AssessmentImg').html(topicData.content.AssessmentImg.text);
		$(".options").addClass('optionwithImg');
		$('.AssessmentImgSection').show()
	}else{
		$(".options").removeClass('optionwithImg');
		$('.AssessmentImgSection').hide()
	}
	$(".medium-8").find('.question-options').find('.AssessmentImgLarge').html(topicData.content.AssessmentImgLarge.text);
	$(".medium-4").find('.question-body').find('.question-logo').attr('style',topicData.content.logo.style).html(topicData.content.logo.text);
	$(".medium-4").find('.question-body').find('.question-logo').next().attr('style',topicData.content.title.style).html(topicData.content.title.text);
	$(".medium-4").find('.question-body').find('.question').find('p').html(topicData.content.questionText.text);
	$(".tpad5p").find('.question-instruction-text2').html(topicData.content.questionHeader.text);
	
	$('.medium-3').find('.question-options').find('div').eq(2).html('');
	
	$('.AssessmentZoomin,.AssessmentImg').click(function(){		
		$('.AssessmentImgLarge').show()
	})
	$('.AssessmentImgLarge').click(function(){		
		$('.AssessmentImgLarge').hide()
	})
		var type=topicData.content.optionsData.optionsDetails[0].type
		
		var inptype='';
		if(type=='mcms')
			inptype='checkbox'
		else if(type=='mcss')
			inptype='radio'
		var val="";
		for(i=0;i<topicData.content.optionsData.option.length;i++){
			/*val+='<div class="question-option">\
				<div class="buttonQuiz optionsQuiz" ><input type="'+inptype+'" style="margin:2px -6px;" class="option" name="saq" value="'+topicData.content.optionsData.option[i].optionValue+'"/>\
				</div><div class="dataQuiz optionsQuiz"  class="rad_wth">'+topicData.content.optionsData.option[i].optionDisplay+'</div>\
			</div>';*/
		    val += '<div class="question-option">\
				<div class="buttonQuiz optionsQuiz" ><input type="' + inptype + '" style="margin:5px -6px;position:absolute;" class="option" name="saq" id="' + topicData.content.optionsData.option[i].optionValue + '" value="' + topicData.content.optionsData.option[i].optionValue + '"/>\
				<label for="' + topicData.content.optionsData.option[i].optionValue + '" class="dataQuiz optionsQuiz">' + topicData.content.optionsData.option[i].optionDisplay + '</label></div>\
			</div>';
		}
		$('.medium-8').find('.question-options').find('.options').html(val);
	
	$('.medium-8').find('.btnSubmit').attr('attr',topicData.content.submitButton.style).html(topicData.content.submitButton.text);
    $('.AssessmentbtnSubmitSection .btnSubmit').show()
	//$('.feedback-container').find('p').html(topicData.content.feedback.feedbackTitle);
	//$('.totalPoint').html($('.curr-page').html())
	$('.CountPoint').html(CorrectAnswerCount)

}
	
	
	/************** VIDEO FUNCTION START ****************/

function makeVideoTemplate(template, topicData) {

          hideLoader()
          if (is_touch_device()) {
              $('.playAnimation').show()
          }
          var repeatVid = false;
		 $(".template-container .content").html(template);
		  /*
          $(".template-container .content").html("<div id='container'></div>");
          $(".template-container .content #container").css("background", topicData.background[0]._cdata);
          $(".template-container .content #container").css("padding", "0");
          $(".template-container .content #container").html(template);
          $("#imageReplay").css("display", "none");
          $(".divImageReplay").css("display", "none");
          $(".template-container .content #container").find(".rpad5p1").find("h4").html(topicData.title[0]._cdata);
          $(".template-container .content #container").find(".textContainer").html(topicData.detailMessage[0]._cdata);

          var container = $(".template-container .content #container");

          var videoPath = topicData.video[0]._cdata;
          if (setBand == "low") {
              videoPath = videoPath.splice(16, 0, "Mobile/");
          }
          //alert(videoPath);


          var isChrome = /Chrome/.test(navigator.userAgent) && /Google Inc/.test(navigator.vendor);
          var isSafari = /Safari/.test(navigator.userAgent) && /Apple Computer/.test(navigator.vendor);

          //if (isChrome) alert("You are using Chrome!");
          //if (isSafari) alert("You are using Safari!");
		*/
		
		$(".divImageReplay").hide();
		
		 var videoPath = topicData.video;
          var tempheight;
          if (msieversion()) {
              if (is_touch_device()) {
                  tempheight = "auto";
              } else {
                  tempheight = "510px";
              }
          } else if (isSafari) {
              if ($(window).width() > 768) {
                  tempheight = "508px";
              } else {
                  tempheight = "408px";
              }
          } else {
              tempheight = "auto";
          }

          $("#jquery_jplayer_1").jPlayer({
              ready: function() {
                  $(this).jPlayer("setMedia", {
                      m4v: "" + videoPath
                  }).jPlayer("play")
              },
              loadstart: function(status) {
                  showLoader()
              },
              loadeddata: function(status) {
                  hideLoader()
                  $('.playAnimation').show()
              },
              timeupdate: function(event) {
                  if (event.jPlayer.status.currentTime > 0) {
                      hideLoader()
                  }
              },
              playing: function(status) {
                  $('.playAnimation').hide()
                  hideLoader();
                  $('.LoaderAnimation').css('display', 'none');
                  $('.overlayBlack').css('display', 'none');
                  $('.LoaderAnimation').hide()
                  $('.overlayBlack').hide()
              },
              seeking: function(status) {
                  $('.playAnimation').hide()
              },
              ended: function(status) {
                  $(".hover_tooltip").fadeIn()
                  if (!repeatVid) {
                      $("#imageReplay").css("display", "block");
                      $(".divImageReplay").css("display", "block");
                  }

                  enableMyNextButton()
                  $('.nav_style #next').addClass("border-pulsate")
                  $('.nav_style #next').css('cursor', 'pointer')

              },
              size: {
                  width: "100%",
                  height: tempheight
              },
              swfPath: "Scripts/libs/jplayer",
              solution: "html, flash",
              supplied: "m4v",
              smoothPlayBar: true,
              keyEnabled: true
          });


          $("#imageReplay").click(function() {
              $("#jquery_jplayer_1").jPlayer("play");
              $(this).hide();
              $(".divImageReplay").css("display", "none");
          });

          if (is_touch_device()) {
              if (isSafari) {
                  $(window).resize(function() {
                      if ($(window).width() > 768) {
                          $("#jquery_jplayer_1").css('height', '508px');
                          $("#jquery_jplayer_1").children().css('height', '508px');
                      } else {
                          $("#jquery_jplayer_1").css('height', '408px');
                          $("#jquery_jplayer_1").children().css('height', '408px');
                      }
                  });
              }
          }

          if (msieversion()) {
              $(window).resize(function() {
                  if ($(window).width() > 768) {
                      $("#jquery_jplayer_1").css('height', '508px');
                      $("#jquery_jplayer_1").children().css('height', '508px');
                  } else {
                      $("#jquery_jplayer_1").css('height', 'auto');
                      $("#jquery_jplayer_1").children().css('height', 'auto');
                  }
              });
          }

          $(window).resize(function() {
              $("#jquery_jplayer_1").css('height', 'auto');
              $("#jquery_jplayer_1").children().css('height', 'auto');
          });

          $("#jquery_jplayer_1").bind($.jPlayer.event.play, function(event) {
              $("#imageReplay").hide();
          });
          $(".jp-repeat").click(function() {
              repeatVid = true;
          });
          $(".jp-repeat-off").click(function() {
              repeatVid = false;
          });

          $('.playAnimation').unbind().bind('click', function() {
              $('.overlayBlackTempNew').hide();
              $("#jquery_jplayer_1").jPlayer('play', 0)
              $("#jquery_jplayer_2").jPlayer('play', 0);
              $('.playAnimation').hide()
              $('.overlayBlackTempNew').hide();
              $('.resumeAnimation').hide()
          });
		
      }
	  
	  /************* VIDEO FUNCTION END ****************/


function make010102_01(template, topicData, USERSTATE) {

    $(".template-container .content").html(template);
    disableMyPrevButton()


    $('.intro_txt').html(topicData.content.Data.intro_txt);
	$('.click_footer').html(topicData.content.Data.click_footer);

	$('.impText').html(topicData.content.Data.impText);
	$('.keyPointText').html(topicData.content.Data.keyPointText);
	
	$('.list_1').html(topicData.content.Data.list_1);
	$('.list_2').html(topicData.content.Data.list_2);
	$('.list_3').html(topicData.content.Data.list_3);
	$('.list_4').html(topicData.content.Data.list_4);
	$('.list_5').html(topicData.content.Data.list_5);

	$('.list_1').addClass('list_order1 animated');
	$('.list_2').addClass('list_order2 animated');
	$('.list_3').addClass('list_order3 animated');
	$('.list_4').addClass('list_order4 animated');
	$('.list_5').addClass('list_order5 animated');
	$('.video_img, .click_footer').addClass('video_img_ani animated');
	if(relayClick){
		loadClickAudio('Media/eng/audio/pwfc_pph_l01_s01_01')
		$('.pages_2_bg_1').show();
		$('.mainDiv_lesson').hide();
		relayClick = false;
	}else{
		$('#main-header').hide();
		$('.footer-wrap').hide();
		$('.content').css('background','transparent');
		
		$('.middle-container').css('border-left','1px solid #979797');
		$('.middle-container').css('border-right','1px solid #979797');
		loadClickAudio('Media/eng/audio/Intro');
	}
	$('.clickMain_2_01').bind('click', function () {
		$('#main-header').show();
		$('.footer-wrap').show();
		$('.content').css('background','#fef8ea');
		$('.middle-container').css('border-left','1px solid #fff');
		$('.middle-container').css('border-right','1px solid #fff');
		loadClickAudio('Media/eng/audio/pwfc_pph_l01_s01_01')
		$('.pages_2_bg_1').show();
		$('.mainDiv_lesson').hide();
	});
	$('.video_img, .click_footer').hide()
	
	/*setTimeout(function(){
	 $('.video_img, .click_footer').show()
	 $('.video_img, .click_footer').addClass('video_img_ani animated');
	},62000)*/
	
    playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]=function(){
		if(currehntTim>=3){
		playPauseCounter++
			if(playPauseCounter==62){
				$('.video_img, .click_footer').show()
	           $('.video_img, .click_footer').addClass('video_img_ani animated');
			}
		}
	}

    playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);
	
	$('.video_img').bind('click', function () {
	clearAudio();
		$('.video_temp_2_01').show();
		$('.close_tabs_2_01').show();
		$('.close_tabs_txt_2_01').show();
		$('.pages_2_bg_1').hide();
		$('.hover_tooltip').hide();
		$('video')[0].play();
		$('*').removeClass('animated')
	});
	$('.close_tabs_2_01').bind('click', function () {
		$('video')[0].pause();
		$('.video_temp_2_01').hide();
		$('.close_tabs_2_01').hide();
		$('.close_tabs_txt_2_01').hide();
		$('.pages_2_bg_1').show();

		$(".hover_tooltip").fadeIn()
       enableMyNextButton()
	});
	
	$('.close_tabs_2_01').mouseover(function(){
	  $('.YesText').show()
	})
    $('.close_tabs_2_01').mouseout(function(){
	  $('.YesText').hide()
	})
		
	}

	function make010102_02(template, topicData, USERSTATE) {

    $(".template-container .content").html(template);

    $('.mod_txt').html(topicData.content.Data.mod_txt);

	$('.YellowBg1').html(topicData.content.Data.YellowBg1);
	$('.YellowBg2').html(topicData.content.Data.YellowBg2);
	$('.Atony').html(topicData.content.Data.Atony);
    $('.Placenta').html(topicData.content.Data.Placenta);
	

	$(".YellowBg1,.Atony").addClass('textual_fadeIn animated');
	$(".YellowBg2,.Placenta").addClass('textual_fadeIn1 animated');
	$('.arr_fade1,.arr_fade2,.arr_fade3').addClass('arr_bounce animated');
	
	
	/*setTimeout(function(){
	$('.pages_2_bg_acc_2').show();
	$('.pages_2_bg_acc').hide();
	},11000);*/

	playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]=function(){
		if(currehntTim>=3){
		playPauseCounter++
			if(playPauseCounter==9){
				$('.pages_2_bg_acc_2').show();
	            $('.pages_2_bg_acc').hide();
			}
		}
	}

    playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);
	
		
	}

	function make010102_03(template, topicData) {

    $(".template-container .content").html(template);
    $('.pphImg1').html(topicData.content.Data.pphImg1);
	$('.pphImg2').html(topicData.content.Data.pphImg2);
	$('.pphImg3').html(topicData.content.Data.pphImg3);
	$('.pphImg4').html(topicData.content.Data.pphImg4);
	$('.pphImg5').html(topicData.content.Data.pphImg5);

	$(".pphImg1").addClass('Img1Anim animated');
	$(".pphImg2").addClass('Img2Anim animated');
	$(".pphImg3").addClass('Img3Anim animated');
	$(".pphImg4").addClass('Img4Anim animated');
	$(".pphImg5").addClass('Img5Anim animated');
	
	}

	function make010102_04(template, topicData, USERSTATE) {

    $(".template-container .content").html(template);
    $('.mod_txt').html(topicData.content.Data.mod_txt);
	$('.NormalBleeding').html(topicData.content.Data.NormalBleeding);
	$('.ExcessiveBleeding').html(topicData.content.Data.ExcessiveBleeding);
	$('.BleedingImg').html(topicData.content.Data.BleedingImg);
	$('.Bleeding300Desc').html(topicData.content.Data.Bleeding300Desc);
	$('.Bleeding300Img').html(topicData.content.Data.Bleeding300Img);
	$('.Bleeding500Desc').html(topicData.content.Data.Bleeding500Desc);
	$('.Bleeding500Img').html(topicData.content.Data.Bleeding500Img);
	$('.UterusText').html(topicData.content.Data.UterusText);
	$('.OverviewText').html(topicData.content.Data.OverviewText);

	$(".BleedingImg").addClass('BleedingImgAnim animated');
	$(".Bleeding300").addClass('Bleeding300Anim animated');
	$(".Bleeding500").addClass('Bleeding500Anim animated');
	$(".ExcessiveBleeding").addClass('ExcessiveBleedingAnim animated');
	$(".UterusText").addClass('UterusTextAnim animated');
	$(".OverviewText").addClass('OverviewTextAnim animated');
    
	$(".BleedingSection").hide()
	playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]=function(){
		if(currehntTim>=3){
		playPauseCounter++
			if(playPauseCounter==45){
				$(".BleedingImg").hide()
		        $('.BleedingSection').fadeIn()
			}
		}
	}

    playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);

	$(".BleedingSection,.UterusText,.OverviewText").addClass('BleedingSectionAnim animated');
	}

	function make010102_05(template, topicData) {

    $(".template-container .content").html(template);

	$('.CauseImg1').html(topicData.content.Data.CauseImg1);
	$('.CauseDesc1').html(topicData.content.Data.CauseDesc1);
	$('.CauseImg2').html(topicData.content.Data.CauseImg2);
	$('.CauseDesc2').html(topicData.content.Data.CauseDesc2);
	$('.TraumaText1').html(topicData.content.Data.TraumaText1);
	$('.TraumaText2').html(topicData.content.Data.TraumaText2);
	$('.TraumaText3').html(topicData.content.Data.TraumaText3);
	$('.ThrombinText1').html(topicData.content.Data.ThrombinText1);
	$('.ThrombinText2').html(topicData.content.Data.ThrombinText2);
	$('.ThrombinText3').html(topicData.content.Data.ThrombinText3);
	$('.ToneText').html(topicData.content.Data.ToneText);

	$(".CauseSection1").addClass('CauseSection1Anim animated');
	$(".CauseSection2").addClass('CauseSection2Anim animated');	
	$(".Trauma").addClass('TraumaAnim animated');
	$(".Thrombin").addClass('ThrombinAnim animated');
	$(".ToneText").addClass('ToneTextAnim animated');

	}

	function make010102_06(template, topicData, USERSTATE) {

    $(".template-container .content").html(template);

	$('.TreatmentYellowBg1').html(topicData.content.Data.TreatmentYellowBg1);
	$('.TreatmentYellowBg2 span').html(topicData.content.Data.TreatmentYellowBg2);
	$('.PreventImg1').html(topicData.content.Data.PreventImg1);
	$('.PreventImg2').html(topicData.content.Data.PreventImg2);
	$('.TreatmentYellowBg3 span').html(topicData.content.Data.TreatmentYellowBg3);
	$('.PreventImg3').html(topicData.content.Data.PreventImg3);
	$('.recomendattionText').html(topicData.content.Data.recomendattionText);
	$('.ClickVideoImg').html(topicData.content.Data.ClickVideoImg);
	$('.ClickVideoDesc').html(topicData.content.Data.ClickVideoDesc);
	$('.PreventImg1PopupImg').html(topicData.content.Data.PreventImg1PopupImg);
	$('.PreventImg2PopupImg').html(topicData.content.Data.PreventImg2PopupImg);
    $('.PreventImg3PopupImg').html(topicData.content.Data.PreventImg3PopupImg);
	$('.PreventImgPopupCloseText').html(topicData.content.Data.PreventImgPopupCloseText);
    
	$(".TreatmentYellowBg1").addClass('TreatmentYellowBg1Anim animated');
	$(".TreatmentYellowBg2").addClass('TreatmentYellowBg2Anim animated');
	$(".TreatmentYellowBg3").addClass('TreatmentYellowBg3Anim animated');
	$(".recomendattionText").addClass('recomendattionTextAnim animated');
	$(".ClickVideoTextSection").addClass('ClickVideoTextSectionAnim animated');
    
	$('.ClickVideoImg').bind('click', function () {
	clearAudio();
		$('.video_temp_2_01').show();
		$('.close_tabs_2_01').show();
		$('.close_tabs_txt_2_01').show();
		$('.whiteTreatmentBg').hide();
		$('.hover_tooltip').hide();
		$('video')[0].play();
		$('*').removeClass('animated')
	});
	$('.close_tabs_2_01').bind('click', function () {
		$('video')[0].pause();
		$('.video_temp_2_01').hide();
		$('.close_tabs_2_01').hide();
		$('.close_tabs_txt_2_01').hide();
		$('.whiteTreatmentBg').show();
	});
	
	$('.close_tabs_2_01').mouseover(function(){
	  $('.YesText').show()
	})
    $('.close_tabs_2_01').mouseout(function(){
	  $('.YesText').hide()
	})

    $('.PreventImg1').unbind('click')
	$('.PreventImg2').unbind('click')
	$('.PreventImg3').unbind('click')
	

   $('.PreventImgPopupClose,.PreventImgPopupCloseText').unbind('click').bind('click',function(){
		$('.PreventImgPopup').hide();
	})
	
	 $('.PreventImgPopupClose').mouseover(function(){
	    $('.PreventImgPopupCloseText').show();
	 })

	$('.PreventImgPopupClose').mouseout(function(){
	    $('.PreventImgPopupCloseText').hide();
		$('*').removeClass('animated');
	 })

    playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]=function(){
		if(currehntTim>=3){
		playPauseCounter++
			if(playPauseCounter==68){
			  $('.PreventImg1,.PreventImg2,.PreventImg3').css('cursor','pointer')

	$('.PreventImg1').unbind('click').bind('click',function(){
			$('.PreventImg1Popup').show();	  
	})

	$('.PreventImg2').unbind('click').bind('click',function(){
			$('.PreventImg2Popup').show();	  
	})

	$('.PreventImg3').unbind('click').bind('click',function(){
			$('.PreventImg3Popup').show();	  
	})	 
			}
		}
	}

    playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);

	}

	function make010102_07(template, topicData, USERSTATE) {

    $(".template-container .content").html(template);
    $('.BeginImg0').html(topicData.content.Data.BeginImg1);
	$('.BeginImg1').html(topicData.content.Data.BeginImg1);
	$('.BeginImg2').html(topicData.content.Data.BeginImg2);

	$(".BeginImg1").addClass('BeginImg1Anim animated');
	$(".BeginImg2").addClass('BeginImg2Anim animated');

	$('.BeginImg1,.BeginImg2').hide()
	
	playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]=function(){
		if(currehntTim>=3){
		playPauseCounter++
			if(playPauseCounter==10){
				$(".BeginImg0").hide()
		        $('.BeginImg1,.BeginImg2').fadeIn()
			}
		}
	}

    playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);

	}

	function make010102_08(template, topicData) {

    $(".template-container .content").html(template);

    $('.assess_head1').html(topicData.content.Data.assess_head1);
	$('.assess_red_bg').html(topicData.content.Data.assess_red_bg);
	
	$('.assess_red_bg').addClass('a_fadeIn animated');
	$('.a_fade1,.a_fade2,.a_fade3').addClass('a_bounce animated');

	}

	function make010102_09(template, topicData, USERSTATE) {

    $(".template-container .content").html(template);

	$('.actionImg').html(topicData.content.Data.actionImg);

	 $('.actionText').html(topicData.content.Data.actionText);
     $('.ActionTab1').html(topicData.content.Data.ActionTab1);
	 $('.ActionTab2').html(topicData.content.Data.ActionTab2);
	 $('.ActionTab3').html(topicData.content.Data.ActionTab3);
	 $('.ActionTab4').html(topicData.content.Data.ActionTab4);
	 $('.ActionTab5').html(topicData.content.Data.ActionTab5);
	 $('.ActionTab6').html(topicData.content.Data.ActionTab6);
	 $('.ActionTab7').html(topicData.content.Data.ActionTab7);
	 $('.ActionTick1').html(topicData.content.Data.ActionTick1);
	 $('.ActionTick2').html(topicData.content.Data.ActionTick2);
	 $('.ActionTick3').html(topicData.content.Data.ActionTick3);
	 $('.ActionTick4').html(topicData.content.Data.ActionTick4);
	 $('.ActionTick5').html(topicData.content.Data.ActionTick5);
	 $('.ActionTick6').html(topicData.content.Data.ActionTick6);
	 $('.ActionTick7').html(topicData.content.Data.ActionTick7);
	 $('.CallText').html(topicData.content.Data.CallText);
	 $('.actionImg2').html(topicData.content.Data.actionImg2);
	 
	 $(".ActionClickSection").addClass('ActionClickSectionanim animated');
	 $(".actionImg2").addClass('actionImg2Anim animated');

    $('.actionClick,.ActionTick,.CallText').hide()
	/*setTimeout(function(){
     	  $('.actionImg').hide()
		  $('.actionClick').fadeIn()
	},2000)*/

   enableMyNextButton()
   playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]=function(){
		if(currehntTim>=3){
		playPauseCounter++
			if(playPauseCounter==8){
				$('.actionImg').hide()
		        $('.actionClick').fadeIn()
			}
		}
	}

    playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);

	$(".ActionTab1").bind('click',function(){
		 clearAudio()
		 $('.ActionTick1').show()
         $(".ActionTab1").unbind('click')
		 $(".ActionTab1").css('cursor','default')
		
		 chkComp[0] = 1
         chkCompletion()
	})
	
   $(".ActionTab2").bind('click',function(){
	     clearAudio()
		 $('.ActionTick2').show()
		 $(".ActionTab2").unbind('click')
		 $(".ActionTab2").css('cursor','default')
		 
		 chkComp[1] = 1
         chkCompletion()
	})
	
    $(".ActionTab3").bind('click',function(){
		 clearAudio()
		 $('.ActionTick3').show()
		 $(".ActionTab3").unbind('click')
		 $(".ActionTab3").css('cursor','default')
		 
		 chkComp[2] = 1
         chkCompletion()
	})
	
    $(".ActionTab4").bind('click',function(){
		 clearAudio()
		 $('.ActionTick4').show()
		 $(".ActionTab4").unbind('click')
		 $(".ActionTab4").css('cursor','default')
		 
		 chkComp[3] = 1
         chkCompletion()
	})
	
    $(".ActionTab5").bind('click',function(){
		 clearAudio()
		 $('.ActionTick5').show()
		 $(".ActionTab5").unbind('click')
		 $(".ActionTab5").css('cursor','default')
		 
		 chkComp[4] = 1
         chkCompletion()
	})
	
    $(".ActionTab6").bind('click',function(){
		 clearAudio()
		 $('.ActionTick6').show()
		 $(".ActionTab6").unbind('click')
		 $(".ActionTab6").css('cursor','default')
		 
		 chkComp[5] = 1
         chkCompletion()
	})
	
   $(".ActionTab7").bind('click',function(){
	     clearAudio()
		 $('.ActionTick7').show()
		 $(".ActionTab7").unbind('click')
		 $(".ActionTab7").css('cursor','default')
		 
		 chkComp[6] = 1
         chkCompletion()
	})

	

	var chkComp = new Array()
	chkComp[0] = 0
	chkComp[1] = 0
	chkComp[2] = 0
	chkComp[3] = 0
	chkComp[4] = 0
	chkComp[5] = 0
	chkComp[6] = 0

	function chkCompletion() {
		if(chkComp[0] == 0 && chkComp[1] == 1 && chkComp[2] == 0 && chkComp[3] == 0 && chkComp[4] == 0 && chkComp[5] == 1 && chkComp[6] == 1){
			loadClickAudio("Media/eng/audio/pwfc_pph_l01_s09_03")
		}else if(chkComp[0] == 1 && (chkComp[1] == 0 || chkComp[1] == 1) && chkComp[2] == 1 && chkComp[3] == 1 && chkComp[4] == 1 && (chkComp[5] == 0 || chkComp[5] == 1) && (chkComp[6] == 0  || chkComp[6] == 1)){
		    $('.CallText').show()
			 $(".CallText").addClass('CallTextAnim animated');
			$(".ActionTab").unbind('click')
		    $(".ActionTab").css('cursor','default')
			loadClickAudio("Media/eng/audio/pwfc_pph_l01_s09_04")
			$(".hover_tooltip").fadeIn()
			$('.ActionTick').show()
		}else if (chkComp[0] == 1 && chkComp[1] == 1 && chkComp[2] == 1 && chkComp[3] == 1 && chkComp[4] == 1  && chkComp[5] == 1 && chkComp[6] == 1) {
			$('.CallText').show()
            $(".CallText").addClass('CallTextAnim animated');
			loadClickAudio("Media/eng/audio/pwfc_pph_l01_s09_02")
			$(".hover_tooltip").fadeIn()
		}
	}


	}



	function make010102_10(template, topicData, USERSTATE) {

    $(".template-container .content").html(template);
    
	$('.BubbleHeading').html(topicData.content.Data.BubbleHeading);
	$('.NurseImg').html(topicData.content.Data.NurseImg);
	$('.NurseBubble1').html(topicData.content.Data.NurseBubble1);
	$('.NurseBubble2').html(topicData.content.Data.NurseBubble2);
	$('.NurseBubble3').html(topicData.content.Data.NurseBubble3);
	$('.NurseBubble4').html(topicData.content.Data.NurseBubble4);
	$('.NotepadHeading').html(topicData.content.Data.NotepadHeading);
	$('.NotepadeText1').html(topicData.content.Data.NotepadeText1);
	$('.NotepadeText2').html(topicData.content.Data.NotepadeText2);
	$('.NotepadeText3').html(topicData.content.Data.NotepadeText3);
	$('.NotepadeText4').html(topicData.content.Data.NotepadeText4);
    
	$('.NurseBubble1,.NurseBubble2,.NurseBubble3,.NurseBubble4').hide()
	/*setTimeout(function(){
     	  $('.NurseBubble1').hide()
		  $('.NurseBubble2').fadeIn()
		  setTimeout(function(){
     	    $('.NurseBubble2').hide()
		    $('.NurseBubble3').fadeIn()
			setTimeout(function(){
     	      $('.NurseBubble3').hide()
		      $('.NurseBubble4').fadeIn()			
	        },6000)
	      },4000)
	},2000)*/
    
	playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]=function(){
		if(currehntTim>=3){
		playPauseCounter++
			if(playPauseCounter==5){
				$('.NurseBubble1').fadeIn()
			}else if(playPauseCounter==11){
				$('.NurseBubble1').hide()
		        $('.NurseBubble2').fadeIn()
			}else if(playPauseCounter==20){
				$('.NurseBubble2').hide()
		        $('.NurseBubble3').fadeIn()
			}else if(playPauseCounter==26){
				$('.NurseBubble3').hide()
		        $('.NurseBubble4').fadeIn()			
			}
		}
	}

    playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);


	}

	function make010102_11(template, topicData, USERSTATE) {

    $(".template-container .content").html(template);
    
	$('.PlacnetaImg').html(topicData.content.Data.PlacnetaImg);
	$('.BladderImg').html(topicData.content.Data.BladderImg);
	$('.BladderQue p').html(topicData.content.Data.BladderQue);
	$('.BladderQue span').html(topicData.content.Data.BladderNo);
	$('.BladderTick1').html(topicData.content.Data.BladderTick1);
	$('.BladderTick2').html(topicData.content.Data.BladderTick2);
	$('.BladderFeedback').html(topicData.content.Data.BladderFeedback);

	$(".BladderImg").addClass('BladderImganim animated');
    
	 $('.BladderQueSection,.BladderTick,.BladderFeedback').hide()
	
	 
	 /*setTimeout(function(){
	  $('.BladderWhiteBg').hide()
	  $('.BladderQueSection').fadeIn()			
	},6000)*/

	playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]=function(){
		if(currehntTim>=3){
		playPauseCounter++
			if(playPauseCounter==33){
				$('.BladderWhiteBg').hide()
	            $('.BladderQueSection').fadeIn()			
			}
		}
	}

    playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);
    
    $('.BladderBtn').css('opacity','0.5').css('cursor','default')
    $('.BladderBtn').unbind('click')
	
	$('.BladderBtn').unbind('mouseover')
    
   $('.BladderOption').bind('click', function () {
		 $('.BladderBtn').css('opacity','1').css('cursor','pointer');
		 $('.BladderBtn').bind('mouseover',function(){
				$('.BladderBtn').addClass('BladderBtnHover')									
		})
		 $('.BladderBtn').bind('mouseout',function(){
				$('.BladderBtn').removeClass('BladderBtnHover')									
		})
         $('.BladderBtn').bind('click', function () {
			 if($('.BladderOption1').is(':checked')){
				 $('.BladderTick1').show();
			 }else if($('.BladderOption2').is(':checked')){
				 $('.BladderTick').show();
			 }
			 $('.BladderBtn').css('opacity','0.5').css('cursor','default')
             $('.BladderBtn').unbind('click')
			 $('.BladderBtn').unbind('mouseover')
			 $('.BladderOptionLabel').css('cursor','default')
             $('.BladderOption').prop('disabled','true')
			 $('.BladderOption').unbind('click')
			 $('.BladderBtn').addClass('BladderBtnDisable')		
			 $('.BladderFeedback').fadeIn()
			 $(".hover_tooltip").fadeIn()
			enableMyNextButton()
			loadClickAudio("Media/eng/audio/pwfc_pph_l01_s11_02")
			
		});
	}); 
	}

	function make010102_12(template, topicData) {

    $(".template-container .content").html(template);

	$('.keyPointHeading').html(topicData.content.Data.keyPointHeading);
	$('.KeyPointYellowBg1 span').html(topicData.content.Data.KeyPointYellowBg1);
	$('.KeyPointYellowBg2 span').html(topicData.content.Data.KeyPointYellowBg2);
	$('.KeyPointYellowBg3 span').html(topicData.content.Data.KeyPointYellowBg3);
	$('.KeyPointYellowBg4 span').html(topicData.content.Data.KeyPointYellowBg4);
	$('.KeyPointImg1').html(topicData.content.Data.KeyPointImg1);
	$('.KeyPointImg2').html(topicData.content.Data.KeyPointImg2);
	$('.KeyPointImg3').html(topicData.content.Data.KeyPointImg3);
	$('.KeyPointImg4').html(topicData.content.Data.KeyPointImg4);

	$(".KeyPointYellowBg1").addClass('KeyPoint1Anim animated');
	$(".KeyPointYellowBg2").addClass('KeyPoint2Anim animated');
	$(".KeyPointYellowBg3").addClass('KeyPoint3Anim animated');
	$(".KeyPointYellowBg4").addClass('KeyPoint4Anim animated');

	}

	function make010102_13(template, topicData) {

    $(".template-container .content").html(template);
    $('.a_fade1_102_19,.a_fade2_102_19,.a_fade3_102_19').addClass('arrow_pointer animated');
		$('.bottamcon_102_27').addClass('flo_right animated');
		$('.assess_green_bg_102_19').addClass('model_fadeIn2 animated');

		
		
		$('.assess_gra_102_19').bind('click', function () {
	       $('.assess_red_bg_102_19').show();
		   $('.close_tabs_102_19').show();
		   clearAudio()
		   $(".hover_tooltip").show()
	    });
		
		$('.close_tabs_102_19').bind('click', function () {
	       $('.assess_red_bg_102_19').hide();
		    $('.close_tabs_102_19').hide();
	    });
		
		$(".close_tabs_102_19").mouseover(function(){
		$('.close_tabs_txt_102_19').show();
	});	
	
	$(".close_tabs_102_19").mouseout(function(){
		$('.close_tabs_txt_102_19').hide();
	});
	}

	function make010102_14(template, topicData, USERSTATE) {

    $(".template-container .content").html(template);
    
	$('.BubbleHeading').html(topicData.content.Data.BubbleHeading);
	$('.NurseImg').html(topicData.content.Data.NurseImg);
	$('.NurseBubble1').html(topicData.content.Data.NurseBubble1);
	$('.NurseBubble2').html(topicData.content.Data.NurseBubble2);
	$('.NurseBubble3').html(topicData.content.Data.NurseBubble3);
	$('.NurseBubble4').html(topicData.content.Data.NurseBubble4);
	$('.NotepadHeading').html(topicData.content.Data.NotepadHeading);
	$('.NotepadeText1').html(topicData.content.Data.NotepadeText1);
	$('.NotepadeText2').html(topicData.content.Data.NotepadeText2);
	$('.NotepadeText3').html(topicData.content.Data.NotepadeText3);
	$('.NotepadeText4').html(topicData.content.Data.NotepadeText4);
	$('.NurseImg2').html(topicData.content.Data.NurseImg2);
    
	$('.NurseBubble1,.NurseBubble2,.NurseBubble3,.NurseBubble4,.NurseImg2').hide()
	
	/*setTimeout(function(){
     	  $('.NurseBubble1').hide()
		  $('.NurseBubble2,.NurseImg2').fadeIn()
		  setTimeout(function(){
     	    $('.NurseBubble2,.NurseImg2').hide()
		    $('.NurseBubble3').fadeIn()
			setTimeout(function(){
     	      $('.NurseBubble3').hide()
		      $('.NurseBubble4').fadeIn()			
	        },6000)
	      },4000)
	},2000)*/

    playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]=function(){
		if(currehntTim>=3){
		playPauseCounter++
			if(playPauseCounter==20){
				$('.NurseBubble1').fadeIn()
			}else if(playPauseCounter==37){
				$('.NurseBubble1').hide()
		        $('.NurseBubble2,.NurseImg2').fadeIn()
			}else if(playPauseCounter==44){
				$('.NurseBubble2,.NurseImg2').hide()
		        $('.NurseBubble3').fadeIn()
			}else if(playPauseCounter==61){
				$('.NurseBubble3').hide()
		        $('.NurseBubble4').fadeIn()			
			}
		}
	}

    playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);

	}

	function make010102_15(template, topicData) {

    $(".template-container .content").html(template);
    $('.BladderQue p').html(topicData.content.Data.BladderQue);
	$('.BladderQue span').html(topicData.content.Data.BladderNo);
	$('.BladderTick1').html(topicData.content.Data.BladderTick1);
	$('.BladderTick2').html(topicData.content.Data.BladderTick2);
	$('.BladderTick3').html(topicData.content.Data.BladderTick3);
	$('.BladderFeedback').html(topicData.content.Data.BladderFeedback);

	$(".PlacnetaImg").addClass('PlacnetaImganim animated');
	$(".BladderImg").addClass('BladderImganim animated');
    
	 $('.BladderTick,.BladderFeedback').hide()
    
    $('.BladderBtn').css('opacity','0.5').css('cursor','default')
    $('.BladderBtn').unbind('click')
    
   $('.BladderOption').bind('click', function () {
		 $('.BladderBtn').css('opacity','1').css('cursor','pointer');
		 $('.BladderBtn').bind('mouseover',function(){
				$('.BladderBtn').addClass('BladderBtnHover')									
		})
		 $('.BladderBtn').bind('mouseout',function(){
				$('.BladderBtn').removeClass('BladderBtnHover')									
		})
         $('.BladderBtn').bind('click', function () {
			 if($('.BladderOption1').is(':checked')){
				 $('.BladderTick1,.BladderTick3').show();
			 }else if($('.BladderOption2').is(':checked')){
				 $('.BladderTick2,.BladderTick3').show();
			 } else if($('.BladderOption3').is(':checked')){
				 $('.BladderTick3').show();
			 }
			 $('.BladderBtn').css('opacity','0.5').css('cursor','default')
             $('.BladderBtn').unbind('click')
			 $('.BladderOptionLabel').css('cursor','default')
             $('.BladderOption').prop('disabled','true')
			 $('.BladderBtn').addClass('BladderBtnDisable')	
			 $('.BladderOption').unbind('click')
			 $('.BladderFeedback').fadeIn()
			 $(".hover_tooltip").fadeIn()
			enableMyNextButton()
			loadClickAudio("Media/eng/audio/pwfc_pph_l01_s15_01")
		});
	}); 
	}

	function make010102_16(template, topicData) {

    $(".template-container .content").html(template);
    $('.BladderQue p').html(topicData.content.Data.BladderQue);
	$('.BladderQue span').html(topicData.content.Data.BladderNo);
	$('.BladderTick1').html(topicData.content.Data.BladderTick1);
	$('.BladderTick2').html(topicData.content.Data.BladderTick2);
	$('.VitalFeedback').html(topicData.content.Data.BladderFeedback);
	$('.VitalFeedbackHeading').html(topicData.content.Data.VitalFeedbackHeading);
	$('.VitalFeedback2').html(topicData.content.Data.VitalFeedback2);

	$(".PlacnetaImg").addClass('PlacnetaImganim animated');
	$(".BladderImg").addClass('BladderImganim animated');
    
	 $('.BladderTick,.MCQFeedbackSection').hide()
    
    $('.BladderBtn').css('opacity','0.5').css('cursor','default')
	$('.BladderBtn').bind('mouseover',function(){
				$('.BladderBtn').addClass('BladderBtnHover')									
		})
		 $('.BladderBtn').bind('mouseout',function(){
				$('.BladderBtn').removeClass('BladderBtnHover')									
		})
    $('.BladderBtn').unbind('click')
    
   $('.BladderOption').bind('click', function () {
		 $('.BladderBtn').css('opacity','1').css('cursor','pointer');
         $('.BladderBtn').bind('click', function () {
			 if($('.BladderOption1').is(':checked')){
				 $('.BladderTick').show();
			 }else if($('.BladderOption2').is(':checked')){
				 $('.BladderTick2').show();
			 } 
			 $('.BladderBtn').css('opacity','0.5').css('cursor','default')
             $('.BladderBtn').unbind('click')
			 $('.BladderOptionLabel').css('cursor','default')
             $('.BladderOption').prop('disabled','true')
			 $('.BladderOption').unbind('click')
			 $('.BladderBtn').addClass('BladderBtnDisable')	
			 $('.MCQFeedbackSection').fadeIn()
			 $(".hover_tooltip").fadeIn()
			enableMyNextButton()
			loadClickAudio("Media/eng/audio/pwfc_pph_l01_s16_01")
		});
	}); 
	}

	function make010102_17(template, topicData) {

    $(".template-container .content").html(template);

	$('.keyActiontitle').html(topicData.content.Data.keyActiontitle);
	$('.KeyAction1Heading').html(topicData.content.Data.KeyAction1Heading);
	$('.KeyAction1Img').html(topicData.content.Data.KeyAction1Img);
	$('.KeyAction2Heading').html(topicData.content.Data.KeyAction2Heading);
	$('.KeyAction2Img').html(topicData.content.Data.KeyAction2Img);
	$('.KeyAction3Heading').html(topicData.content.Data.KeyAction3Heading);
	$('.KeyAction3Img').html(topicData.content.Data.KeyAction3Img);
	$('.KeyAction4Heading').html(topicData.content.Data.KeyAction4Heading);
	$('.KeyAction4Img').html(topicData.content.Data.KeyAction4Img);

	$(".KeyAction1Section").addClass('KeyAction1Anim animated');
	$(".KeyAction2Section").addClass('KeyAction2Anim animated');
	$(".KeyAction3Section").addClass('KeyAction3Anim animated');
	$(".KeyAction4Section").addClass('KeyAction4Anim animated');

	}

	function make010102_18(template, topicData) {

    $(".template-container .content").html(template);

		var chkComp = new Array()
          chkComp[0] = 0
          chkComp[1] = 0

          function chkCompletion() {
              if (chkComp[0] == 1 && chkComp[1] == 1) {
				  $(".hover_tooltip").fadeIn()
					  enableMyNextButton()
              }
		  }
			  
		
		$('.a_fade1_102_27,.a_fade2_102_27,.a_fade3_102_27').addClass('arrow_pointer animated');
		$('.bottamcon_102_27').addClass('flo_right animated');
		$('.assess_parpal_bg_102_27').addClass('model_fadeIn2 animated');
		
		$('.assess_gra_102_27').bind('click', function () {
	       $('.assess_red_bg_102_27').show();
		   $('.close_tabs_102_27').show();
		   $('.assess_green_bg_102_27').hide();
		   $('.close_tabs_102_27_1').hide();
          clearAudio()
		  chkComp[0] = 1
        chkCompletion()
	    });
		
		$('.close_tabs_102_27').bind('click', function () {
	        $('.assess_red_bg_102_27').hide();
		    $('.close_tabs_102_27').hide();
	    });
		
		$(".close_tabs_102_27").mouseover(function(){
			$('.close_tabs_txt_102_27').show();
		});	
	
		$(".close_tabs_102_27").mouseout(function(){
			$('.close_tabs_txt_102_27').hide();
		});
		
		$('.diagnose_gra_102_27').bind('click', function () {
	       $('.assess_green_bg_102_27').show();
		   $('.close_tabs_102_27_1').show();
		   $('.assess_red_bg_102_27').hide();
		   $('.close_tabs_102_27').hide();
		  clearAudio()
		  chkComp[1] = 1
        chkCompletion()
	    });
		
		$('.close_tabs_102_27_1').bind('click', function () {
	        $('.assess_green_bg_102_27').hide();
		    $('.close_tabs_102_27_1').hide();
	    });
		
		$(".close_tabs_102_27_1").mouseover(function(){
			$('.close_tabs_txt_102_27_1').show();
		});	
	
		$(".close_tabs_102_27_1").mouseout(function(){
			$('.close_tabs_txt_102_27_1').hide();
		});

	}


	function make010102_19(template, topicData) {

    $(".template-container .content").html(template);

	$('.PricipalHeading').html(topicData.content.Data.PricipalHeading);
	$('.Principal1').html(topicData.content.Data.Principal1);
	$('.Principal2').html(topicData.content.Data.Principal2);
	$('.Principal3').html(topicData.content.Data.Principal3);
	$('.Principal4').html(topicData.content.Data.Principal4);
	$('.PrincipalImg').html(topicData.content.Data.PrincipalImg);
	$('.PrincipalText').html(topicData.content.Data.PrincipalText);
	$('.EmergencyText').html(topicData.content.Data.EmergencyText);

	$(".Principal1").addClass('KeyPrincipal1Anim animated');
	$(".Principal2").addClass('KeyPrincipal2Anim animated');
	$(".Principal3").addClass('KeyPrincipal3Anim animated');
	$(".Principal4").addClass('KeyPrincipal4Anim animated');
	$(".PrincipalImg,.EmergencyText").addClass('KeyPrincipal5Anim animated');
	$(".PrincipalText").addClass('KeyPrincipal6Anim animated');

	}

	function make010102_20(template, topicData) {

    $(".template-container .content").html(template);

	$('.UpdatesHeading').html(topicData.content.Data.UpdatesHeading);
	$('.updates').html(topicData.content.Data.updates);
	$('.BirthText').html(topicData.content.Data.BirthText);
	$('.UpdateResourceText').html(topicData.content.Data.UpdateResourceText);
	$('.ClickVideoImg').html(topicData.content.Data.ClickVideoImg);
	$('.ClickVideoDesc').html(topicData.content.Data.ClickVideoDesc);

	$(".UpdatesHeading,.updates").addClass('Update1Anim animated');
	$(".BirthText").addClass('Update2Anim animated');
	$(".UpdateResourceText").addClass('Update3Anim animated');
	$(".ClickVideoTextSection").addClass('Update4Anim animated');
    
	$('.ClickVideoImg').bind('click', function () {
	clearAudio();
		$('.video_temp_2_01').show();
		$('.close_tabs_2_01').show();
		$('.close_tabs_txt_2_01').show();
		$('.updatesWhiteBg').hide();
		$('.hover_tooltip').hide();
		$('video')[0].play();
		$('*').removeClass('animated')
	});
	$('.close_tabs_2_01').bind('click', function () {
		$('video')[0].pause();
		$('.video_temp_2_01').hide();
		$('.close_tabs_2_01').hide();
		$('.close_tabs_txt_2_01').hide();
		$('.updatesWhiteBg').show();
	});
	
	$('.close_tabs_2_01').mouseover(function(){
	  $('.YesText').show()
	})
    $('.close_tabs_2_01').mouseout(function(){
	  $('.YesText').hide()
	})
	}

	function make010102_21(template, topicData) {

    $(".template-container .content").html(template);

	$('.KeyPointCykHeading').html(topicData.content.Data.KeyPointCykHeading);
	$('.KeyPointCykDesc').html(topicData.content.Data.KeyPointCykDesc);
	$('.KeyPointCykItext').html(topicData.content.Data.KeyPointCykItext);
	$('.KeyPointCykOption1').html(topicData.content.Data.KeyPointCykOption1);
	$('.KeyPointCykOption2').html(topicData.content.Data.KeyPointCykOption2);
	$('.KeyPointCykOption3').html(topicData.content.Data.KeyPointCykOption3);
	$('.KeyPointCykOption4').html(topicData.content.Data.KeyPointCykOption4);
	$('.KeyPointCykOption5').html(topicData.content.Data.KeyPointCykOption5);
	$('.KeyPointCykOption6').html(topicData.content.Data.KeyPointCykOption6);
	$('.KeyPointCykOption7').html(topicData.content.Data.KeyPointCykOption7);
	$('.KeyPointCykTick1').html(topicData.content.Data.KeyPointCykTick1);
	$('.KeyPointCykTick2').html(topicData.content.Data.KeyPointCykTick2);
	$('.KeyPointCykTick3').html(topicData.content.Data.KeyPointCykTick3);
	$('.KeyPointCykTick4').html(topicData.content.Data.KeyPointCykTick4);
	$('.KeyPointCykTick5').html(topicData.content.Data.KeyPointCykTick5);
	$('.KeyPointCykTick6').html(topicData.content.Data.KeyPointCykTick6);
	$('.KeyPointCykTick7').html(topicData.content.Data.KeyPointCykTick7);

	$(".KeyPointCykDesc").addClass('cyk1Anim animated');
	$(".KeyPointCykItext").addClass('cyk2Anim animated');
	$(".KeyPointCykSection").addClass('cyk3Anim animated');

	$('.KeyPointCykTick').hide();

	enableMyNextButton()

	$(".KeyPointCykOption1").bind('click',function(){
		loadClickAudio('Media/eng/audio/mod_2_21_1')
		 $('.KeyPointCykTick1').show()
         $(".KeyPointCykOption1").unbind('click')
		 $(".KeyPointCykOption1").css('cursor','default')
		
		 chkComp[0] = 1
         chkCompletion()
	})

	$(".KeyPointCykOption2").bind('click',function(){
	loadClickAudio('Media/eng/audio/mod_2_21_2')
		 $('.KeyPointCykTick2').show()
         $(".KeyPointCykOption2").unbind('click')
		 $(".KeyPointCykOption2").css('cursor','default')
		
		 chkComp[1] = 1
         chkCompletion()
	})
	
   $(".KeyPointCykOption3").bind('click',function(){
   loadClickAudio('Media/eng/audio/mod_2_21_3')
		 $('.KeyPointCykTick3').show()
         $(".KeyPointCykOption3").unbind('click')
		 $(".KeyPointCykOption3").css('cursor','default')
		
		 chkComp[2] = 1
         chkCompletion()
	})
	
   $(".KeyPointCykOption4").bind('click',function(){
   loadClickAudio('Media/eng/audio/mod_2_21_4')
		 $('.KeyPointCykTick4').show()
         $(".KeyPointCykOption4").unbind('click')
		 $(".KeyPointCykOption4").css('cursor','default')
		
		 chkComp[3] = 1
         chkCompletion()
	})

	$(".KeyPointCykOption5").bind('click',function(){
	loadClickAudio('Media/eng/audio/mod_2_21_5')
		 $('.KeyPointCykTick5').show()
         $(".KeyPointCykOption5").unbind('click')
		 $(".KeyPointCykOption5").css('cursor','default')
		
		 chkComp[4] = 1
         chkCompletion()
	})

	$(".KeyPointCykOption6").bind('click',function(){
	loadClickAudio('Media/eng/audio/mod_2_21_6')
		 $('.KeyPointCykTick6').show()
         $(".KeyPointCykOption6").unbind('click')
		 $(".KeyPointCykOption6").css('cursor','default')
		
		 chkComp[5] = 1
         chkCompletion()
	})

   $(".KeyPointCykOption7").bind('click',function(){
   loadClickAudio('Media/eng/audio/mod_2_21_7')
		 $('.KeyPointCykTick7').show()
         $(".KeyPointCykOption7").unbind('click')
		 $(".KeyPointCykOption7").css('cursor','default')
		
		 chkComp[6] = 1
         chkCompletion()
	})

	var chkComp = new Array()
	chkComp[0] = 0
	chkComp[1] = 0
	chkComp[2] = 0
	chkComp[3] = 0
	chkComp[4] = 0
	chkComp[5] = 0
	chkComp[6] = 0
	
   function chkCompletion() {
		if (chkComp[0] == 1 && chkComp[1] == 1 && chkComp[2] == 1 && chkComp[3] == 1 && chkComp[4] == 1  && chkComp[5] == 1 && chkComp[6] == 1) {
			$(".hover_tooltip").fadeIn()
		}
		if(chkComp[0] == 1 && chkComp[1] == 1 && chkComp[3] == 1 && chkComp[4] == 1){
			$(".KeyPointCykOption").unbind('click')
		    $(".KeyPointCykOption").css('cursor','default')
			$(".hover_tooltip").fadeIn()
			$('.KeyPointCykTick').show()
		}
	}

	}

	function make010102_22(template, topicData) {

    $(".template-container .content").html(template);
	$('.BladderQue p').html(topicData.content.Data.BladderQue);
	$('.BladderQue span').html(topicData.content.Data.BladderNo);
	$('.BladderTick1').html(topicData.content.Data.BladderTick1);
	$('.BladderTick2').html(topicData.content.Data.BladderTick2);
	$('.BladderTick3').html(topicData.content.Data.BladderTick3);
	$('.knowledgeChkText').html(topicData.content.Data.knowledgeChkText);

	$(".PlacnetaImg").addClass('PlacnetaImganim animated');
	$(".BladderImg").addClass('BladderImganim animated');
    
	 $('.BladderTick').hide()
    
    $('.BladderBtn').css('opacity','0.5').css('cursor','default')
    $('.BladderBtn').unbind('click')
	enableMyNextButton()
    
   $('.BladderOption').bind('click', function () {
		 $('.BladderBtn').css('opacity','1').css('cursor','pointer');
		 $('.BladderBtn').bind('mouseover',function(){
				$('.BladderBtn').addClass('BladderBtnHover')									
		})
		 $('.BladderBtn').bind('mouseout',function(){
				$('.BladderBtn').removeClass('BladderBtnHover')									
		})
         $('.BladderBtn').bind('click', function () {
			 if($('.BladderOption1').is(':checked')){
				 $('.BladderTick1,.BladderTick2').show();
			 }else if($('.BladderOption2').is(':checked')){
				 $('.BladderTick2').show();
			 } else if($('.BladderOption3').is(':checked')){
				 $('.BladderTick3,.BladderTick2').show();
			 }
			 $('.BladderBtn').css('opacity','0.5').css('cursor','default')
             $('.BladderBtn').unbind('click')
			 $('.BladderOptionLabel').css('cursor','default')
             $('.BladderOption').prop('disabled','true')
			 $('.BladderBtn').addClass('BladderBtnDisable')	
			 $('.BladderOption').unbind('click')
			 $(".hover_tooltip").fadeIn()
			enableMyNextButton()
		});
	}); 

	}

	function make010102_23(template, topicData) {

    $(".template-container .content").html(template);
	$('.BladderQue p').html(topicData.content.Data.BladderQue);
	$('.BladderQue span').html(topicData.content.Data.BladderNo);
	$('.BladderTick1').html(topicData.content.Data.BladderTick1);
	$('.BladderTick2').html(topicData.content.Data.BladderTick2);
	$('.BladderTick3').html(topicData.content.Data.BladderTick3);

	$(".PlacnetaImg").addClass('PlacnetaImganim animated');
	$(".BladderImg").addClass('BladderImganim animated');
    
	 $('.BladderTick').hide()
    
    $('.BladderBtn').css('opacity','0.5').css('cursor','default')
    $('.BladderBtn').unbind('click')
	enableMyNextButton()
    
   $('.BladderOption').bind('click', function () {
		 $('.BladderBtn').css('opacity','1').css('cursor','pointer');
		 $('.BladderBtn').bind('mouseover',function(){
				$('.BladderBtn').addClass('BladderBtnHover')									
		})
		 $('.BladderBtn').bind('mouseout',function(){
				$('.BladderBtn').removeClass('BladderBtnHover')									
		})
         $('.BladderBtn').bind('click', function () {
			 if($('.BladderOption1').is(':checked')){
				 $('.BladderTick1').show();
			 }else if($('.BladderOption2').is(':checked')){
				 $('.BladderTick2,.BladderTick1').show();
			 } else if($('.BladderOption3').is(':checked')){
				 $('.BladderTick3,.BladderTick1').show();
			 }
			 $('.BladderBtn').css('opacity','0.5').css('cursor','default')
             $('.BladderBtn').unbind('click')
			 $('.BladderOptionLabel').css('cursor','default')
			 $('.BladderBtn').addClass('BladderBtnDisable')	
             $('.BladderOption').prop('disabled','true')
			 $('.BladderOption').unbind('click')
			 $(".hover_tooltip").fadeIn()
			enableMyNextButton()
		});
	}); 

	}

	function make010102_24(template, topicData) {

    $(".template-container .content").html(template);

	$('.Compress1Img').html(topicData.content.Data.Compress1Img);
	$('.Compress2Img').html(topicData.content.Data.Compress2Img);
	$('.Compress1Title').html(topicData.content.Data.Compress2Title);
	$('.Compress2Title').html(topicData.content.Data.Compress1Title);

	$(".Compress1").addClass('compress1Anim animated');
	$(".Compress2").addClass('compress2Anim animated');

	}

	function make010102_25(template, topicData) {

    $(".template-container .content").html(template);

		var chkComp = new Array()
          chkComp[0] = 0
          chkComp[1] = 0
			chkComp[2] = 0

          function chkCompletion() {
              if (chkComp[0] == 1 && chkComp[1] == 1 && chkComp[2] == 1) {
				  $(".hover_tooltip").fadeIn()
					  enableMyNextButton()
              }
		  }
		
		$('.a_fade1_102_45,.a_fade2_102_45,.a_fade3_102_45').addClass('arrow_pointer animated');
		$('.bottamcon_102_45').addClass('bottamcon_102_45_ani animated');
		$('.assess_blue_bg_102_45').addClass('model_fadeIn2 animated');
		
		$('.assess_gra_102_45').bind('click', function () {
	       $('.assess_red_bg_102_45').show();
		   $('.assess_green_bg_102_45').hide();
		   $('.assess_parpal_bg_102_45').hide();
		    $('.close_tabs_102_45_1').hide();
		   $('.close_tabs_102_45').show();
		   $('.close_tabs_102_45_2').hide();

		    chkComp[0] = 1
        chkCompletion()
				clearAudio()
	    });
		
		$('.close_tabs_102_45').bind('click', function () {
	        $('.assess_red_bg_102_45').hide();
			 $('.close_tabs_102_45').hide();
	    });
		
		$(".close_tabs_102_45").mouseover(function(){
			$('.close_tabs_txt_102_45').show();
		});	
	
		$(".close_tabs_102_45").mouseout(function(){
			$('.close_tabs_txt_102_45').hide();
		});
		
		$('.diagnose_gra_102_45').bind('click', function () {
	       $('.assess_green_bg_102_45').show();
		   $('.assess_red_bg_102_45').hide();
		   $('.assess_parpal_bg_102_45').hide();
		    $('.close_tabs_102_45_1').show();
			$('.close_tabs_102_45').hide();
			$('.close_tabs_102_45_2').hide();
clearAudio()
			 chkComp[1] = 1
        chkCompletion()
	    });
		
		$('.close_tabs_102_45_1').bind('click', function () {
	        $('.assess_green_bg_102_45').hide();
		    $('.close_tabs_102_45_1').hide();
			
	    });
		
		$(".close_tabs_102_45_1").mouseover(function(){
			$('.close_tabs_txt_102_45_1').show();
		});	
	
		$(".close_tabs_102_45_1").mouseout(function(){
			$('.close_tabs_txt_102_45_1').hide();
		});
		
		$('.provide_gra_102_45').bind('click', function () {
	       $('.assess_parpal_bg_102_45').show();
		   $('.assess_red_bg_102_45').hide();
		   $('.assess_green_bg_102_45').hide();
			 $('.close_tabs_102_45').hide();
			 $('.close_tabs_102_45_1').hide();
			 $('.close_tabs_102_45_2').show();
clearAudio()
			  chkComp[2] = 1
        chkCompletion()
	    });
		
		$('.close_tabs_102_45_2').bind('click', function () {
	        $('.assess_parpal_bg_102_45').hide();
		    $('.close_tabs_102_45_2').hide();
	    });
		
		$(".close_tabs_102_45_2").mouseover(function(){
			$('.close_tabs_txt_102_45_2').show();
		});	
	
		$(".close_tabs_102_45_2").mouseout(function(){
			$('.close_tabs_txt_102_45_2').hide();
		});

	}


	function make010102_26(template, topicData) {

    $(".template-container .content").html(template);
    $('.BladderQue p').html(topicData.content.Data.BladderQue);
	$('.BladderQue span').html(topicData.content.Data.BladderNo);
	$('.BladderTick1').html(topicData.content.Data.BladderTick1);
	$('.BladderTick2').html(topicData.content.Data.BladderTick2);
	$('.BladderTick3').html(topicData.content.Data.BladderTick3);
	$('.BladderFeedbackcyk').html(topicData.content.Data.BladderFeedback);
	$('.NotepadHeading').html(topicData.content.Data.NotepadHeading);
	$('.NotepadeText1').html(topicData.content.Data.NotepadeText1);
	$('.NotepadeText2').html(topicData.content.Data.NotepadeText2);
	$('.NotepadeText3').html(topicData.content.Data.NotepadeText3);
	$('.NotepadeText4').html(topicData.content.Data.NotepadeText4);

	$(".PlacnetaImg").addClass('PlacnetaImganim animated');
	$(".BladderImg").addClass('BladderImganim animated');
    
	 $('.BladderTick,.BladderFeedbackcyk').hide()
    
    $('.BladderBtn').css('opacity','0.5').css('cursor','default')
    $('.BladderBtn').unbind('click')
	enableMyNextButton()
    
   $('.BladderOption').bind('click', function () {
		 $('.BladderBtn').css('opacity','1').css('cursor','pointer');
		  $('.BladderBtn').bind('mouseover',function(){
				$('.BladderBtn').addClass('BladderBtnHover')									
		})
		 $('.BladderBtn').bind('mouseout',function(){
				$('.BladderBtn').removeClass('BladderBtnHover')									
		})
         $('.BladderBtn').bind('click', function () {
		 	loadClickAudio('Media/eng/audio/mod_2_26_1')
			 if($('.BladderOption1').is(':checked')){
				 $('.BladderTick1,.BladderTick2').show();
			 }else if($('.BladderOption2').is(':checked')){
				 $('.BladderTick2').show();
			 } else if($('.BladderOption3').is(':checked')){
				 $('.BladderTick3,.BladderTick2').show();
			 }
			 $('.BladderBtn').css('opacity','0.5').css('cursor','default')
             $('.BladderBtn').unbind('click')
			 $('.BladderOptionLabel').css('cursor','default')
             $('.BladderOption').prop('disabled','true')
			 $('.BladderBtn').addClass('BladderBtnDisable')	
			 $('.BladderOption').unbind('click')
			 $('.BladderFeedbackcyk').fadeIn()
			 $(".hover_tooltip").fadeIn()
			enableMyNextButton()
		});
	}); 

	}


	function make010102_27(template, topicData) {

    $(".template-container .content").html(template);
    $('.BladderQue p').html(topicData.content.Data.BladderQue);
	$('.BladderQue span').html(topicData.content.Data.BladderNo);
	$('.BladderTick1').html(topicData.content.Data.BladderTick1);
	$('.BladderTick2').html(topicData.content.Data.BladderTick2);
	$('.BladderTick3').html(topicData.content.Data.BladderTick3);
	$('.BladderFeedbackcyk2').html(topicData.content.Data.BladderFeedback);
	$('.NotepadHeading').html(topicData.content.Data.NotepadHeading);
	$('.NotepadeText1').html(topicData.content.Data.NotepadeText1);
	$('.NotepadeText2').html(topicData.content.Data.NotepadeText2);
	$('.NotepadeText3').html(topicData.content.Data.NotepadeText3);
	$('.NotepadeText4').html(topicData.content.Data.NotepadeText4);
	$('.BladderFeedbackcykItext').html(topicData.content.Data.BladderFeedbackcykItext);

	$(".PlacnetaImg").addClass('PlacnetaImganim animated');
	$(".BladderImg").addClass('BladderImganim animated');
    
	 $('.BladderTick,.BladderFeedbackcyk2,.BladderFeedbackcykItext').hide()
    
    $('.BladderBtn').css('opacity','0.5').css('cursor','default')
    $('.BladderBtn').unbind('click')
	enableMyNextButton()
    
   $('.BladderOption').bind('click', function () {
		 $('.BladderBtn').css('opacity','1').css('cursor','pointer');
		  $('.BladderBtn').bind('mouseover',function(){
				$('.BladderBtn').addClass('BladderBtnHover')									
		})
		 $('.BladderBtn').bind('mouseout',function(){
				$('.BladderBtn').removeClass('BladderBtnHover')									
		})
         $('.BladderBtn').bind('click', function () {
		 	loadClickAudio('Media/eng/audio/mod_2_27_1')
			 if($('.BladderOption1').is(':checked')){
				 $('.BladderTick1,.BladderTick2').show();
			 }else if($('.BladderOption2').is(':checked')){
				 $('.BladderTick2').show();
			 } else if($('.BladderOption3').is(':checked')){
				 $('.BladderTick3,.BladderTick2').show();
			 }
			 $('.BladderBtn').css('opacity','0.5').css('cursor','default')
             $('.BladderBtn').unbind('click')
			 $('.BladderOptionLabel').css('cursor','default')
             $('.BladderOption').prop('disabled','true')
			 $('.BladderBtn').addClass('BladderBtnDisable')
			 $('.BladderOption').unbind('click')
			 $('.BladderFeedbackcyk2,.BladderFeedbackcykItext').fadeIn()
			 $(".hover_tooltip").fadeIn()
			enableMyNextButton()
		});
	}); 

	}


	function make010102_28(template, topicData) {

    $(".template-container .content").html(template);

	$('.MonitorHeading').html(topicData.content.Data.MonitorHeading);
	$('.Monitor1').html(topicData.content.Data.Monitor1);
	$('.Monitor2').html(topicData.content.Data.Monitor2);
	$('.Monitor3').html(topicData.content.Data.Monitor3);
	$('.Monitor4').html(topicData.content.Data.Monitor4);

	$(".Monitor1").addClass('monitor1Anim animated');
	$(".Monitor2").addClass('monitor2Anim animated');
	$(".Monitor3").addClass('monitor3Anim animated');
	$(".Monitor4").addClass('monitor4Anim animated');

	}

	function make010102_29(template, topicData) {

    $(".template-container .content").html(template);

	$('.KeyPointTitle').html(topicData.content.Data.KeyPointTitle);
	$('.Point1').html(topicData.content.Data.Point1);
	$('.Point2').html(topicData.content.Data.Point2);
	$('.Point3').html(topicData.content.Data.Point3);
	$('.Point4').html(topicData.content.Data.Point4);
	$('.Point5').html(topicData.content.Data.Point5);
	$('.Point6').html(topicData.content.Data.Point6);
	$('.Point7').html(topicData.content.Data.Point7);

	$(".Point1").addClass('Point1Anim animated');
	$(".Point2").addClass('Point2Anim animated');
	$(".Point3").addClass('Point3Anim animated');
	$(".Point4").addClass('Point4Anim animated');
	$(".Point5").addClass('Point5Anim animated');
	$(".Point6").addClass('Point6Anim animated');
	$(".Point7").addClass('Point7Anim animated');

	}

	function make010102_30(template, topicData, USERSTATE) {

    $(".template-container .content").html(template);

	$('.EffectiveImg1').html(topicData.content.Data.EffectiveImg1);
	$('.EffectiveImg2').html(topicData.content.Data.EffectiveImg2);

	$('.TransWhiteBg,.EffectiveImg2').hide()

	$(".EffectiveImg1").addClass('Effective2Anim animated');

	/*setTimeout(function(){
    	 $('.TransWhiteBg,.EffectiveImg2').fadeIn()
		 $(".EffectiveImg2").addClass('Effective1Anim animated');
	},2000)*/

    playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]=function(){
		if(currehntTim>=3){
		playPauseCounter++
			if(playPauseCounter==8){
				$('.TransWhiteBg,.EffectiveImg2').fadeIn()
		        $(".EffectiveImg2").addClass('Effective1Anim animated');
			}
		}
	}

    playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);

	}

	function make010102_31(template, topicData) {

    $(".template-container .content").html(template);

    $('.assess_head1').html(topicData.content.Data.assess_head1);
	$('.assess_red_bg').html(topicData.content.Data.assess_red_bg);
	
	$('.assess_red_bg').addClass('acc_fadeIn animated');
	$('.a_fade1,.a_fade2,.a_fade3').addClass('acc_bounce animated');

	}


	function make010102_32(template, topicData) {

    $(".template-container .content").html(template);
    $('.BladderQue p').html(topicData.content.Data.BladderQue);
	$('.BladderQue span').html(topicData.content.Data.BladderNo);
	$('.BladderTick1').html(topicData.content.Data.BladderTick1);
	$('.BladderTick2').html(topicData.content.Data.BladderTick2);
	$('.BladderTick3').html(topicData.content.Data.BladderTick3);
	$('.NotepadHeading').html(topicData.content.Data.NotepadHeading);
	$('.NotepadeText1').html(topicData.content.Data.NotepadeText1);
	$('.NotepadeText2').html(topicData.content.Data.NotepadeText2);
	$('.NotepadeText3').html(topicData.content.Data.NotepadeText3);
	$('.NotepadeText4').html(topicData.content.Data.NotepadeText4);
	$('.effectiveabsImg').html(topicData.content.Data.effectiveabsImg);
	$('.effectiveabsImg4').html(topicData.content.Data.effectiveabsImg2);

   // var timestamp = new Date().getTime();
	//$('.effectiveabsImg4').html(topicData.content.Data.effectiveabsImg2+ "" + timestamp);

	$('.BladderTick').hide()
    
    $('.BladderBtn').css('opacity','0.5').css('cursor','default')
    $('.BladderBtn').unbind('click')
	enableMyNextButton()
    
   $('.BladderOption').bind('click', function () {
		 $('.BladderBtn').css('opacity','1').css('cursor','pointer');
		 $('.BladderBtn').bind('mouseover',function(){
				$('.BladderBtn').addClass('BladderBtnHover')									
		})
		 $('.BladderBtn').bind('mouseout',function(){
				$('.BladderBtn').removeClass('BladderBtnHover')									
		})
         $('.BladderBtn').bind('click', function () {
		 loadClickAudio('Media/eng/audio/mod_2_32_1')
			 if($('.BladderOption1').is(':checked')){
				 $('.BladderTick1,.BladderTick2').show();
				 	
			 }else if($('.BladderOption2').is(':checked')){
				 $('.BladderTick2').show();
			 } 
			 $('.BladderBtn').css('opacity','0.5').css('cursor','default')
             $('.BladderBtn').unbind('click')
			 $('.BladderOptionLabel').css('cursor','default')
             $('.BladderOption').prop('disabled','true')
			 $('.BladderBtn').addClass('BladderBtnDisable')
			 $('.BladderOption').unbind('click')
			 $(".hover_tooltip").fadeIn()
			 
			enableMyNextButton()
		});
	}); 

	}

	function make010102_33(template, topicData) {

    $(".template-container .content").html(template);
    $('.BladderQue p').html(topicData.content.Data.BladderQue);
	$('.BladderQue span').html(topicData.content.Data.BladderNo);
	$('.BladderTick1').html(topicData.content.Data.BladderTick1);
	$('.BladderTick2').html(topicData.content.Data.BladderTick2);
	$('.BladderTick3').html(topicData.content.Data.BladderTick3);
	$('.NotepadHeading').html(topicData.content.Data.NotepadHeading);
	$('.NotepadeText1').html(topicData.content.Data.NotepadeText1);
	$('.NotepadeText2').html(topicData.content.Data.NotepadeText2);
	$('.NotepadeText3').html(topicData.content.Data.NotepadeText3);
	$('.NotepadeText4').html(topicData.content.Data.NotepadeText4);
	$('.effectiveabsImg2').html(topicData.content.Data.effectiveabsImg);

    
	 $('.BladderTick').hide()
    
    $('.BladderBtn').css('opacity','0.5').css('cursor','default')
    $('.BladderBtn').unbind('click')
	enableMyNextButton()
    
   $('.BladderOption').bind('click', function () {
		 $('.BladderBtn').css('opacity','1').css('cursor','pointer');
		 $('.BladderBtn').bind('mouseover',function(){
				$('.BladderBtn').addClass('BladderBtnHover')									
		})
		 $('.BladderBtn').bind('mouseout',function(){
				$('.BladderBtn').removeClass('BladderBtnHover')									
		})
         $('.BladderBtn').bind('click', function () {
		  loadClickAudio('Media/eng/audio/mod_2_33_1')
			 if($('.BladderOption1').is(':checked')){
				 $('.BladderTick1').show();
			 }else if($('.BladderOption2').is(':checked')){
				 $('.BladderTick2,.BladderTick1').show();
			 }else if($('.BladderOption3').is(':checked')){
				 $('.BladderTick3,.BladderTick1').show();
			 } 
			 $('.BladderBtn').css('opacity','0.5').css('cursor','default')
             $('.BladderBtn').unbind('click')
			 $('.BladderOptionLabel').css('cursor','default')
			 $('.BladderBtn').addClass('BladderBtnDisable')		
             $('.BladderOption').prop('disabled','true')
			 $('.BladderOption').unbind('click')
			 $(".hover_tooltip").fadeIn()
			enableMyNextButton()
		});
	}); 

	}


	function make010102_34(template, topicData) {

    $(".template-container .content").html(template);

	$('.Sign1Img').html(topicData.content.Data.Sign1Img);
	$('.Sign2Img').html(topicData.content.Data.Sign2Img);
	$('.Sign3Img').html(topicData.content.Data.Sign3Img);
	$('.Sign1Desc').html(topicData.content.Data.Sign1Desc);
	$('.Sign2Desc').html(topicData.content.Data.Sign2Desc);
	$('.Sign3Desc').html(topicData.content.Data.Sign3Desc);
	$('.SignHeading').html(topicData.content.Data.SignHeading);

	$(".SignSection1").addClass('Sign1Anim animated');
	$(".SignSection2").addClass('Sign2Anim animated');
	$(".SignSection3").addClass('Sign3Anim animated');

	}

	function make010102_35(template, topicData) {

    $(".template-container .content").html(template);
    $('.a_fade1_102_19,.a_fade2_102_19,.a_fade3_102_19').addClass('arrow_pointer animated');
		$('.bottamcon_102_27').addClass('flo_right animated');
		$('.assess_green_bg_102_19').addClass('model_fadeIn2 animated');

		
		
		$('.assess_gra_102_19').bind('click', function () {
	       $('.assess_red_bg_102_19').show();
		   $('.close_tabs_102_19').show();
		   clearAudio()
		   $(".hover_tooltip").show()
	    });
		
		$('.close_tabs_102_19').bind('click', function () {
	       $('.assess_red_bg_102_19').hide();
		    $('.close_tabs_102_19').hide();
	    });
		
		$(".close_tabs_102_19").mouseover(function(){
		$('.close_tabs_txt_102_19').show();
	});	
	
	$(".close_tabs_102_19").mouseout(function(){
		$('.close_tabs_txt_102_19').hide();
	});
	}


	function make010102_36(template, topicData, USERSTATE) {

    $(".template-container .content").html(template);

	$('.diagnoseHeading').html(topicData.content.Data.diagnoseHeading);
	$('.DiagnoseNurseImg').html(topicData.content.Data.DiagnoseNurseImg);
	$('.DiagnoseBubble1').html(topicData.content.Data.DiagnoseBubble1);
	$('.DiagnoseBubble2').html(topicData.content.Data.DiagnoseBubble2);
	$('.DiagnoseBubble3').html(topicData.content.Data.DiagnoseBubble3);
	$('.DiagnoseBubble4').html(topicData.content.Data.DiagnoseBubble4);

	$('.DiagnoseBubble1,.DiagnoseBubble2,.DiagnoseBubble3,.DiagnoseBubble4').hide()

	
	/*	setTimeout(function(){
		    $('.DiagnoseBubble1').hide()
    		$('.DiagnoseBubble2').fadeIn()
			setTimeout(function(){
		      $('.DiagnoseBubble2').hide()
    		  $('.DiagnoseBubble3').fadeIn()
			  setTimeout(function(){
				  $('.DiagnoseBubble3').hide()
				  $('.DiagnoseBubble4').fadeIn()
			  },10000)
		   },6000)
		},6000)*/
    
    playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]=function(){
		console.log(currehntTim)
		if(currehntTim>=3){
		playPauseCounter++
			if(playPauseCounter==30){
				$('.DiagnoseBubble1').show()
			}else if(playPauseCounter==35){
				console.log('Called me')
				$('.DiagnoseBubble1').hide()
    		   $('.DiagnoseBubble2').fadeIn()
			}else if(playPauseCounter==40){
				$('.DiagnoseBubble2').hide()
    		    $('.DiagnoseBubble3').fadeIn()
			}else if(playPauseCounter==47){
				$('.DiagnoseBubble3').hide()
				  $('.DiagnoseBubble4').fadeIn()
			}
		}
	}

    playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);

	}

	function make010102_37(template, topicData) {

    $(".template-container .content").html(template);

		var chkComp = new Array()
          chkComp[0] = 0
          chkComp[1] = 0

          function chkCompletion() {
              if (chkComp[0] == 1 && chkComp[1] == 1) {
				  $(".hover_tooltip").fadeIn()
					  enableMyNextButton()
              }
		  }
			  
		
		$('.a_fade1_102_27,.a_fade2_102_27,.a_fade3_102_27').addClass('arrow_pointer animated');
		$('.bottamcon_102_27').addClass('flo_right animated');
		$('.assess_parpal_bg_102_27').addClass('model_fadeIn2 animated');
		
		$('.assess_gra_102_27').bind('click', function () {
	       $('.assess_red_bg_102_27').show();
		   $('.close_tabs_102_27').show();
		   $('.assess_green_bg_102_27').hide();
		   $('.close_tabs_102_27_1').hide();
          clearAudio()
		  chkComp[0] = 1
        chkCompletion()
	    });
		
		$('.close_tabs_102_27').bind('click', function () {
	        $('.assess_red_bg_102_27').hide();
		    $('.close_tabs_102_27').hide();
	    });
		
		$(".close_tabs_102_27").mouseover(function(){
			$('.close_tabs_txt_102_27').show();
		});	
	
		$(".close_tabs_102_27").mouseout(function(){
			$('.close_tabs_txt_102_27').hide();
		});
		
		$('.diagnose_gra_102_27').bind('click', function () {
	       $('.assess_green_bg_102_27').show();
		   $('.close_tabs_102_27_1').show();
		   $('.assess_red_bg_102_27').hide();
		   $('.close_tabs_102_27').hide();
		  clearAudio()
		  chkComp[1] = 1
        chkCompletion()
	    });
		
		$('.close_tabs_102_27_1').bind('click', function () {
	        $('.assess_green_bg_102_27').hide();
		    $('.close_tabs_102_27_1').hide();
	    });
		
		$(".close_tabs_102_27_1").mouseover(function(){
			$('.close_tabs_txt_102_27_1').show();
		});	
	
		$(".close_tabs_102_27_1").mouseout(function(){
			$('.close_tabs_txt_102_27_1').hide();
		});

	}

	function make010102_38(template, topicData) {

    $(".template-container .content").html(template);

	$('.Condition1').html(topicData.content.Data.Condition1);
	$('.Condition2').html(topicData.content.Data.Condition2);
	$('.Condition3').html(topicData.content.Data.Condition3);
	$('.Condition4').html(topicData.content.Data.Condition4);
	$('.Condition5').html(topicData.content.Data.Condition5);
	$('.Condition6').html(topicData.content.Data.Condition6);

	$(".Condition1").addClass('Condition1Anim animated');
	$(".Condition2").addClass('Condition2Anim animated');
	$(".Condition3").addClass('Condition3Anim animated');
	$(".Condition4").addClass('Condition4Anim animated');
	$(".Condition5").addClass('Condition5Anim animated');
	$(".Condition6").addClass('Condition6Anim animated');

	}

	function make010102_39(template, topicData) {

    $(".template-container .content").html(template);
    $('.BladderQue p').html(topicData.content.Data.BladderQue);
	$('.BladderQue span').html(topicData.content.Data.BladderNo);
	$('.BladderTick1').html(topicData.content.Data.BladderTick1);
	$('.BladderTick2').html(topicData.content.Data.BladderTick2);
	$('.effectiveabsImg3').html(topicData.content.Data.effectiveabsImg);
    $('.emergencyFeedback').html(topicData.content.Data.emergencyFeedback);

    
	 $('.BladderTick,.emergencyFeedback').hide()
    
    $('.BladderBtn').css('opacity','0.5').css('cursor','default')
    $('.BladderBtn').unbind('click')
	enableMyNextButton()
    
   $('.BladderOption').bind('click', function () {
		 $('.BladderBtn').css('opacity','1').css('cursor','pointer');
		  $('.BladderBtn').bind('mouseover',function(){
				$('.BladderBtn').addClass('BladderBtnHover')									
		})
		 $('.BladderBtn').bind('mouseout',function(){
				$('.BladderBtn').removeClass('BladderBtnHover')									
		})
         $('.BladderBtn').bind('click', function () {
			 if($('.BladderOption1').is(':checked')){
				 $('.BladderTick1').show();
			 }else if($('.BladderOption2').is(':checked')){
				 $('.BladderTick2,.BladderTick1').show();
			 }
			 $('.BladderBtn').css('opacity','0.5').css('cursor','default')
             $('.BladderBtn').unbind('click')
			 $('.BladderOptionLabel').css('cursor','default')
             $('.BladderOption').prop('disabled','true')
			 $('.BladderOption').unbind('click')
			  $('.BladderBtn').addClass('BladderBtnDisable')
			 $(".hover_tooltip,.emergencyFeedback").fadeIn()
			enableMyNextButton()
		});
	}); 

	}

	function make010102_40(template, topicData) {

    $(".template-container .content").html(template);

	$('.practiseHeading').html(topicData.content.Data.practiseHeading);
	$('.PrepareTab').html(topicData.content.Data.PrepareTab);
	$('.PainTab').html(topicData.content.Data.PainTab);
	$('.ProcedureTab').html(topicData.content.Data.ProcedureTab);
	$('.MonitorTab').html(topicData.content.Data.MonitorTab);
	$('.PractiseItext').html(topicData.content.Data.PractiseItext);
	$('.PractiseText').html(topicData.content.Data.PractiseText);
	$('.PractiseImg').html(topicData.content.Data.PractiseImg);
    
	/*Prepare Popup*/
	$('.PreparePoupTitle').html(topicData.content.Data.PreparePoupTitle);
	$('.PopupCloseText').html(topicData.content.Data.PopupCloseText);
	$('.Prepare1').html(topicData.content.Data.Prepare1);
	$('.Prepare2').html(topicData.content.Data.Prepare2);
	$('.Prepare3').html(topicData.content.Data.Prepare3);
	$('.Prepare4').html(topicData.content.Data.Prepare4);
	enableMyNextButton();

	/*Pain Popup*/
	$('.PainPoupTitle').html(topicData.content.Data.PainPoupTitle);
	$('.Pain1').html(topicData.content.Data.PainDesc);
	$('.PainDesc').html(topicData.content.Data.Pain1);

	/*Procedure Popup*/
	$('.ProcedurePoupTitle').html(topicData.content.Data.ProcedurePoupTitle);
	$('.ProcedureDesc1').html(topicData.content.Data.ProcedureDesc1);
	$('.Procedure1').html(topicData.content.Data.Procedure1);
	$('.ProcedureDesc2').html(topicData.content.Data.ProcedureDesc2);
	$('.Procedure2').html(topicData.content.Data.Procedure2);
	$('.Procedure3').html(topicData.content.Data.Procedure3);
	$('.ProcedureDesc3').html(topicData.content.Data.ProcedureDesc3);
	$('.ProcedureImg').html(topicData.content.Data.ProcedureImg);

	/*Monitor Popup*/
	$('.MonitorPoupTitle').html(topicData.content.Data.MonitorPoupTitle);
	$('.MonitorDesc').html(topicData.content.Data.MonitorDesc);
	$('.MonitorImg').html(topicData.content.Data.MonitorImg);

	enableMyNextButton()

	$('.PrepareTab').bind('click',function(){
	  $('.PreparePopup,.TransWhiteBg').show()
	  
	  chkComp[0] = 1
      chkCompletion()
	})

	$('.PainTab').bind('click',function(){
	  $('.PainPopup,.TransWhiteBg').show()
	  
	  chkComp[1] = 1
      chkCompletion()
	})
	
	$('.ProcedureTab').bind('click',function(){
	  $('.ProcedurePopup,.TransWhiteBg').show()
	  
	  chkComp[2] = 1
      chkCompletion()
	})
	
	$('.MonitorTab').bind('click',function(){
	  $('.MonitorPopup,.TransWhiteBg').show()
	  
	  chkComp[3] = 1
      chkCompletion()
	})
	
	$('.PopupCloseImg,.PopupCloseText').bind('click',function(){
	  $('.PractisePopup,.TransWhiteBg').hide()
	})
	
   $('.PopupCloseImg').mouseover(function(){
     $('.PopupCloseText').show()
   })

   $('.PopupCloseImg').mouseout(function(){
     $('.PopupCloseText').hide()
   })


		 var chkComp = new Array()
          chkComp[0] = 0
          chkComp[1] = 0
		  chkComp[2] = 0
		  chkComp[3] = 0

          function chkCompletion() {
              if (chkComp[0] == 1 && chkComp[1] == 1 && chkComp[2] == 1 && chkComp[3] == 1) {
				  $(".hover_tooltip").fadeIn();
				  enableMyNextButton();
              }
		  }

	}
	/*Vedankita End*/
	
function make010102_41(template, topicData) {

    $(".template-container .content").html(template);

		$('.submit_btn_102_41').unbind('click')
		enableMyNextButton()
		
	$('.option_102_41').bind('click', function () {
			$('.submit_btn_102_41').css('opacity','1');
			$('.submit_btn_102_41').css('cursor','pointer');

		clearAudio()
		
		$('.submit_btn_102_41').bind('mouseover',function(){
					$('.submit_btn_102_41').addClass('submit_btn_Hover')									
				})
				$('.submit_btn_102_41').bind('mouseout',function(){
					$('.submit_btn_102_41').removeClass('submit_btn_Hover')									
				})

			$('.submit_btn_102_41').bind('click', function () {
		
		var selected = false;
	    if($("#Option1").prop("checked")){
		   $('.correct_102_41_1').show();
		   selected = true;
	    }
	    if($("#Option2").prop("checked")){
		   $('.correct_102_41_1').show();
		   $('.incorrect_102_41_1').show();
		   selected = true;
	    }
		if($("#Option3").prop("checked")){
		   $('.correct_102_41_1').show();
		   $('.incorrect_102_41_2').show();
		   selected = true;
	    }
		if(selected){
			$('.feedback_102_41').show();
			$('.submit_btn_102_41').css('cursor','default').css('opacity','0.5')
			$('.submit_btn_102_41').prop('disabled','true')
		}


		$('.dataQuiz_102_41').css('cursor','default')
		$('.option_102_41').prop('disabled','true')
		$('.dataQuiz_102_41').prop('disabled','true')
		$('.submit_btn_102_41').addClass('submitBtnDisable')
		$(".hover_tooltip").fadeIn()
		enableMyNextButton()
	});	
		});
		
	
		
}
	
	
function make010102_42(template, topicData) {

		$(".template-container .content").html(template);

		$('.submit_btn_102_42').unbind('click')
		enableMyNextButton()
		
		$(".option_102_42").change(function() {
			var atLeastOneIsChecked = $('.question-option_102_42 :checkbox:checked').length > 0;
			if(atLeastOneIsChecked) {
			$('.submit_btn_102_42').css('opacity','1');
			$('.submit_btn_102_42').css('cursor','pointer');
			clearAudio()
			
			$('.submit_btn_102_42').bind('mouseover',function(){
					$('.submit_btn_102_42').addClass('submit_btn_Hover')									
				})
				$('.submit_btn_102_42').bind('mouseout',function(){
					$('.submit_btn_102_42').removeClass('submit_btn_Hover')									
				})

        $('.submit_btn_102_42').bind('click', function () {
		
      $('.submit_btn_102_42').unbind('mouseover')
			var selected = false;
	       $('.correct1,.correct2').show();
		   if($('#Option1').is(':checked')){
				selected = true;
			}
			if($('#Option2').is(':checked')){
				$('.incorrect1').show();
				selected = true;
			}
			if($('#Option3').is(':checked')){
				$('.incorrect2').show();
				selected = true;
			}
			if($('#Option4').is(':checked')){
				selected = true;
			}
			if($('#Option5').is(':checked')){
				$('.incorrect3').show();
				selected = true;
			}
			if(selected){
				$('.feedback_102_42').show();
				$('.submit_btn_102_42').unbind('click')
				$('.submit_btn_102_42').css('opacity','0.5');
				$('.submit_btn_102_42').css('cursor','default')
				$('.option_102_42').prop('disabled', true);
						
				
				
			}

				$('.dataQuiz_102_42').prop('disabled','true')
					$('.dataQuiz_102_42').css('cursor','default')
                
					$(".hover_tooltip").fadeIn()
					enableMyNextButton()
	    });
        }else{
				$('.submit_btn_102_42').unbind('click')
				$('.submit_btn_102_42').css('opacity','0.5');
				$('.submit_btn_102_42').css('cursor','default')
				
				 $('.submit_btn_102_42').addClass('submitBtnDisable')
			}
		});
		
			
		
}


function make010102_43(template, topicData) {

	$(".template-container .content").html(template);
	

	enableMyNextButton()
	
	$('.close_tabs_43').bind('click', function () {
	        $('.white_div2').hide();
		    $('.close_tabs_43').hide();
			$('.pages2_bg_43').show();
			clearAudio()
	    });
		
		$(".close_tabs_43").mouseover(function(){
			$('.close_tabs_txt_43').show();
		});	
	
		$(".close_tabs_43").mouseout(function(){
			$('.close_tabs_txt_43').hide();
		});
		
	$(".small1").bind('click',function(){
		$(".pages2_bg_43").show();
		$(".white_div2").show();
		$(".b_img1").show();
		$(".b_img2").hide();
		$(".b_img3").hide();
		$(".b_img4").hide();
		$(".b_img5").hide();
		$(".helps2").hide();
		$(".close_tabs_43").show();
		
	$('.small1,.helps1').removeClass('eff_fades1 animated');
	$('.small2').removeClass('eff_fades2 animated');
	$('.small3').removeClass('eff_fades3 animated');
	$('.small4').removeClass('eff_fades4 animated');
	$('.small5').removeClass('eff_fades5 animated');

	loadClickAudio('Media/eng/audio/mod_2_43_1')
	chkComp[0] = 1
      chkCompletion()
	});
	
	$(".small2").bind('click',function(){
		$(".pages2_bg_43").hide();
		$(".white_div2").show();
		$(".b_img1").hide();
		$(".b_img2").show();
		$(".b_img3").hide();
		$(".b_img4").hide();
		$(".b_img5").hide();
		$(".helps2").hide();
		$(".close_tabs_43").show();
		
	$('.small1,.helps1').removeClass('eff_fades1 animated');
	$('.small2').removeClass('eff_fades2 animated');
	$('.small3').removeClass('eff_fades3 animated');
	$('.small4').removeClass('eff_fades4 animated');
	$('.small5').removeClass('eff_fades5 animated');
	loadClickAudio('Media/eng/audio/mod_2_43_2')

	chkComp[1] = 1
      chkCompletion()
	});
	
	$(".small3").bind('click',function(){
		$(".pages2_bg_43").hide();
		$(".white_div2").show();
		$(".b_img1").hide();
		$(".b_img2").hide();
		$(".b_img3").show();
		$(".b_img4").hide();
		$(".b_img5").hide();
		$(".helps2").hide();
		$(".close_tabs_43").show();
		
	$('.small1,.helps1').removeClass('eff_fades1 animated');
	$('.small2').removeClass('eff_fades2 animated');
	$('.small3').removeClass('eff_fades3 animated');
	$('.small4').removeClass('eff_fades4 animated');
	$('.small5').removeClass('eff_fades5 animated');
	
	loadClickAudio('Media/eng/audio/mod_2_43_3')

	chkComp[2] = 1
      chkCompletion()
	});
	
	
	$(".small4").bind('click',function(){
		$(".pages2_bg_43").hide();
		$(".white_div2").show();
		$(".b_img1").hide();
		$(".b_img2").hide();
		$(".b_img3").hide();
		$(".b_img4").show();
		$(".b_img5").hide();
		$(".helps2").hide();
		$(".close_tabs_43").show();
		
	$('.small1,.helps1').removeClass('eff_fades1 animated');
	$('.small2').removeClass('eff_fades2 animated');
	$('.small3').removeClass('eff_fades3 animated');
	$('.small4').removeClass('eff_fades4 animated');
	$('.small5').removeClass('eff_fades5 animated');
	
	loadClickAudio('Media/eng/audio/mod_2_43_4')

	chkComp[3] = 1
      chkCompletion()
	});
	
	
	$(".small5").bind('click',function(){
		$(".pages2_bg_43").hide();
		$(".white_div2").show();
		$(".b_img1").hide();
		$(".b_img2").hide();
		$(".b_img3").hide();
		$(".b_img4").hide();
		$(".b_img5").show();
		$(".helps2").hide();
		$(".close_tabs_43").show();
		
	$('.small1,.helps1').removeClass('eff_fades1 animated');
	$('.small2').removeClass('eff_fades2 animated');
	$('.small3').removeClass('eff_fades3 animated');
	$('.small4').removeClass('eff_fades4 animated');
	$('.small5').removeClass('eff_fades5 animated');
	
	loadClickAudio('Media/eng/audio/mod_2_43_5')

	chkComp[4] = 1
      chkCompletion()
	});
	
	$('.small1,.helps1').addClass('eff_fades1 animated');
	$('.small2').addClass('eff_fades2 animated');
	$('.small3').addClass('eff_fades3 animated');
	$('.small4').addClass('eff_fades4 animated');
	$('.small5').addClass('eff_fades5 animated');
	
	var chkComp = new Array()
          chkComp[0] = 0
          chkComp[1] = 0
		  chkComp[2] = 0
		  chkComp[3] = 0
		  chkComp[4] = 0

          function chkCompletion() {
              if (chkComp[0] == 1 && chkComp[1] == 1 && chkComp[2] == 1 && chkComp[3] == 1 && chkComp[4] == 1) {
				  $(".hover_tooltip").fadeIn()
				  enableMyNextButton()
              }
		  }
		
}
function make010102_44(template, topicData) {

    $(".template-container .content").html(template);

		var chkComp = new Array()
          chkComp[0] = 0
          chkComp[1] = 0
			chkComp[2] = 0

          function chkCompletion() {
              if (chkComp[0] == 1 && chkComp[1] == 1 && chkComp[2] == 1) {
				  $(".hover_tooltip").fadeIn()
					  enableMyNextButton()
              }
		  }
		
		$('.a_fade1_102_45,.a_fade2_102_45,.a_fade3_102_45').addClass('arrow_pointer animated');
		$('.bottamcon_102_45').addClass('flo_right animated');
		$('.assess_blue_bg_102_45').addClass('model_fadeIn2 animated');
		
		$('.assess_gra_102_45').bind('click', function () {
	       $('.assess_red_bg_102_45').show();
		   $('.assess_green_bg_102_45').hide();
		   $('.assess_parpal_bg_102_45').hide();
		    $('.close_tabs_102_45_1').hide();
		   $('.close_tabs_102_45').show();
		   $('.close_tabs_102_44_2').hide();

		    chkComp[0] = 1
        chkCompletion()
				clearAudio()
	    });
		
		$('.close_tabs_102_45').bind('click', function () {
	        $('.assess_red_bg_102_45').hide();
			 $('.close_tabs_102_45').hide();
	    });
		
		$(".close_tabs_102_45").mouseover(function(){
			$('.close_tabs_txt_102_44').show();
		});	
	
		$(".close_tabs_102_45").mouseout(function(){
			$('.close_tabs_txt_102_44').hide();
		});
		
		$('.diagnose_gra_102_45').bind('click', function () {
	       $('.assess_green_bg_102_45').show();
		   $('.assess_red_bg_102_45').hide();
		   $('.assess_parpal_bg_102_45').hide();
		    $('.close_tabs_102_45_1').show();
			$('.close_tabs_102_45').hide();
			$('.close_tabs_102_44_2').hide();
clearAudio()
			 chkComp[1] = 1
        chkCompletion()
	    });
		
		$('.close_tabs_102_45_1').bind('click', function () {
	        $('.assess_green_bg_102_45').hide();
		    $('.close_tabs_102_45_1').hide();
			
	    });
		
		$(".close_tabs_102_45_1").mouseover(function(){
			$('.close_tabs_txt_102_44_1').show();
		});	
	
		$(".close_tabs_102_45_1").mouseout(function(){
			$('.close_tabs_txt_102_44_1').hide();
		});
		
		$('.provide_gra_102_45').bind('click', function () {
	       $('.assess_parpal_bg_102_45').show();
		   $('.assess_red_bg_102_45').hide();
		   $('.assess_green_bg_102_45').hide();
			 $('.close_tabs_102_45').hide();
			 $('.close_tabs_102_45_1').hide();
			 $('.close_tabs_102_44_2').show();
clearAudio()
			  chkComp[2] = 1
        chkCompletion()
	    });
		
		$('.close_tabs_102_44_2').bind('click', function () {
	        $('.assess_parpal_bg_102_45').hide();
		    $('.close_tabs_102_44_2').hide();
	    });
		
		$(".close_tabs_102_44_2").mouseover(function(){
			$('.close_tabs_txt_102_44_2').show();
		});	
	
		$(".close_tabs_102_44_2").mouseout(function(){
			$('.close_tabs_txt_102_44_2').hide();
		});
		
	}
	
	function make010102_45(template, topicData, USERSTATE) {

	$(".template-container .content").html(template);
	
	$('.think_bub1,.think_bub2,.think_bub3,.think_bub4').hide()
	
	 playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]=function(){
		console.log(currehntTim)
		if(currehntTim>=1){
		playPauseCounter++
			if(playPauseCounter==2){
				$('.think_bub1').show()
			}else if(playPauseCounter==4){
				console.log('Called me')
				$('.think_bub1').hide()
    		   $('.think_bub2').fadeIn()
			}else if(playPauseCounter==7){
				$('.think_bub2').hide()
    		    $('.think_bub3').fadeIn()
			}else if(playPauseCounter==9){
				$('.think_bub3').hide()
				  $('.think_bub4').fadeIn()
			}
		}
		}
	 playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);	
		
	$('.nurse3_img').addClass('think_fades1 animated');
	/*$('.think_bub1').addClass('think_fades2 animated');
	$('.think_bub2').addClass('think_fades3 animated');
	$('.think_bub3').addClass('think_fades4 animated');
	$('.think_bub4').addClass('think_fades5 animated');*/
	
	$('.topic1').addClass('tk_fades1 animated');
	$('.topic2').addClass('tk_fades2 animated');
	$('.topic3').addClass('tk_fades3 animated');
	$('.topic4').addClass('tk_fades4 animated');
	

}

function make010102_46(template, topicData) {

	$(".template-container .content").html(template);
	
	
	enableMyNextButton()

	$('.close_tabs_46').bind('click', function () {
	        $('.big_img1,.big_img2,.big_img3').hide();
		    $('.close_tabs_46').hide();
			$('.images_divs').show();
			clearAudio()
	    });
		
		$(".close_tabs_46").mouseover(function(){
			$('.close_tabs_txt_46').show();
		});	
	
		$(".close_tabs_46").mouseout(function(){
			$('.close_tabs_txt_46').hide();
		});
		
	$(".img_46_1").bind('click',function(){
		$(".images_divs").hide();
		$(".big_img1").show();
		$(".big_img2").hide();
		$(".big_img3").hide();
		$(".close_tabs_46").show();
		
	$('.img_46_1').removeClass('keys_fades1 animated');
	$('.img_46_2').removeClass('keys_fades2 animated');
	$('.img_46_3').removeClass('keys_fades3 animated');
	$('.c_click').removeClass('keys_fades4 animated');
	
	chkComp[0] = 1
    chkCompletion()

	loadClickAudio('Media/eng/audio/mod_2_46_1')
	});
	
	$(".img_46_2").bind('click',function(){
		$(".images_divs").hide();
		$(".big_img2").show();
		$(".big_img1").hide();
		$(".big_img3").hide();
		$(".close_tabs_46").show();
		
	$('.img_46_1').removeClass('keys_fades1 animated');
	$('.img_46_2').removeClass('keys_fades2 animated');
	$('.img_46_3').removeClass('keys_fades3 animated');
	$('.c_click').removeClass('keys_fades4 animated');

	chkComp[1] = 1
    chkCompletion()
	
	loadClickAudio('Media/eng/audio/mod_2_46_2')

	});
	
	$(".img_46_3").bind('click',function(){
		$(".images_divs").hide();
		$(".big_img3").show();
		$(".big_img1").hide();
		$(".big_img2").hide();
		$(".close_tabs_46").show();
		
	$('.img_46_1').removeClass('keys_fades1 animated');
	$('.img_46_2').removeClass('keys_fades2 animated');
	$('.img_46_3').removeClass('keys_fades3 animated');
	$('.c_click').removeClass('keys_fades4 animated');

	chkComp[2] = 1
    chkCompletion()
	
	loadClickAudio('Media/eng/audio/mod_2_46_3')
	});
	

	$('.img_46_1').addClass('keys_fades1 animated');
	$('.img_46_2').addClass('keys_fades2 animated');
	$('.img_46_3').addClass('keys_fades3 animated');
	$('.c_click').addClass('keys_fades4 animated');

	var chkComp = new Array()
	  chkComp[0] = 0
	  chkComp[1] = 0
	  chkComp[2] = 0

	  function chkCompletion() {
		  if (chkComp[0] == 1 && chkComp[1] == 1 && chkComp[2] == 1) {
			  $(".hover_tooltip").fadeIn()
			  enableMyNextButton()
		  }
	  }
		
}
function make010102_47(template, topicData, USERSTATE) {

	$(".template-container .content").html(template);
	
	/*setTimeout(function(){
		$('.img_47').addClass('img_47_1');
			setTimeout(function(){
			$('.img_47').removeClass('img_47_1');
		},8000);
	});*/

   playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]=function(){
		console.log(currehntTim)
		if(currehntTim>=3){
		playPauseCounter++
			if(playPauseCounter==2){
				$('.img_47').addClass('img_47_1');
			}else if(playPauseCounter==8){
				$('.img_47').removeClass('img_47_1');
			}
		}
	}

    playPauseInterval=setInterval(function(){ playPauseFnArr[USERSTATE.module][USERSTATE.topic][USERSTATE.screen]() }, 1000);
	
	$('.keys_text').addClass('key_fades1 animated');
	$('.blu_tab1').addClass('key_fades2 animated');
	$('.blu_tab2').addClass('key_fades3 animated');
	$('.blu_tab3').addClass('key_fades4 animated');
	$('.blu_tab4').addClass('key_fades5 animated');
	$('.blu_tab5').addClass('key_fades6 animated')
	$('.img_47').addClass('key_fades2 animated');
	
		
}