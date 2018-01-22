	var htmlData={'JSONData':
	{'shellHeader.html':'<div class="course-header row">\
		<div class="course-title small-9 columns col-md-6">{{{courseTitle}}}</div>\
		<div class="right course-logo small-3 columns col-md-6"></div>\
	</div>',
	'shellBreadcrum.html':'<li style="display: none;"><span class="module-name" >Code of Conduct</span></li>\
		<li><span class="module-topic">Objectives</span></li>\
		<li><span class="module-screen">Objectives</span></li>',
	'shellFooter.html':'<div class="footer-menu">\
  <nav class="navbar navbar-default footer-bg">\
  <div class="container-fluid clearfix">\
	<div class="tooltip_footer" style="display:none;"></div>\
	  	<div class="tooltip_footer2" style="display:none;"></div>\
	<div class="tooltip_footer_left" style="display:none;"></div>\
	<div class="tooltip_footer_right" style="display:none;"></div>\
    <!-- Collect the nav links, forms, and other content for toggling -->\
    <div class="BindBg" style="display:none;"></div>\
    <div class="navbar-header clearfix">\
	  <div class="nav_style clearfix">\
		 <a href="#"><div id="prev" class="outPrev NavBtns"><img src="Media/eng/images/newTemplates/Back_icon.png"></div><div class="bg_clr" style="display:none;">&#39;</div></a>\
		 <div class="prev_tool" style="display: none;">Back</div>\
	     <div class="pagination-number" >Page <span class="curr-page"></span><span> of </span><span class="total-page"></span></div>\
		 <a href="#"><div id="next" class="outNext NavBtns"><img src="Media/eng/images/newTemplates/Next_icon.png"></div></a>\
		 <div class="next_tool" style="display: none;">Next</div>\
	  </div>\
    </div>\
      <ul class="nav clearfix">\
       <li id="PageNo"><input type="text" id="PageNumber"></li>\
       <li id="Credits"><img src="Media/eng/images/newTemplates/credits.png"></li>\
	   <div class="credits_tool" style="display: none;">Credits</div>\
       <li id="audio"><img src="Media/eng/images/newTemplates/pause.png"></li>\
	   <div class="pause_tool" style="display: none;">Pause</div>\
       <li id="resources_new"><img src="Media/eng/images/newTemplates/resources.png"></li>\
	   <div class="resources_tool" style="display: none;">Resources</div>\
       <li id="text"><img src="Media/eng/images/newTemplates/txt.png"></li>\
	   <div class="txt_tool" style="display: none;">Text</div>\
       <li id="replay"><img src="Media/eng/images/newTemplates/replay.png"></li>\
	   <div class="replay_tool" style="display: none;">Replay</div>\
       <!--<li id="exit">EXIT</li>\
       <li id="menu">MENU</li>\
	   <li id="help">HELP</li>\
	   <li id="glossary">GLOSSARY</li>\
	   <li id="resources_new">RESOURCES</li>\
	   <li id="audio">AUDIO OFF</li>-->\
      </ul>\
      <div class="hover_tooltip" style="display:none">Click Next to Continue.</div>\
  </div><!-- /.container-fluid -->\
</nav>\
  <div class="row dummy-row"></div>\
</div>',
'glossary.html':'<div class="row label-container">\
	<div class="small-12 columns">\
	{{#each this}}\
	<div class="letter" data-id="{{this.id}}"><a href="#">{{this.desc}}</a></div>\
	{{/each}}\
	</div>\
</div>\
<div class="row glossary-data-container">\
	<div class="small-4 columns words-conatiner"></div>\
	<div class="small-8 columns desc-container"></div>\
</div>',
	'glossaryWord.html':'{{#each this}}\
		<div class="word" data-id="{{this.id}}" ><a href=#>{{this.word}}</a></div>\
{{/each}}',
'VideoTemplate.html':'<div class="">\
		<div class="small-12 columns videoContainer" >\
		<div id="jp_container_1" class="jp-video" style="width:100%;">\
			<div class="jp-type-single">\
				<div id="jquery_jplayer_1" class="jp-jplayer" style="width:100% !important;"></div>\
				<div class="divImageReplay"><img id="imageReplay" src="Media/eng/images/Replay_BTN.png" title="Replay" /></div>\
				<div class="jp-gui">\
					<div class="jp-video-play">\
						<a href="javascript:;" class="jp-video-play-icon" tabindex="1">play</a>\
					</div>\
					<div class="jp-interface">\
						<div class="jp-progress">\
							<div class="jp-seek-bar">\
								<div class="jp-play-bar"></div>\
							</div>\
						</div>\
						<div class="jp-current-time"></div>\
						<div class="jp-duration"></div>\
						<div class="jp-controls-holder">\
							<ul class="jp-controls">\
								<li><a href="javascript:;" class="jp-play" tabindex="1" title="Play">Play</a></li>\
								<li><a href="javascript:;" class="jp-pause" tabindex="1" title="Pause">Pause</a></li>\
								<li><a href="javascript:;" class="jp-stop" tabindex="1" title="Stop">Stop</a></li>\
								<li><a href="javascript:;" class="jp-mute" tabindex="1" title="Mute">Mute</a></li>\
								<li><a href="javascript:;" class="jp-unmute" tabindex="1" title="Unmute">Unmute</a></li>\
								<li><a href="javascript:;" class="jp-volume-max" tabindex="1" title="Max Volume">Max Volume</a></li>\
							</ul>\
							<div class="jp-volume-bar">\
								<div class="jp-volume-bar-value"></div>\
							</div>\
							<ul class="jp-toggles">\
								<li><a href="javascript:;" class="jp-full-screen" tabindex="1" title="Full Screen">Full Screen</a></li>\
								<li><a href="javascript:;" class="jp-restore-screen" tabindex="1" title="Restore Screen">Restore Screen</a></li>\
								<li><a href="javascript:;" class="jp-repeat" tabindex="1" title="Repeat">Repeat</a></li>\
								<li><a href="javascript:;" class="jp-repeat-off" tabindex="1" title="Repeat Off">Repeat Off</a></li>\
							</ul>\
						</div>\
						<div class="jp-title">\
							<ul>\
								<li></li>\
							</ul>\
						</div>\
					</div>\
				</div>\
				<div class="jp-no-solution">\
					<span>Update Required</span>\
					To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.\
				</div>\
			</div>\
		</div>\
		</div>\
		<div class="textContainer">\
		</div>\
</div>',
'makeMCQWithScenarios.html': '<div>\
	<div class="sectionSecond">\
		<div class="medium-9 col-md-12">\
			<div class="right-margin-zero"> {{#Scenarios.[0].Scenario}}\
				<p style="{{this.information1.[0]._style}}">{{this.information1.[0]._text}}</p>\
				<p style="{{this.information.[0]._style}}">{{this.information.[0]._text}}</p>\
			  {{/Scenarios.[0].Scenario}} </div>\
	  </div>\
      <div class="form-horizontal col-md-12">\
	  <div class="col-xs-12 col-sm-6 col-md-6">\
		  <div class="medium-12 columns content-background" >\
			<div class="error hide1 red" style="display:none;"></div>\
			<div style="{{options.[0]._style}}">\
			  <input type="checkbox"	class="option" name="mcq" id="mcq-option-{{@index}}" value={{this.optionValue.[0]._text}} />\
			  <label for="mcq-option-{{@index}}" style="{{this.optionDisplay.[0]._style}}"><span >{{this.optionDisplay.[0]._text}}</span></label>\
			  <br />\
			</div>\
			<div class="form-group">\
			  <button class="btnSubmit btn btn-default">{{submitButton.[0]._text}}</button>\
			</div>\
		</div>\
	  </div>\
	  <div class="feedback-container col-xs-12 col-sm-6 col-md-6" style="display: block;opacity:1 !important;">\
		<div class="rfeedbackContent row"></div>\
        <div class="feedback_tickmark zoomIn animated" style="display:none;"><img src="Media/eng/images/correct_icon.png"></div>\
        <div class="feedback_wrongtickmark zoomIn animated" style="display:none;"><img src="Media/eng/images/incorrect_icon.png"></div>\
	  </div>\
      </div>\
	</div>\
    </div>\
	</div>',
'MCQWithSingleScenarioRadio.html':'<div class="AssessmentInnerBG">\
<div class="BeginCourseTitle2">Managing Postpartum Hemorrhage</div>\
<div class="AssementQuizSection">\
<div class="clearfix">\
<div class="pagination-number" >Question <span class="curr-page"></span><span> of </span><span class="total-page"></span></div>\
<div class="PointValue" >Point Value: <span class="ptValue" style="color:#fff;">1</span></div>\
</div>\
	<div class="medium-4 columns assess_bg2">\
	<div class="AssessmentQueBg2 fadeInRight2 animated">\
		<div class="tpad5p question-body question-body3 bottom-space">\
			<div>\
				<span class="question-logo"></span>\
			</div>\
			<div class="tittle" style="display:none;">\
				<p></p>\
			</div>\
			<div class="question">\
				<p></p>\
			</div>\
		</div>\
	<div class="medium-8 medium-8 columns right-content" >\
		<div class="tpad5p question-options rpad10px bac_clr_none" >\
			<div class="error hide red"></div>\
			<div class="clearfix">\
			<div class="options">\
			</div>\
			<div class="AssessmentImgSection">\
				<div class="AssessmentImg">\
				</div>\
				<div class="AssessmentZoomin"><img src="Media/eng/images/zoomin.jpg"></div>\
			</div>\
			<div class="AssessmentImgLarge">\
			</div>\
			</div>\
		</div>\
	</div>\
</div>\
</div>\
<div class="clearfix">\
	<div class="ScoreText"><span>Score so far:</span> <span class="CountPoint" style="color:#fff;">0</span> points out of <span class="totalPoint" style="color:#fff;"></span></div>\
	<div class="question-submit-button AssessmentbtnSubmitSection">\
		<button class="btnSubmit AssessmentbtnSubmit">SUBMIT</button>\
	</div>\
</div>\
<input type="hidden" name="c_answer" id="c_answer" value={{correctAnswer}}>\
<div class="row feedback-container" style="display: none;">\
			<table style="width: 100%">\
				<tr>\
					<td>\
						<p class="feedbackTitle">{{feedback.[0].feedbackTitle.text}}</p>\
					</td>\
				</tr>\
				<tr>\
					<td>\
						<div class="rfeedbackContent"></div>\
					</td>\
				</tr>\
			</table>\
			<button class="NextQue btnSubmit">Next Question</button>\
</div>\
</div>\
<div class="AssResult"></div>\
</div>',
'MCQWithSingleScenario.html':'<div class="row">\
		<div class="medium-4 columns" style="padding-right: 0px; padding-left: 0px;">\
		<div class="tpad5p question-body bottom-space" style="{{this._style}}">\
			<div>\
				<span class="question-logo" style="{{logo.[0]._style}}">{{{logo.[0]._cdata}}}</span><span style="{{title.[0]._style}}"><b>{{{title.[0]._cdata}}}</span></b>\
			</div>\
			<div style="{{information.[0]._style}}">\
				<p>{{{information.[0]._cdata}}}</p>\
			</div>\
			<div style="{{questionText.[0]._style}}">\
				<p>{{{questionText.[0]._cdata}}}</p>\
			</div>\
		</div>\
	</div>\
	<div class="medium-8 medium-8 columns right-content" style="padding-right:0px;">\
		<div class="tpad5p question-options rpad10px" style="{{this._style}}">\
			<div class="question-instruction-text" style="{{questionHeader.[0]._style}}">{{{questionHeader.[0]._cdata}}}</div>\
			<div class="error hide red"></div>\
			<div>\
				{{#options.[0].value}}\
				<div class="question-option" style="{{this._style}}">\
					<div style="width:5%;float:none"><input type="checkbox" style="margin:7px;" class="option" name="saq" value={{this.optionValue.[0]._text}} /></div><div style="width:95%;"> {{{this.optionDisplay.[0]._cdata}}}</div>\
				</div>\
				{{/options.[0].value}}\
			</div>\
			<div class="question-submit-button">\
				<button class="btnSubmit" style="{{submitButton.[0]._style}}">{{submitButton.[0]._text}}</button>\
			</div>\
		</div>\
	</div>\
</div>\
<input type="hidden" name="c_answer" id="c_answer" value={{correctAnswer}}>\
<div class="row feedback-container" style="display: none;">\
	<div class="medium-12 medium-12 columns  ">\
			<table style="width: 100%">\
				<tr>\
					<td>\
						<p>{{feedback.[0].feedbackTitle.[0]._cdata}}</p>\
					</td>\
				</tr>\
				<tr>\
					<td>\
						<div class="rfeedbackContent"></div>\
					</td>\
				</tr>\
			</table>\
	</div>\
</div>',
'VideoTemplate2.html': '<div>\
<div class="DesktopMode">\
	<div style="display: none;" id="bubble"></div>\
	<div style="height:auto;" id="imageBG"></div>\
</div>\
	<div class="MobileMode"></div>\
	<div class="progressBarBorder"><div class="progressBar"></div>\</div>\
</div>',
'01_page.html':'<div class="page_bg clearfix">\
<div style="display:block">\
	<div class="women">It is important to treat the woman and her family with respect.</div>\
	<div class="intro">\
	<ul>\
	  <li class="intro_ani">Introduce</li>\
	  <li class="ex_ani">Explain</li>\
	  <li class="privacy_ani">Privacy</li>\
	  <li class="language_ani">Language</li>\
	  <li class="be_ani">Be gentle</li>\
	</ul>\
	</div>\
	<div class="video_div">\
	    <div class="video_btn"><img src="Media/eng/images/video_btn.png"/></div>\
		<div class="video_txt">Click on the Video icon below to view the video about Respectful Care at Birth.</div>\
	</div>\
</div>\
<div style="display:none" class="page_bg_one">\
    <div class="cls_div"><p class="close_txt" style="display:none;">Close</p></div>\
    <div>\
		<p class="into_txt">Introduction</p>\
  		<p class="line_txt">|</p>\
		<p class="res_txt">Respectful Care</p>\
	</div>\
	<div>\
<div class="">\
		<div class="small-12 columns videoContainer" >\
		<div id="jp_container_1" class="jp-video" style="width:100%;">\
			<div class="jp-type-single">\
				<div id="jquery_jplayer_1" class="jp-jplayer" style="width:100% !important;"></div>\
				<div class="divImageReplay"><img id="imageReplay" src="Media/eng/images/Replay_BTN.png" title="Replay" /></div>\
				<div class="jp-gui">\
					<div class="jp-video-play">\
						<a href="javascript:;" class="jp-video-play-icon" tabindex="1">play</a>\
					</div>\
					<div class="jp-interface">\
						<div class="jp-progress">\
							<div class="jp-seek-bar">\
								<div class="jp-play-bar"></div>\
							</div>\
						</div>\
						<div class="jp-current-time"></div>\
						<div class="jp-duration"></div>\
						<div class="jp-controls-holder">\
							<ul class="jp-controls">\
								<li><a href="javascript:;" class="jp-play" tabindex="1" title="Play">Play</a></li>\
								<li><a href="javascript:;" class="jp-pause" tabindex="1" title="Pause">Pause</a></li>\
								<li><a href="javascript:;" class="jp-stop" tabindex="1" title="Stop">Stop</a></li>\
								<li><a href="javascript:;" class="jp-mute" tabindex="1" title="Mute">Mute</a></li>\
								<li><a href="javascript:;" class="jp-unmute" tabindex="1" title="Unmute">Unmute</a></li>\
								<li><a href="javascript:;" class="jp-volume-max" tabindex="1" title="Max Volume">Max Volume</a></li>\
							</ul>\
							<div class="jp-volume-bar">\
								<div class="jp-volume-bar-value"></div>\
							</div>\
							<ul class="jp-toggles">\
								<li><a href="javascript:;" class="jp-full-screen" tabindex="1" title="Full Screen">Full Screen</a></li>\
								<li><a href="javascript:;" class="jp-restore-screen" tabindex="1" title="Restore Screen">Restore Screen</a></li>\
								<li><a href="javascript:;" class="jp-repeat" tabindex="1" title="Repeat">Repeat</a></li>\
								<li><a href="javascript:;" class="jp-repeat-off" tabindex="1" title="Repeat Off">Repeat Off</a></li>\
							</ul>\
						</div>\
						<div class="jp-title">\
							<ul>\
								<li></li>\
							</ul>\
						</div>\
					</div>\
				</div>\
				<div class="jp-no-solution">\
					<span>Update Required</span>\
					To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.\
				</div>\
			</div>\
		</div>\
		</div>\
		<div class="textContainer">\
		</div>\
</div>\
	</div>\
</div>\
</div>',
'010101-01.html': '<div class="clearfix Bg010101_01">\
<div class="mainDiv_intro" style="display:block;">\
			<div id="modalBandSelection" style="width:36%;margin:12% auto;display:none;">\
						<div style="padding-bottom:2%;">Select Bandwidth</div>\
						 <div class="row">\
							<div style="float:left;width:50%;"><button id="LowBandwidth">Low Bandwidth</button></div>\
							<div style="float:left;width:50%;"><button id="HighBandwidth">High Bandwidth</button></div>\
						 </div>\
				   </div>\
				<div class="container">\
					<div class="welocome_bg">\
		<div class="view">Best viewed at 800 <span class="cross_text">&#967;</span>  600 resolution</div>\
					<div class="sign">\
					<p class="danger">Managing Postpartum Haemorrhage</p>\
					<p class="line_tab"><img src="Media/eng/images/line_bg.png"/></p>\
					<div class="clickMain_1_01 animated" id="click-cls"><img src="Media/eng/images/launch.png"/></div>\
					</div>\
			<div class="logo_bg"><img src="Media/eng/images/intro_bgone.png"/></div>\
					</div>\
			   </div>\
			</div>\
<div class="page_bg_4" style="display:none;position:relative;top:-37px;">\
   <div class="copy_right"></div>\
   <div class="text_para"></div>\
	<div class="text_para2"></div>\
   <div class="page_footer"></div>\
</div>\
</div>',
'010101-02.html': '<div class="clearfix">\
<div class="pages_bg_2_1" >\
   <div class="lap_para"></div>\
   <div class="laptop_img"></div>\
</div>\
<div class="pages_bg_2_2" style="display:none;">\
   <!--<div class="inform_txt"></div>-->\
   <div class="clock_para"></div>\
   <div class="clock_img"></div>\
   <div class="tree_img"></div>\
   <div class="arrow_img"></div>\
</div>\
</div>',
'010101-03.html': '<div class="clearfix">\
<div class="pages_bg_3" style="display:block">\
   <div class="emergency_para">Baby Ok Losing Blood</div>\
</div>\
</div>',
'010101-04.html': '<div class="clearfix">\
<div class="pages_bg_4" style="display:block">\
   <div class="emergency_para_1">Baby ok, Placenta not out after an hour</div>\
</div>\
</div>',
'010101-05.html': '<div class="clearfix">\
<div class="pages_bg_5" style="display:block">\
   <div class="module_para">In this module...</div>\
</div>\
</div>',
'010101-06.html': '<div class="clearfix pphBg">\
<div class="pages_bg_6" style="display:block">\
   <div class="impac_para">In this module...</div>\
   <div class="impac_box">\
   <div class="impac_bg">\
	   <div class="impac1"><a href="Resource/BAB_ActionPlan.pdf" target="_blank"><img src="Media/eng/images/impac1.png"/></a></div>\
	   <div class="impac2"><a href="Resource/WHO managing pph_eng.pdf" target="_blank"><img src="Media/eng/images/impac2.png"/></a></div>\
   </div>\
    </div>\
    <div class="clear"></div>\
   <div class="impac_footer">Click on the images to view the respective resources.</div>\
</div>\
</div>',
'010101-07.html': '<div class="clearfix pphBg">\
<div class="page_bg_7" style="display:block">\
   <div class="clinical_txts">Clinical Decision-Making Model:</div>\
   <div class="box_container">\<!--Box Container Start 1-->\
		<div class="assess_imgs">Assess</div>\
		<div class="arrow_fades1"><img src="Media/eng/images/arrow_one.png"></div>\
	</div>\<!--Box Container End 1-->\
	<div class="box_container">\<!--Box Container Start 2-->\
		<div class="diagnose_imgs">Diagnose</div>\
		<div class="arrow_fades2"><img src="Media/eng/images/arrow_one.png"></div>\
	</div>\<!--Box Container End 2-->\
	<div class="box_container">\<!--Box Container Start 3-->\
		<div class="provide_imgs">Provide Care</div>\
		<div class="arrow_fades3"><img src="Media/eng/images/arrow_one.png"></div>\
	</div>\<!--Box Container End 3-->\
	<div class="box_container">\<!--Box Container Start 4-->\
		<div class="evaluate_imgs">Evaluate</div>\
		</div>\<!--Box Container End 4-->\
</div>\
</div>',
'010101-08.html': '<div class="clearfix pphBg">\
<div class="pages_bg_8" style="display:block">\
   <div class="clinical_txt">Clinical Decision-Making Model:</div>\
   <div class="how_do_txt">How do I:</div>\
   <div class="box_container">\<!--Box Container Start 1-->\
	<div class="assess_img">Assess</div>\
	<div class="arrow_fade1"><img src="Media/eng/images/arrow_one.png"></div>\
	<div class="assess_para" >Assess pregnant women for factors that may lead to excessive bleeding after birth and assess bleeding in a woman immediately after birth?</div>\
	</div>\<!--Box Container End 1-->\
	<div class="box_container">\<!--Box Container Start 2-->\
	<div class="diagnose_img">Diagnose</div>\
	<div class="arrow_fade2"><img src="Media/eng/images/arrow_one.png"></div>\
	<div class="diagnose_para">Diagnose postpartum haemorrhage and determine the cause of the bleeding?</div>\
	</div>\<!--Box Container End 2-->\
	<div class="box_container">\<!--Box Container Start 3-->\
	<div class="provide_img">Provide Care</div>\
	<div class="arrow_fade3"><img src="Media/eng/images/arrow_one.png"></div>\
	<div class="provide_para">Provide care for women experiencing postpartum haemorrhage?</div>\
	</div>\<!--Box Container End 3-->\
	<div class="box_container">\<!--Box Container Start 4-->\
	<div class="evaluate_img">Evaluate</div>\
	<div class="evaluate_para">Evaluate my care of a woman with postpartum haemorrhage?</div>\
	</div>\<!--Box Container End 4-->\
</div>\
</div>',
'010101-09.html': '<div class="clearfix pphBg">\
<div class="pages_bg_9" style="display:block">\
   <div class="pre_module_txt"></div>\
   <div class="bubble_img"><img src="Media/eng/images/sp_bubble1.png"></div>\
   <div class="bubble_imggif"><img src="Media/eng/images/sp_bubble1.png"></div>\
   <div class="quiz_para">This quiz will not be scored. Your result will help you study more effectively.</div>\
   <div class="lady_img"><img src="Media/eng/images/nurse1.png"></div>\
</div>\
</div>',

'010102-41.html': '<div class="102_41_bg pphBg">\
<div class="questionbgarea_102_41New"><b>Knowledge Check</b></div>\
	<div class="question-body_102_41" style="display: block;">\
		<div class="questionbgarea_102_41">\
			<div class="questionimg_102_41">Q.1</div>\
			<div class="question_102_41">Which of the following groups of complications go with manual removal of the placenta?</div>\
		</div>\
		<div style="clear:both;"></div>\
		<div class="question-option_102_41">\
			<div class="buttonQuiz_102_41 optionsQuiz_102_41">\
	              <div class="correct_102_41_1" style="display: none;"></div>\
				<input type="radio" style="margin:2px -6px;" class="option_102_41" name="saq" id="Option1" value="Option1">\
				<label for="Option1" class="dataQuiz_102_41 optionsQuiz_102_41">Haemorrhage, infection, ruptured uterus</label>\
			</div>\
		</div>\
		<div class="question-option_102_41">\
			<div class="buttonQuiz_102_41 optionsQuiz_102_41">\
	             <div class="incorrect_102_41_1" style="display: none;"></div>\
				<input type="radio" style="margin:2px -6px;" class="option_102_41" name="saq" id="Option2" value="Option1">\
				<label for="Option2" class="dataQuiz_102_41 optionsQuiz_102_41">Haemorrhage, laparotomy, blood transfusion</label>\
			</div>\
		</div>\
		<div class="question-option_102_41">\
			<div class="buttonQuiz_102_41 optionsQuiz_102_41">\
	             <div class="incorrect_102_41_2" style="display: none;"></div>\
				<input type="radio" style="margin:2px -6px;" class="option_102_41" name="saq" id="Option3" value="Option1">\
				<label for="Option3" class="dataQuiz_102_41 optionsQuiz_102_41">Sepsis, maternal exhaustion, failure to breast feed</label>\
			</div>\
		</div>\
		<div class="submit_btn_102_41"></div>\
	</div>\
 </div>',

'010102-42.html': '<div class="102_42_bg pphBg">\
<div class="questionbgarea_102_41New"><b>Knowledge Check</b></div>\
	<div class="question-body_102_42" style="display: block;">\
		<div class="questionbgarea_102_42">\
			<div class="questionimg_102_42">Q.2</div>\
			<div class="question_102_42">Ongoing evaluation after manual removal should include which TWO of the following:</div>\
		</div>\
		<div style="clear:both;"></div>\
		<div class="question-option_102_42">\
			<div class="buttonQuiz_102_42 optionsQuiz_102_42">\
	             <div class="correct_102_42_1 correct1" style="display: none;"></div>\
				<input type="checkbox" style="margin:2px -6px;" class="option_102_42" name="saq" id="Option1" value="Option1">\
				<label for="Option1" class="dataQuiz_102_42 optionsQuiz_102_42">V/S q 15 min x 2 hours, then Q30 min x 6-8 hrs</label>\
			</div>\
		</div>\
		<div class="question-option_102_42">\
			<div class="buttonQuiz_102_42 optionsQuiz_102_42">\
	            <div class="incorrect_102_42_1 incorrect1" style="display: none;"></div>\
				<input type="checkbox" style="margin:2px -6px;" class="option_102_42" name="saq" id="Option2" value="Option1">\
				<label for="Option2" class="dataQuiz_102_42 optionsQuiz_102_42">Delay breastfeeding for 24 hours</label>\
			</div>\
		</div>\
		<div class="question-option_102_42">\
			<div class="buttonQuiz_102_42 optionsQuiz_102_42">\
	            <div class="incorrect_102_42_1 incorrect2" style="display: none;"></div>\
				<input type="checkbox" style="margin:2px -6px;" class="option_102_42" name="saq" id="Option3" value="Option1">\
				<label for="Option3" class="dataQuiz_102_42 optionsQuiz_102_42">Restrict oral fluids for 12 hours</label>\
			</div>\
		</div>\
		<div class="question-option_102_42">\
			<div class="buttonQuiz_102_42 optionsQuiz_102_42">\
	            <div class="correct_102_42_1 correct2" style="display: none;"></div>\
				<input type="checkbox" style="margin:2px -6px;" class="option_102_42" name="saq" id="Option4" value="Option1">\
				<label for="Option4" class="dataQuiz_102_42 optionsQuiz_102_42">Continue IV oxytocin, 20 u in 1L</label>\
			</div>\
		</div>\
		<div class="question-option_102_42">\
			<div class="buttonQuiz_102_42 optionsQuiz_102_42">\
	             <div class="incorrect_102_42_1 incorrect3" style="display: none;"></div>\
				<input type="checkbox" style="margin:2px -6px;" class="option_102_42" name="saq" id="Option5" value="Option1">\
				<label for="Option5" class="dataQuiz_102_42 optionsQuiz_102_42">Continue antibiotics for 24 hours</label>\
			</div>\
		</div>\
		<div class="submit_btn_102_42"></div>\
	</div>\
	<div class="feedback_102_42" style="display: none;">\
		<div class="correctfeedback_102_42" style="display: block;">Continue routine care if there is no Haemorrhage, but observe for 24 hours. Because she is at higher risk for Haemorrhage, continue the IV oxytocin until stable and bleeding is controlled.</div>\
		<div class="wrongfeedback_102_42" style="display: none;">Continue routine care if there is no Haemorrhage, but observe for 24 hours. Because she is at higher risk for Haemorrhage, continue the IV oxytocin until stable and bleeding is controlled.</div>\
	</div>\
 </div>',
 

'010102-43.html': '<div class="pages2_bg_43 pphBg">\
	<div class="k_text2">Key Points</div>\
	<div class="white_div">\
		<div class="images_col" style="display:block">\
			<div class="small1"><img src="Media/eng/images/small1.png"></div>\
			<div class="small2"><img src="Media/eng/images/small2.png"></div>\
			<div class="small3"><img src="Media/eng/images/small3.png"></div>\
			<div class="down_size">\
			<div class="helps1">Help</div>\
			<div class="small4"><img src="Media/eng/images/small4.png"></div>\
			<div class="small5"><img src="Media/eng/images/small5.png"></div>\
			</div>\
			<div class="clear"></div>\
		<div class="c_click1">Click on each image for reviewing the key points.</div>\
		</div>\
	</div>\
		</div>\
		<div class="white_div2" style="display:none;">\
		<div class="images_col2">\
		<div class="close_tabs_43" style="display:none;"><p class="close_tabs_txt_43" style="display:none;">Close</p></div>\
			<div class="b_img1" style="display:none;"><img src="Media/eng/images/big1.png"></div>\
			<div class="b_img2" style="display:none;"><img src="Media/eng/images/big2.png"></div>\
			<div class="b_img3" style="display:none;"><img src="Media/eng/images/big3.png"></div>\
			<div class="b_img4" style="display:none;"><img src="Media/eng/images/big4.png"></div>\
			<div class="b_img5" style="display:none;"><img src="Media/eng/images/big5.png"></div>\
			<div class="helps2" style="display:none;">Help</div>\
		</div>\
</div>',



'010102-44.html': '<div class="clearfix pphBg">\
<div class="pages_bg_102_45" style="display:block">\
   <div class="assess_head1_102_45"></div>\
   <div class="boxss_container_102_45">\
		<div class="assess_gra_102_45">Assess</div>\
		<div class="a_fade1_102_45"><img src="Media/eng/images/arrow_one.png"></div>\
		<div class="close_tabs_102_45" style="display:none;"><p class="close_tabs_txt_102_44" style="display:none;">Close</p></div>\
		<div class="assess_red_bg_102_45" style="display:none">How much time has passed?<br>Is the bleeding excessive?<br>Is the woman’s condition stable?</div>\
	</div>\
	<div class="boxss_container_102_45">\
		<div class="diagnose_gra_102_45">Diagnose</div>\
		<div class="a_fade2_102_45"><img src="Media/eng/images/arrow_one.png"></div>\
		<div class="close_tabs_102_45_1" style="display:none;"><p class="close_tabs_txt_102_44_1" style="display:none;">Close</p></div>\
		<div class="assess_green_bg_102_45" style="display:none">Manual removal & uterotonic<br>Give antibiotics & IV fluid; manage pain/sedate<br>Prepare for an emergency</div>\
	</div>\
	<div class="boxss_container">\
		<div class="provide_gra_102_45">Provide Care</div>\
		<div class="a_fade3_102_45"><img src="Media/eng/images/arrow_one.png"></div>\
		<div class="close_tabs_102_44_2" style="display:none;"><p class="close_tabs_txt_102_44_2" style="display:none;">Close</p></div>\
		<div class="assess_parpal_bg_102_45" style="display:none;">No placenta after 30 min/1 hr = retained placenta</div>\
	</div>\
	<div class="boxss_container_102_45">\
		<div class="evaluate_gra_102_45">Evaluate</div>\
		<div class="assess_blue_bg_102_45" style="display:block">Uterus firm and contracting?<br>Bleeding controlled?<br>Vital signs stable?</div>\
	</div>\
	<div class="bottamcon_102_45">Click on Assess/ Diagnose/ Provide care to view the key questions, if you would like to review them again.</div>\
</div>\
</div>',

'010102-45.html': '<div class="main_area_2_45 pphBg">\
	<div class="cont_left_2_45">\
	<div class="diagnosis_txt" >What is your diagnosis?</div>\
		<div class="nurse3_img"><img src="Media/eng/images/nurse3.png"></div>\
		<div class="think_bub1" >Is her condition stable?</div>\
		<div class="think_bub2" >Is the placenta complete?</div>\
		<div class="think_bub3">Is bleeding controlled?</div>\
		<div class="think_bub4" >Does she have any lacerations or tears?</div>\
	</div>\
	<div class="cont_right_2_45">\
		<div class="mr-name_2_45">Mrs. B</div>\
		<div class="lmp_2_45">\
		<p class="topic1"><b>VS:</b>T: 38 C, P: 90<br> BP: 118/64<br><br></p>\
		<p class="topic2"><b>PE:</b>Uterus contracted, Placenta complete<br><br></p>\
		<p class="topic3">Small amount bleeding<br><br></p>\
		<p class="topic4">No lacerations</p>\
		</div>\
	</div>\
</div>',

'010102-46.html': '<div class="pages2_bg_32 pphBg">\
	<div class="keys_text2">Key Points</div>\
	<div class="white_boxes">\
		<div class="images_divs" style="display:block">\
			<div class="img_46_1"><img src="Media/eng/images/img_46_1.png"></div>\
			<div class="img_46_2"><img src="Media/eng/images/img_46_2.png"></div>\
			<div class="img_46_3"><img src="Media/eng/images/img_46_3.png"></div>\
			<div class="clear"></div>\
		<div class="c_click">Click on each image for reviewing the key points</div>\
		</div>\
		<div class="images_divs2">\
		<div class="close_tabs_46" style="display:none;"><p class="close_tabs_txt_46" style="display:none;">Close</p></div>\
			<div class="big_img1" style="display:none;"><img src="Media/eng/images/S1.png"></div>\
			<div class="big_img2" style="display:none;"><img src="Media/eng/images/S2.png"></div>\
			<div class="big_img3" style="display:none;"><img src="Media/eng/images/S3.png"></div>\
		</div>\
	</div>\
</div>',


'010102-47.html': '<div class="pages2_bg_32 pphBg">\
	<div class="white_box">\
	<div class="keys_text">Key Points</div>\
		<div class="blu_divs">\
			<div class="blu_tab1">1. Bleeding can be ‘hidden’, save a life and act quickly!</div>\
			<div class="blu_tab2">2. Prepare for an emergency</div>\
			<div class="blu_tab3">3. Prep and provide pain management</div>\
			<div class="blu_tab4">4. Manage shock as needed</div>\
			<div class="blu_tab5">5. Prepare for transport if needed</div>\
		</div>\
		<div class="img_47"><img src="Media/eng/images/img_47.png"></div>\
	</div>\
</div>',


'010103-01.html': '<div class="clearfix pphBg">\
<div class="mainDiv_summary" style="display:block;">\
			<div id="modalBandSelection" style="width:36%;margin:12% auto;display:none;">\
						<div style="padding-bottom:2%;">Select Bandwidth</div>\
						 <div class="row">\
							<div style="float:left;width:50%;"><button id="LowBandwidth">Low Bandwidth</button></div>\
							<div style="float:left;width:50%;"><button id="HighBandwidth">High Bandwidth</button></div>\
						 </div>\
				   </div>\
				<div class="container">\
					<div class="welocome_bg">\
		<div class="view">Best viewed at 800 <span class="cross_text">&#967;</span>  600 resolution</div>\
					<div class="sign">\
					<p class="danger">Managing Postpartum Haemorrhage</p>\
					<p class="line_tab"><img src="Media/eng/images/line_bg.png"/></p>\
					<div class="clickMain_3_01 animated" id="click-cls"><img src="Media/eng/images/launch.png"/></div>\
					</div>\
			<div class="logo_bg"><img src="Media/eng/images/intro_bgone.png"/></div>\
					</div>\
			   </div>\
			</div>\
<div class="pages3_bg_01" style="display:none;">\
   <div class="model_txt">Let the model be your guide.</div>\
      <div class="how_txt">How do I:</div>\
   <div class="wrap_container">\<!--wrap Container Start 1-->\
	<div class="assess_grap">Assess</div>\
	<div class="arrow_point1"><img src="Media/eng/images/arrow_one.png"></div>\
	<div class="assess_mod" >Assess pregnant women for factors that may lead to excessive bleeding after birth and assess bleeding in a newly delivered woman?</div>\
	</div>\<!--wrap Container End 1-->\
	<div class="wrap_container">\<!--wrap Container Start 2-->\
	<div class="diagnose_grap">Diagnose</div>\
	<div class="arrow_point2"><img src="Media/eng/images/arrow_one.png"></div>\
	<div class="diagnose_mod">Diagnose postpartum haemorrhage and determine the cause of the bleeding? </div>\
	</div>\<!--wrap Container End 2-->\
	<div class="wrap_container">\<!--wrap Container Start 3-->\
	<div class="provide_grap">Provide Care</div>\
	<div class="arrow_point3"><img src="Media/eng/images/arrow_one.png"></div>\
	<div class="provide_mod">Provide care for women experiencing postpartum haemorrhage? </div>\
	</div>\<!--wrap Container End 3-->\
	<div class="wrap_container">\<!--wrap Container Start 4-->\
	<div class="evaluate_grap">Evaluate</div>\
	<div class="evaluate_mod">Evaluate my care of a woman with postpartum haemorrhage?</div>\
	</div>\<!--wrap Container End 4-->\
	<div class="arrow_animation" style="display:none"><img src="Media/eng/images/arrow_animation.gif"></div>\
	<div class="summaze_txt">Let us summarize what you have learnt in this module.</div>\
</div>\
</div>',
'010103-02.html': '<div class="clearfix pphBg">\
<div class="pages3_bg_02" style="display:block">\
   <!--<div class="view_txts" style="display:block;"></div>-->\
   <div class="sel_txt_03_02">Click on each of the 4 parts of the Clinical Decision Making Model to view the key actions.</div>\
   <div class="boxss_container_103_02">\
		<div class="assess_gra_103_02">Assess</div>\
		<div class="a_fade1_103_02"><img src="Media/eng/images/arrow_fade.png"></div>\
	</div>\
	<div class="boxss_container_103_02">\
		<div class="diagnose_gra_103_02">Diagnose</div>\
		<div class="a_fade2_103_02"><img src="Media/eng/images/arrow_fade.png"></div>\
	</div>\
	<div class="boxss_container_103_02">\
		<div class="provide_gra_103_02">Provide Care</div>\
		<div class="a_fade3_103_02"><img src="Media/eng/images/arrow_one.png"></div>\
	</div>\
	<div class="boxss_container_103_02">\
		<div class="evaluate_gra_103_02">Evaluate</div>\
	</div>\
	<div class="view_list_bg">\
		<ul class="view_unorder">\
			<li class="a_list1">Uterotonics at every birth = the best prevention.</li>\
			<li class="a_list2">Find cause of bleeding and treat it</li>\
			<li class="a_list3">Suspect uterine atony</li>\
			<li class="a_list4">Massage a soft uterus</li>\
			<li class="a_list5">Be prepared, be ready to manage shock</li>\
			<li class="a_list6">Preparation and quick action will save lives</li>\
		</ul>\
	</div>\
		<div class="clear">\</div>\
		<div class="quick_bg">With quick action and careful attention, you will save lives, both of the woman, and her baby!</div>\
</div>\
<div class="Key_pop">\<!-- KEY POP Start-->\
		<div class="close_tabs_103_02" style="display:none;"><p class="close_tabs_txt_103_02" style="display:none;">Close</p></div>\
		<div class="R_Popup" style="display:none">\<!-- R_Popup Start-->\
			<div class="P_box1">\<!-- P-BOX 1 Start-->\
			<div class="top_1">Assess</div>\
				<div class="P_lefts"><p><b>For Uterine Atony:</b></p>Is the placenta in or out?<br>Is the uterus firm and contracting?<br>Is the bladder full?<br>Is the woman&#39;s condition stable?</div>\
				<div class="P_rights"><p><b>For Retained Placenta, CCT not effective:</b></p>How much time has passed?<br>Is the bleeding excessive?<br>Is the woman&#39;s condition stable?</div>\
			</div>\<!-- P-BOX 1 End-->\
		</div>\<!-- R_Popup End-->\
		<div class="G_Popup" style="display:none">\<!-- G_Popup Start-->\
			<div class="P_box2">\<!-- P-BOX 1 Start-->\
			<div class="top_2">Diagnose</div>\
				<div class="P_lefts"><p><b>For Uterine Atony:</b></p>Is bleeding excessive?<br>Is the woman in shock or not?</div>\
				<div class="P_rights"><p><b>For Retained Placenta, CCT not effective:</b></p>No placenta after 30 min/1 hr = retained placenta</div>\
			</div>\<!-- P-BOX 2 End-->\
		</div>\<!-- G_Popup End-->\
		<div class="P_Popup" style="display:none">\<!-- P_Popup Start-->\
			<div class="P_box3">\<!-- P-BOX 3 Start-->\
			<div class="top_3">Provide Care</div>\
				<div class="P_lefts"><p><b>For Uterine Atony:</b></p>Give uterotonics<br>Find & repair lacerations/tears<br>Be prepared & manage an emergency or shock</div>\
				<div class="P_rights"><p><b>For Retained Placenta, CCT not effective:</b></p>If woman starts to bleed heavily only 45 or 30 min after delivery, you need to take action.  Do not wait for one hour to act.<br>Manual removal & uterotonic<br>Give antibiotics & IV fluid; manage pain/sedate<br>Prepare for an emergency</div>\
			</div>\<!-- P-BOX 3 End-->\
		</div>\<!-- P_Popup End-->\
		<div class="B_Popup" style="display:none">\<!-- B_Popup Start-->\
			<div class="P_box4">\<!-- P-BOX 4 Start-->\
			<div class="top_4">Evaluate</div>\
				<div class="P_lefts"><p><b>For Uterine Atony:</b></p>Is the uterus responding?<br>Cause of bleeding identified?<br>Vital signs/stable/bleeding decreasing?</div>\
				<div class="P_rights"><p><b>For Retained Placenta, CCT not effective:</b></p>Uterus firm and contracting?<br>Bleeding controlled?<br>Vital signs stable?</div>\
			</div>\<!-- P-BOX 4 End-->\
		</div>\<!-- B_Popup End-->\
	</div>\<!-- KEY POP End-->\
</div>',
'010103-03.html': '<div class="clearfix pphBg">\
<div class="pages3_bg_3" style="display:block">\
   <div class="congrate_img_bg">\
      <div class="congrate_txt">Congratulations!</div>\
	  <div class="lady_graphics"><img src="Media/eng/images/cong_lady.png"></div>\
	  <div class="post_title1">You have completed the module on Managing Postpartum Haemorrhage!</div>\
	  <div class="post_title">Take the Post-Module Quiz</div>\
	  <div class="quiz_title">This quiz is scored</div>\
	  <div class="green_patch_bg">We hope your study of this module will help you improve your practice.</div>\
   </div>\
   <div class="arr1_graphics"><img src="Media/eng/images/arrow_one.png"></div>\
   <div class="red1_graphics"><img src="Media/eng/images/red_patch.png"></div>\
</div>\
</div>',
'010102-01.html':'<div class="clearfix">\
<div class="mainDiv_lesson" style="display:block;">\
			<div id="modalBandSelection" style="width:36%;margin:12% auto;display:none;">\
						<div style="padding-bottom:2%;">Select Bandwidth</div>\
						 <div class="row">\
							<div style="float:left;width:50%;"><button id="LowBandwidth">Low Bandwidth</button></div>\
							<div style="float:left;width:50%;"><button id="HighBandwidth">High Bandwidth</button></div>\
						 </div>\
				   </div>\
				<div class="container">\
					<div class="welocome_bg">\
		<div class="view">Best viewed at 800 <span class="cross_text">&#967;</span> 600 resolution</div>\
					<div class="sign">\
					<p class="danger">Managing Postpartum Haemorrhage</p>\
					<p class="line_tab"><img src="Media/eng/images/line_bg.png"/></p>\
					<div class="clickMain_2_01 animated" id="click-cls"><img src="Media/eng/images/launch.png"/></div>\
					</div>\
			<div class="logo_bg"><img src="Media/eng/images/intro_bgone.png"/></div>\
					</div>\
			   </div>\
			</div>\
<div class="pages_2_bg_1" style="display:none;">\
	<div class="impText"></div>\
	<div class="keyPointText"></div>\
   <div class="tab-list">\
   <ul>\
   <li class="list_1"></li>\
   <li class="list_2"></li>\
   <li class="list_3"></li>\
   <li class="list_4"></li>\
   <li class="list_5"></li>\
   </ul>\
   </div>\
   <div class="video_img"><img src="Media/eng/images/video_btn.png"></div>\
   <div class="click_footer"></div>\
</div>\
<div class="video_temp_2_01" style="display:none">\
		<div class="video_temp_2_01_bg">\
		<div style="    margin: 86px auto; width: 60%;text-align: center;">\
		<video id="example_video_1" controls  preload="auto" width="100%" height="auto" style="text-align:center;">\
                          <source src="Media/eng/video/respectful_care_at_birth.mp4" type="video/mp4" /></video>\
		</div>\
		<div class="close_tabs_2_01" style="display:block;"></div>\
	<div class="YesText" style="display:none;">Close</div>\
		</div>\
</div>\
</div>',
'010102-02.html': '<div class="clearfix">\
<div class="pages_2_bg_acc" style="display:block">\
  <div class="mod_txt"></div>\
   <div class="BoxSection">\
	<div class="box_cont">\<!--Box Cont Start 1-->\
	<div class="assess_image">Assess</div>\
	<div class="arr_fade1"><img src="Media/eng/images/arrow_one.png"></div>\
	</div>\<!--Box Cont End 1-->\
	<div class="box_cont2">\<!--Box Cont Start 2-->\
	<div class="diagnose_image">Diagnose</div>\
	<div class="arr_fade2"><img src="Media/eng/images/arrow_one.png"></div>\
	</div>\<!--Box Cont End 2-->\
	<div class="box_cont3">\<!--Box Cont Start 3-->\
	<div class="provide_image">Provide Care</div>\
	<div class="arr_fade3"><img src="Media/eng/images/arrow_one.png"></div>\
	</div>\<!--Box Cont End 3-->\
	<div class="box_cont4">\<!--Box ContStart 4-->\
	<div class="evaluate_image">Evaluate</div>\
	</div>\<!--Box Cont End 4-->\
	</div>\
</div>\
<div class="pages_2_bg_acc_2" style="display:none">\
	<div class="mod_txt"></div>\
	<div class="sli_2">\
	  <div class="clearfix ModuleLearnSection">\
	   <div class="YellowBg YellowBg1"></div>\
	   <div class="Atony"></div>\
	  </div>\
	<div class="clearfix ModuleLearnSection">\
	   <div class="YellowBg YellowBg2"></div>\
	   <div class="Atony Placenta"></div>\
	  </div>\
	</div>\
</div>\
</div>',
'010102-03.html': '<div class="clearfix pphBg">\
<ul class="pphWhiteBg">\
	<li class="pphImg1"></li>\
	<li class="pphImg2" style="margin-top: 9px;"></li>\
	<li class="pphImg3" style="margin-top: 11px;"></></li>\
	<li class="pphImg4"></li>\
	<li class="pphImg5"></li>\
</ul>\
</div>',
'010102-04.html': '<div class="clearfix pphBg">\
<div class="mod_txt"></div>\
<div class="WhiteBg2">\
	<div class="NormalBleeding"></div>\
	<div class="ExcessiveBleeding"></div>\
	<div class="BleedingImg"></div>\
	<div class="BleedingSection">\
	  <div class="Bleeding300">\
	   <div class="Bleeding300Img"></div>\
	    <div class="Bleeding300Desc"></div>\
	 </div>\
	<div class="Bleeding500">\
	   <div class="Bleeding500Img"></div>\
	    <div class="Bleeding500Desc"></div>\
	 </div>\
	</div>\
	<div class="UterusText"></div>\
</div>\
	<div class="OverviewText"></div>\
</div>',
'010102-05.html': '<div class="clearfix pphBg">\
    <div class="CauseWhiteBg">\
		  <div class="CauseTopSection clearfix">\
		    <div class="CauseSection CauseSection1">\
		      <div class="CauseImg CauseImg1"></div>\
		      <div class="CauseDesc CauseDesc1"></div>\
		    </div>\
            <div class="CauseSection CauseSection2">\
		      <div class="CauseImg CauseImg2"></div>\
		      <div class="CauseDesc CauseDesc2"></div>\
		    </div>\
		 </div>\
		<div class="Trauma">\
		  <span class="TraumaText1"></span>\
		  <span class="TraumaText2 SpanText1"></span>\
		  <span class="TraumaText3 SpanText2"></span>\
	    </div>\
		<div class="Thrombin">\
		  <span class="ThrombinText1"></span>\
		  <span class="ThrombinText2 SpanText1"></span>\
		  <span class="ThrombinText3 SpanText2"></span>\
	    </div>\
		<div class="ToneText"></div>\
	</div>\
</div>',
'010102-06.html': '<div class="clearfix pphBg">\
<div class="whiteTreatmentBg">\
 <div class="TreatmentYellowBg TreatmentYellowBg1"></div>\
<div class="TreatmentYellowBg TreatmentYellowBg2">\
     <span></span>\
	 <div class="PreventImg1"></div>\
	 <div class="PreventImg2"></div>\
</div>\
<div class="TreatmentYellowBg TreatmentYellowBg3">\
	 <span></span>\
	 <div class="PreventImg3"></div>\
</div>\
<div class="recomendattionText"></div>\
<div class="ClickVideoTextSection clearfix">\
  <div class="ClickVideoImg"></div>\
  <div class="ClickVideoDesc"></div>\
</div>\
</div>\
	<div class="video_temp_2_01" style="display:none">\
		<div class="video_temp_2_01_bg">\
		<div style="    margin: 60px auto 0; width: 60%;text-align: center;">\
		<video id="example_video_1" controls preload="auto" width="100%" height="auto" style="text-align:center;">\
                          <source src="Media/eng/video/MAFPostpartumHaemorrhagePrevention_6.mp4" type="video/mp4" /></video>\
		</div>\
		<div class="close_tabs_2_01" style="display:block;"></div>\
	<div class="YesText" style="display:none;">Close</div>\
		</div>\
</div>\
<div class="PreventImgPopup PreventImg1Popup" style="display:none;">\
<div class="PreventImg1PopupSpacing">\
	<div class="PreventImg1PopupImg"></div>\
	<div class="PreventImgPopupClose"></div>\
	<div class="PreventImgPopupCloseText" style="display:none;"></div>\
</div>\
</div>\
<div class="PreventImgPopup PreventImg2Popup" style="display:none;">\
<div class="PreventImg2PopupSpacing">\
	<div class="PreventImg2PopupImg"></div>\
	<div class="PreventImgPopupClose"></div>\
	<div class="PreventImgPopupCloseText" style="display:none;"></div>\
</div>\
</div>\
<div class="PreventImgPopup PreventImg3Popup" style="display:none;">\
<div class="PreventImg3PopupSpacing">\
	<div class="PreventImg3PopupImg"></div>\
	<div class="PreventImgPopupClose"></div>\
	<div class="PreventImgPopupCloseText" style="display:none;"></div>\
</div>\
</div>\
</div>',
'010102-07.html': '<div class="clearfix pphBg">\
    <div class="BeginWhiteBg clearfix">\
		 <div class="BeginImg0"></div>\
		 <div class="BeginImg1"></div>\
		 <div class="BeginImg2"></div>\
	</div>\
</div>',
'010102-08.html': '<div class="clearfix pphBg">\
<div class="pages_bg_6" style="display:block">\
   <div class="boxes_container">\<!--Box Container Start 1-->\
	<div class="assess_gra">Assess</div>\
	<div class="a_fade1"><img src="Media/eng/images/arrow_fade.png"></div>\
	<div class="assess_red_bg" ></div>\
	</div>\<!--Box Container End 1-->\
	<div class="boxes_container">\<!--Box Container Start 2-->\
	<div class="diagnose_gra">Diagnose</div>\
	<div class="a_fade2"><img src="Media/eng/images/arrow_fade.png"></div>\
	</div>\<!--Box Container End 2-->\
	<div class="boxes_container">\<!--Box Container Start 3-->\
	<div class="provide_gra">Provide Care</div>\
	<div class="a_fade3"><img src="Media/eng/images/arrow_fade.png"></div>\
	</div>\<!--Box Container End 3-->\
	<div class="boxes_container">\<!--Box Container Start 4-->\
	<div class="evaluate_gra">Evaluate</div>\
	</div>\<!--Box Container End 4-->\
</div>\
</div>',
'010102-09.html': '<div class="clearfix pphBg">\
<div class="actionImg"></div>\
<div class="actionClick">\
	<div class="actionText"></div>\
	<div class="ActionClickSection">\
	  <div class="ActionTabSection">\
	    <div class="ActionTab ActionTab1"></div>\
	    <div class="ActionTick ActionTick1"></div>\
	  </div>\
      <div class="ActionTabSection">\
	    <div class="ActionTab ActionTab2"></div>\
	    <div class="ActionTick ActionTick2"></div>\
	  </div>\
	  <div class="ActionTabSection">\
	    <div class="ActionTab ActionTab3"></div>\
	    <div class="ActionTick ActionTick3"></div>\
	  </div>\
     <div class="ActionTabSection">\
	    <div class="ActionTab ActionTab4"></div>\
	    <div class="ActionTick ActionTick4"></div>\
	  </div>\
      <div class="ActionTabSection">\
	    <div class="ActionTab ActionTab5"></div>\
	    <div class="ActionTick ActionTick5"></div>\
	  </div>\
	 <div class="ActionTabSection">\
	    <div class="ActionTab ActionTab6"></div>\
	    <div class="ActionTick ActionTick6"></div>\
	  </div>\
	 <div class="ActionTabSection">\
	    <div class="ActionTab ActionTab7"></div>\
	    <div class="ActionTick ActionTick7"></div>\
	  </div>\
	</div>\
	<div class="CallText"></div>\
	<div class="actionImg2"></div>\
</div>\
</div>',
'010102-10.html': '<div class="clearfix pphBg">\
<div class="BubbleSection">\
	<div class="BubbleHeading"></div>\
	<div class="nurseSection">\
	  <div class="NurseImg"></div>\
	  <div class="NurseBubble NurseBubble1"></div>\
	  <div class="NurseBubble NurseBubble2"></div>\
	  <div class="NurseBubble NurseBubble3"></div>\
	  <div class="NurseBubble NurseBubble4"></div>\
	</div>\
</div>\
<div class="NotepadeSection">\
	<div class="NotepadHeading"></div>\
	<div class="NotepadeText NotepadeText1"></div>\
	<div class="NotepadeText NotepadeText2"></div>\
	<div class="NotepadeText NotepadeText3"></div>\
	<div class="NotepadeText NotepadeText4"></div>\
</div>\
</div>',
'010102-11.html': '<div class="clearfix pphBg">\
<div class="BladderWhiteBg clearfix">\
	<div class="PlacnetaImg"></div>\
	<div class="BladderImg"></div>\
</div>\
<!-- WhiteBg End -->\
<div class="BladderQueSection">\
	 <div class="BladderQueBg">\
	   <div class="BladderQue">\
	     <span></span>\
	     <p></p>\
	   </div>\
	<div class="BladderOption">\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick1"></div>\
	      <input type="radio" class="BladderOption BladderOption1" name="Bladder" id="1" value="True">\
		  <label for="1" class="BladderOptionLabel">True</label>\
	   </div>\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick2"></div>\
	      <input type="radio" class="BladderOption BladderOption2" name="Bladder" id="2" value="False">\
		  <label for="2" class="BladderOptionLabel">False</label>\
	   </div>\
	</div>\
	<button class="BladderBtn"></button>\
     </div>\
</div>\
<!-- BladderQueSection End -->\
	<div class="BladderFeedback"></div>\
</div>',
'010102-12.html': '<div class="clearfix pphBg">\
    <div class="keyPointWhiteBg">\
		<div class="keyPointHeading"></div>\
		<div class="KeyPointYellowBg KeyPointYellowBg1">\
		    <span></span>\
		    <div class="KeyPointImg KeyPointImg1"></div>\
		</div>\
		<div class="KeyPointYellowBg KeyPointYellowBg2">\
		    <span></span>\
		    <div class="KeyPointImg KeyPointImg2"></div>\
		</div>\
		<div class="KeyPointYellowBg KeyPointYellowBg3">\
		    <span></span>\
		    <div class="KeyPointImg KeyPointImg3"></div>\
		</div>\
		<div class="KeyPointYellowBg KeyPointYellowBg4">\
		    <span></span>\
		    <div class="KeyPointImg KeyPointImg4"></div>\
		</div>\
	</div>\
</div>',
'010102-13.html': '<div class="clearfix pphBg">\
<div class="pages_bg_102_19" style="display:block">\
   <div class="assess_head1_102_19"></div>\
   <div class="boxes_container_102_19">\
	<div class="assess_gra_102_19">Assess</div>\
	<div class="a_fade1_102_19"><img src="Media/eng/images/arrow_one.png"></div>\
	<div class="close_tabs_102_19" style="display:none;"><p class="close_tabs_txt_102_19" style="display:none;">Close</p></div>\
	<div class="assess_red_bg_102_19" style="display:none">Is the placenta in or out?<br>Is the uterus firm and contracting?<br>Is the bladder full?<br>Is the woman&#39;s condition stable?</div>\
	</div>\
	<div class="boxes_container_102_19">\
	<div class="diagnose_gra_102_19">Diagnose</div>\
	<div class="a_fade2_102_19"><img src="Media/eng/images/arrow_fade.png"></div>\
	<div class="assess_green_bg_102_19">Is bleeding excessive?<br>Is the woman in shock or not?</div>\
	</div>\
	<div class="boxes_container">\
	<div class="provide_gra_102_19">Provide Care</div>\
	<div class="a_fade3_102_19"><img src="Media/eng/images/arrow_fade.png"></div>\
	</div>\
	<div class="boxes_container_102_19">\
	<div class="evaluate_gra_102_19">Evaluate</div>\
	</div>\
	<div class="bottamcon_102_27"><i>Click on Assess to view the key questions, if you would like to review them again.</i></div>\
</div>\
</div>',
'010102-14.html': '<div class="clearfix pphBg">\
<div class="BubbleSection">\
	<div class="BubbleHeading"></div>\
	<div class="nurseSection">\
	  <div class="NurseImg"></div>\
	  <div class="NurseBubble NurseBubble1"></div>\
	  <div class="NurseBubble NurseBubble2" style="padding:36px 15px 48px 108px;"></div>\
	  <div class="NurseBubble NurseBubble3"></div>\
	  <div class="NurseBubble NurseBubble4" style="padding:46px 15px 48px 79px; width: 171px; text-align: center;"></div>\
	  <div class="NurseImg2"></div>\
	</div>\
</div>\
<div class="NotepadeSection">\
	<div class="NotepadHeading"></div>\
	<div class="NotepadeText NotepadeText1"></div>\
	<div class="NotepadeText NotepadeText2"></div>\
	<div class="NotepadeText NotepadeText3"></div>\
	<div class="NotepadeText NotepadeText4"></div>\
</div>\
</div>',
'010102-15.html': '<div class="clearfix pphBg">\
<div class="BladderQueSection">\
	 <div class="BladderQueBg">\
	   <div class="BladderQue">\
	     <span></span>\
	     <p></p>\
	   </div>\
	<div class="BladderOption">\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick1"></div>\
	      <input type="radio" class="BladderOption BladderOption1" name="Bladder" id="1" value="1">\
		  <label for="1" class="BladderOptionLabel">You have identified that her bladder is full</label>\
	   </div>\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick2"></div>\
	      <input type="radio" class="BladderOption BladderOption2" name="Bladder" id="2" value="2">\
		  <label for="2" class="BladderOptionLabel">There are no obvious vaginal or cervical tears</label>\
	   </div>\
	<div class="BladderOptionSection">\
          <div class="BladderTick BladderTick3"></div>\
	      <input type="radio" class="BladderOption BladderOption3" name="Bladder" id="3" value="3">\
		  <label for="3" class="BladderOptionLabel">The placenta is out, and the uterus is soft</label>\
	   </div>\
	</div>\
	<button class="BladderBtn" style="margin-top: 9px;"></button>\
     </div>\
</div>\
<!-- BladderQueSection End -->\
<div class="BladderFeedback"></div>\
</div>',
'010102-16.html': '<div class="clearfix pphBg">\
<div class="BladderQueSection">\
	 <div class="BladderQueBg">\
	   <div class="BladderQue">\
	     <span></span>\
	     <p></p>\
	   </div>\
	<div class="BladderOption">\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick1"></div>\
	      <input type="radio" class="BladderOption BladderOption1" name="Bladder" id="1" value="1">\
		  <label for="1" class="BladderOptionLabel">True</label>\
	   </div>\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick2"></div>\
	      <input type="radio" class="BladderOption BladderOption2" name="Bladder" id="2" value="2">\
		  <label for="2" class="BladderOptionLabel">False</label>\
	   </div>\
	</div>\
	<button class="BladderBtn" style="margin-top: 68px;"></button>\
     </div>\
</div>\
<!-- BladderQueSection End -->\
<div class="MCQFeedbackSection">\
	<div class="VitalFeedback"></div>\
	<div class="VitalFeedbackSection">\
	  <div class="VitalFeedbackHeading"></div>\
	 <div class="VitalFeedback2"></div>\
    </div>\
</div>\
</div>',
'010102-17.html': '<div class="clearfix pphBg">\
<div class="KeyActionWhiteBg clearfix">\
	 <div class="keyActiontitle"></div>\
	<div class="KeyAction1Section">\
	   <div class="KeyAction1Heading KeyActionHeading"></div>\
	   <div class="KeyAction1Img"></div>\
	</div>\
	<div class="KeyAction2Section">\
	   <div class="KeyAction2Heading KeyActionHeading"></div>\
	   <div class="KeyAction2Img"></div>\
	</div>\
	<div class="KeyAction3Section">\
	   <div class="KeyAction3Heading KeyActionHeading"></div>\
	   <div class="KeyAction3Img"></div>\
	</div>\
	<div class="KeyAction4Section">\
	   <div class="KeyAction4Heading KeyActionHeading"></div>\
	   <div class="KeyAction4Img"></div>\
	</div>\
</div>\
</div>',
'010102-18.html': '<div class="clearfix pphBg">\
<div class="pages_bg_102_27" style="display:block">\
   <div class="assess_head1_102_27"></div>\
   <div class="boxes_container_102_27">\
	<div class="assess_gra_102_27">Assess</div>\
	<div class="a_fade1_102_27"><img src="Media/eng/images/arrow_one.png"></div>\
	<div class="close_tabs_102_27" style="display:none;"><p class="close_tabs_txt_102_27" style="display:none;">Close</p></div>\
	<div class="assess_red_bg_102_27" style="display:none">Is the placenta in or out?<br>Is the uterus firm and contracting?<br>Is the bladder full?<br>Is the woman&#39;s condition stable?</div>\
	</div>\
	<div class="boxes_container_102_27">\
	<div class="diagnose_gra_102_27">Diagnose</div>\
	<div class="a_fade2_102_27"><img src="Media/eng/images/arrow_one.png"></div>\
	<div class="close_tabs_102_27_1" style="display:none;"><p class="close_tabs_txt_102_27_1" style="display:none;">Close</p></div>\
	<div class="assess_green_bg_102_27" style="display:none">Is bleeding excessive?<br>Is the woman in shock or not?</div>\
	</div>\
	<div class="boxes_container">\
	<div class="provide_gra_102_27">Provide Care</div>\
	<div class="a_fade3_102_27"><img src="Media/eng/images/arrow_fade.png"></div>\
	<div class="assess_parpal_bg_102_27">Give uterotonics<br>Find & repair lacerations/tears<br>Be prepared & manage an emergency or shock</div>\
	</div>\
	<div class="boxes_container_102_27">\
	<div class="evaluate_gra_102_27">Evaluate</div>\
	</div>\
	<div class="bottamcon_102_27">Click on Assess/ Diagnose to view the key questions, if you would like to review them again.</div>\
</div>\
</div>',
'010102-19.html': '<div class="clearfix pphBg">\
<div class="PrincipalWhiteBg">\
	 <div class="PricipalHeading"></div>\
	 <div class="Principal1 PrincipalBg"></div>\
	 <div class="Principal2 PrincipalBg"></div>\
	 <div class="Principal3 PrincipalBg"></div>\
	 <div class="Principal4 PrincipalBg"></div>\
	 <div class="PrincipalImg"></div>\
	 <div class="EmergencyText"></div>\
</div>\
<div class="PrincipalText"></div>\
</div>',
'010102-20.html': '<div class="clearfix pphBg">\
<div class="updatesWhiteBg">\
	<div class="UpdatesHeading"></div>\
	<div class="updates"></div>\
	<div class="BirthText"></div>\
	<div class="UpdateResourceText"></div>\
	<div class="ClickVideoTextSection clearfix" style="padding: 13px 0px 67px;">\
	  <div class="ClickVideoImg" style="margin-left: 0;margin-top: 5px;"></div>\
	  <div class="ClickVideoDesc" style="height:auto;"></div>\
	</div>\
</div>\
<div class="video_temp_2_01" style="display:none">\
		<div class="video_temp_2_01_bg">\
		<div style="    margin: 60px auto; width: 60%;text-align: center;">\
		<video id="example_video_1" controls preload="auto" width="100%" height="auto" style="text-align:center;">\
                          <source src="Media/eng/video/MAFPostpartumHaemorrhageTreatment_20.mp4" type="video/mp4" /></video>\
		</div>\
		<div class="close_tabs_2_01" style="display:block;"></div>\
	<div class="YesText" style="display:none;">Close</div>\
		</div>\
</div>\
</div>',
'010102-21.html': '<div class="clearfix pphBg">\
<div class="KeyPointWhiteBgCyk">\
	<div class="KeyPointCykHeading"></div>\
	<div class="KeyPointCykDesc"></div>\
	<div class="KeyPointCykItext"></div>\
	<div class="KeyPointCykSection">\
	   <div class="KeyPointCykOptionSection">\
	      <div class="KeyPointCykOption KeyPointCykOption1"></div>\
	       <div class="KeyPointCykTick KeyPointCykTick1"></div>\
	   </div>\
	   <div class="KeyPointCykOptionSection">\
	      <div class="KeyPointCykOption KeyPointCykOption2"></div>\
	       <div class="KeyPointCykTick KeyPointCykTick2"></div>\
	   </div>\
	   <div class="KeyPointCykOptionSection">\
	      <div class="KeyPointCykOption KeyPointCykOption3"></div>\
	       <div class="KeyPointCykTick KeyPointCykTick3"></div>\
	   </div>\
	   <div class="KeyPointCykOptionSection">\
	      <div class="KeyPointCykOption KeyPointCykOption4"></div>\
	       <div class="KeyPointCykTick KeyPointCykTick4"></div>\
	   </div>\
	   <div class="KeyPointCykOptionSection">\
	      <div class="KeyPointCykOption KeyPointCykOption5"></div>\
	       <div class="KeyPointCykTick KeyPointCykTick5"></div>\
	   </div>\
	   <div class="KeyPointCykOptionSection">\
	      <div class="KeyPointCykOption KeyPointCykOption6"></div>\
	       <div class="KeyPointCykTick KeyPointCykTick6"></div>\
	   </div>\
	   <div class="KeyPointCykOptionSection">\
	      <div class="KeyPointCykOption KeyPointCykOption7"></div>\
	       <div class="KeyPointCykTick KeyPointCykTick7"></div>\
	   </div>\
	</div>\
</div>\
</div>',
'010102-22.html': '<div class="clearfix pphBg">\
<div class="knowledgeChkText"></div>\
<div class="BladderQueSection">\
	 <div class="BladderQueBg">\
	   <div class="BladderQue">\
	     <span></span>\
	     <p></p>\
	   </div>\
	<div class="BladderOption">\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick1"></div>\
	      <input type="radio" class="BladderOption BladderOption1" name="Bladder" id="1" value="1">\
		  <label for="1" class="BladderOptionLabel">Refer</label>\
	   </div>\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick2"></div>\
	      <input type="radio" class="BladderOption BladderOption2" name="Bladder" id="2" value="2">\
		  <label for="2" class="BladderOptionLabel">Examine for lacerations</label>\
	   </div>\
	<div class="BladderOptionSection">\
          <div class="BladderTick BladderTick3"></div>\
	      <input type="radio" class="BladderOption BladderOption3" name="Bladder" id="3" value="3">\
		  <label for="3" class="BladderOptionLabel">Check for blood disorder</label>\
	   </div>\
	</div>\
	<button class="BladderBtn" style="margin-top: 49px;"></button>\
     </div>\
</div>\
<!-- BladderQueSection End -->\
</div>',
'010102-23.html': '<div class="clearfix pphBg">\
<div class="BladderQueSection">\
	 <div class="BladderQueBg">\
	   <div class="BladderQue">\
	     <span></span>\
	     <p></p>\
	   </div>\
	<div class="BladderOption">\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick1"></div>\
	      <input type="radio" class="BladderOption BladderOption1" name="Bladder" id="1" value="1">\
		  <label for="1" class="BladderOptionLabel">IV infusion, monitor for shock, ensure bladder empty</label>\
	   </div>\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick2"></div>\
	      <input type="radio" class="BladderOption BladderOption2" name="Bladder" id="2" value="2">\
		  <label for="2" class="BladderOptionLabel">Monitor bleeding, massage uterus,  give antibiotics</label>\
	   </div>\
	<div class="BladderOptionSection">\
          <div class="BladderTick BladderTick3"></div>\
	      <input type="radio" class="BladderOption BladderOption3" name="Bladder" id="3" value="3">\
		  <label for="3" class="BladderOptionLabel">Proceed with assessment, refer to CEmONC facility</label>\
	   </div>\
	</div>\
	<button class="BladderBtn" style="margin-top: 49px;"></button>\
     </div>\
</div>\
<!-- BladderQueSection End -->\
</div>',
'010102-24.html': '<div class="clearfix pphBg">\
<div class="CompressWhiteBg clearfix">\
	<div class="Compress11">\
      <div class="Compress1Title Compress1"></div>\
	  <div class="Compress2Title Compress2"></div>\
	</div>\
</div>\
</div>',
'010102-25.html': '<div class="clearfix pphBg">\
<div class="pages_bg_102_45" style="display:block">\
   <div class="assess_head1_102_45"></div>\
   <div class="boxss_container_102_45">\
	<div class="assess_gra_102_45">Assess</div>\
	<div class="a_fade1_102_45"><img src="Media/eng/images/arrow_one.png"></div>\
	<div class="close_tabs_102_45" style="display:none;"><p class="close_tabs_txt_102_45" style="display:none;">Close</p></div>\
	<div class="assess_red_bg_102_45" style="display:none">Is the placenta in or out?<br>Is the uterus firm and contracting?<br>Is the bladder full?<br>Is the woman&#39;s condition stable?</div>\
	</div>\
	<div class="boxss_container_102_45">\
	<div class="diagnose_gra_102_45">Diagnose</div>\
	<div class="a_fade2_102_45"><img src="Media/eng/images/arrow_one.png"></div>\
	<div class="close_tabs_102_45_1" style="display:none;"><p class="close_tabs_txt_102_45_1" style="display:none;">Close</p></div>\
	<div class="assess_green_bg_102_45" style="display:none">Is bleeding excessive?<br>Is the woman in shock or not?</div>\
	</div>\
	<div class="boxss_container">\
	<div class="provide_gra_102_45">Provide Care</div>\
	<div class="a_fade3_102_45"><img src="Media/eng/images/arrow_one.png"></div>\
	<div class="close_tabs_102_45_2 close_tabs_102_45_2New" style="display:none;"><p class="close_tabs_txt_102_45_2" style="display:none;">Close</p></div>\
	<div class="assess_parpal_bg_102_45 assess_parpal_bg_102_45New" style="display:none;">Give uterotonics<br>Find & repair lacerations/tears<br>Be prepared & manage an emergency or shock</div>\
	</div>\
	<div class="boxss_container_102_45">\
	<div class="evaluate_gra_102_45">Evaluate</div>\
	<div class="assess_blue_bg_102_45" style="display:block">Is the uterus responding?<br>Cause of bleeding addressed?<br>Vital signs/stable/bleeding decreasing?</div>\
	</div>\
	<div class="bottamcon_102_45">Click on Assess/ Diagnose/ Provide Care to view the key questions, if you would like to review them again.</div>\
</div>\
</div>',
'010102-26.html': '<div class="clearfix pphBg">\
<div class="BladderQueSection" style="padding-top: 20px;">\
	 <div class="BladderQueBg">\
	   <div class="BladderQue">\
	     <span></span>\
	     <p></p>\
	   </div>\
	<div class="BladderOption">\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick1"></div>\
	      <input type="radio" class="BladderOption BladderOption1" name="Bladder" id="1" value="1">\
		  <label for="1" class="BladderOptionLabel">T 36.9, P 90, BP 100/70, Resp 22</label>\
	   </div>\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick2"></div>\
	      <input type="radio" class="BladderOption BladderOption2" name="Bladder" id="2" value="2">\
		  <label for="2" class="BladderOptionLabel">T 37, P 110, BP 80/49, Resp 26</label>\
	   </div>\
	<div class="BladderOptionSection">\
          <div class="BladderTick BladderTick3"></div>\
	      <input type="radio" class="BladderOption BladderOption3" name="Bladder" id="3" value="3">\
		  <label for="3" class="BladderOptionLabel">T 37.3, P 64, BP 110/68, Resp 20</label>\
	   </div>\
	</div>\
	<button class="BladderBtn" style="margin-top: 9px;"></button>\
     </div>\
</div>\
<!-- BladderQueSection End -->\
<div class="BladderFeedbackcyk"></div>\
<div class="NotepadeSectioncyk">\
	<div class="NotepadHeading"></div>\
	<div class="NotepadeText NotepadeText1"></div>\
	<div class="NotepadeText NotepadeText2"></div>\
	<div class="NotepadeText NotepadeText3"></div>\
	<div class="NotepadeText NotepadeText4"></div>\
</div>\
</div>',
'010102-27.html': '<div class="clearfix pphBg">\
<div class="BladderQueSection" style="padding-top: 20px;">\
	 <div class="BladderQueBg" style="padding:10px 10px 7px 10px;">\
	   <div class="BladderQue" style="width: 494px;">\
	     <span></span>\
	     <p style="padding-top: 6px;"></p>\
	   </div>\
	<div class="BladderOption">\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick1"></div>\
	      <input type="radio" class="BladderOption BladderOption1" name="Bladder" id="1" value="1">\
		  <label for="1" class="BladderOptionLabel">Pulse,  and temperature every 2 hours</label>\
	   </div>\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick2"></div>\
	      <input type="radio" class="BladderOption BladderOption2" name="Bladder" id="2" value="2">\
		  <label for="2" class="BladderOptionLabel" style="width: 365px;line-height: 29px;">Check uterine tone and bleeding every 15 minutes</label>\
	   </div>\
	<div class="BladderOptionSection">\
          <div class="BladderTick BladderTick3"></div>\
	      <input type="radio" class="BladderOption BladderOption3" name="Bladder" id="3" value="3">\
		  <label for="3" class="BladderOptionLabel" style="width: 365px;line-height: 29px;">Catheterize her q 4 hours to prevent a full bladder</label>\
	   </div>\
	</div>\
	<button class="BladderBtn" style="margin-top: 9px;"></button>\
     </div>\
</div>\
<!-- BladderQueSection End -->\
<div class="BladderFeedbackcyk2"></div>\
<div class="BladderFeedbackcykItext"></div>\
<div class="NotepadeSectioncyk">\
	<div class="NotepadHeading"></div>\
	<div class="NotepadeText NotepadeText1"></div>\
	<div class="NotepadeText NotepadeText2"></div>\
	<div class="NotepadeText NotepadeText3"></div>\
	<div class="NotepadeText NotepadeText4"></div>\
</div>\
</div>',
'010102-28.html': '<div class="clearfix pphBg">\
<div class="MonitorWhiteBg">\
	<div class="MonitorHeading"></div>\
	<div class="Monitor Monitor1"></div>\
	<div class="Monitor Monitor2"></div>\
	<div class="Monitor Monitor3"></div>\
	<div class="Monitor Monitor4"></div>\
</div>\
</div>',
'010102-29.html': '<div class="clearfix pphBg">\
    <div class="KeyPointTitle"></div>\
	<div class="Point1"></div>\
	<div class="PointSection clearfix">\
		<div class="PointLeft">\
		     <div class="Point2"></div>\
		     <div class="Point3"></div>\
		     <div class="Point4"></div>\
		     <div class="Point5"></div>\
		</div>\
		<div class="PointRight">\
		     <div class="Point6"></div>\
		     <div class="Point7"></div>\
		</div>\
	</div>\
</div>',
'010102-30.html': '<div class="clearfix pphBg">\
<div class="effectiveSpacing">\
<div class="effectiveWhiteBg">\
	<div class="TransWhiteBg"></div>\
	<div class="EffectiveImg1"></div>\
	<div class="EffectiveImg2"></div>\
</div>\
</div>\
</div>',
'010102-31.html': '<div class="clearfix pphBg">\
<div class="pages_bg_6" style="display:block">\
   <div class="boxes_container">\<!--Box Container Start 1-->\
	<div class="assess_gra">Assess</div>\
	<div class="a_fade1"><img src="Media/eng/images/arrow_fade.png"></div>\
	<div class="assess_red_bg assess_red_bgNew" ></div>\
	</div>\<!--Box Container End 1-->\
	<div class="boxes_container">\<!--Box Container Start 2-->\
	<div class="diagnose_gra">Diagnose</div>\
	<div class="a_fade2"><img src="Media/eng/images/arrow_fade.png"></div>\
	</div>\<!--Box Container End 2-->\
	<div class="boxes_container">\<!--Box Container Start 3-->\
	<div class="provide_gra">Provide Care</div>\
	<div class="a_fade3"><img src="Media/eng/images/arrow_fade.png"></div>\
	</div>\<!--Box Container End 3-->\
	<div class="boxes_container">\<!--Box Container Start 4-->\
	<div class="evaluate_gra">Evaluate</div>\
	</div>\<!--Box Container End 4-->\
</div>\
</div>',
'010102-32.html': '<div class="clearfix pphBg">\
<div class="BladderQueSection" style="padding-top: 20px;">\
	 <div class="BladderQueBg" style="padding:10px 10px 7px 10px;">\
	   <div class="BladderQue" style="width: 494px;">\
	     <span></span>\
	     <p style="padding-top: 6px;"></p>\
	   </div>\
	<div class="BladderOption">\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick1"></div>\
	      <input type="radio" class="BladderOption BladderOption1" name="Bladder" id="1" value="1">\
		  <label for="1" class="BladderOptionLabel">True</label>\
	   </div>\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick2"></div>\
	      <input type="radio" class="BladderOption BladderOption2" name="Bladder" id="2" value="2">\
		  <label for="2" class="BladderOptionLabel">False</label>\
	   </div>\
	</div>\
	<button class="BladderBtn" style="margin-top: 9px; z-index: 2;position:relative;"></button>\
     </div>\
</div>\
<!-- BladderQueSection End -->\
<div class="effectiveabsImg"></div>\
<div class="effectiveabsImg4"></div>\
<div class="NotepadeSectioncyk" style="top: -2px;">\
	<div class="NotepadHeading"></div>\
	<div class="NotepadeText NotepadeText1"></div>\
	<div class="NotepadeText NotepadeText2"></div>\
	<div class="NotepadeText NotepadeText3"></div>\
	<div class="NotepadeText NotepadeText4"></div>\
</div>\
</div>',
'010102-33.html': '<div class="clearfix pphBg">\
<div class="BladderQueSection" style="padding-top: 20px;">\
	 <div class="BladderQueBg" style="padding:10px 10px 7px 10px;">\
	   <div class="BladderQue" style="width: 494px;">\
	     <span></span>\
	     <p style="padding-top: 6px;"></p>\
	   </div>\
	<div class="BladderOption">\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick1"></div>\
	      <input type="radio" class="BladderOption BladderOption1" name="Bladder" id="1" value="1">\
		  <label for="1" class="BladderOptionLabel">Check if her vital signs and condition are stable</label>\
	   </div>\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick2"></div>\
	      <input type="radio" class="BladderOption BladderOption2" name="Bladder" id="2" value="2">\
		  <label for="2" class="BladderOptionLabel">Vaginal or cervical lacerations</label>\
	   </div>\
	  <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick3"></div>\
	      <input type="radio" class="BladderOption BladderOption3" name="Bladder" id="3" value="3">\
		  <label for="3" class="BladderOptionLabel" style="line-height: 29px;">Conduct bedside clotting test or send labs to <br/> assess for a blood clotting disorder</label>\
	   </div>\
	</div>\
	<button class="BladderBtn" style="margin-top: 9px; z-index: 2;"></button>\
     </div>\
</div>\
<!-- BladderQueSection End -->\
<div class="effectiveabsImg2"></div>\
<div class="NotepadeSectioncyk" style="top: -2px;">\
	<div class="NotepadHeading"></div>\
	<div class="NotepadeText NotepadeText1"></div>\
	<div class="NotepadeText NotepadeText2"></div>\
	<div class="NotepadeText NotepadeText3"></div>\
	<div class="NotepadeText NotepadeText4"></div>\
</div>\
</div>',
'010102-34.html': '<div class="clearfix pphBg">\
<div class="SignHeading"></div>\
<div class="SignWhiteBg clearfix">\
	<div class="SignSection SignSection1">\
	  <div class="Sign1Img SignImg"></div>\
	  <div class="Sign1Desc SignDesc"></div>\
	</div>\
	<div class="SignSection SignSection2">\
	  <div class="Sign2Img SignImg"></div>\
	  <div class="Sign2Desc SignDesc"></div>\
	</div>\
	<div class="SignSection SignSection3">\
	  <div class="Sign3Img SignImg"></div>\
	  <div class="Sign3Desc SignDesc"></div>\
	</div>\
</div>\
</div>',
'010102-35.html': '<div class="clearfix pphBg">\
<div class="pages_bg_102_19" style="display:block">\
   <div class="assess_head1_102_19"></div>\
   <div class="boxes_container_102_19">\
	<div class="assess_gra_102_19">Assess</div>\
	<div class="a_fade1_102_19"><img src="Media/eng/images/arrow_one.png"></div>\
	<div class="close_tabs_102_19" style="display:none;"><p class="close_tabs_txt_102_19" style="display:none;">Close</p></div>\
	<div class="assess_red_bg_102_19 assess_red_bgNew" style="display:none">How much time has passed?<br>Is the bleeding excessive?<br>Is the woman&#39;s condition stable?</div>\
	</div>\
	<div class="boxes_container_102_19">\
	<div class="diagnose_gra_102_19">Diagnose</div>\
	<div class="a_fade2_102_19"><img src="Media/eng/images/arrow_fade.png"></div>\
	<div class="assess_green_bg_102_19 assess_green_bg_102_19New">No placenta after 30 min/1 hr = retained placenta<br>However, if woman starts to bleed heavily only 45 or 30 min after delivery, you need to take action.  Do not wait for one hour to act.</div>\
	</div>\
	<div class="boxes_container">\
	<div class="provide_gra_102_19">Provide Care</div>\
	<div class="a_fade3_102_19"><img src="Media/eng/images/arrow_fade.png"></div>\
	</div>\
	<div class="boxes_container_102_19">\
	<div class="evaluate_gra_102_19">Evaluate</div>\
	</div>\
	<div class="bottamcon_102_27"><i>Click on Assess to view the key questions, if you would like to review them again.</i></div>\
</div>\
</div>',
'010102-36.html': '<div class="clearfix pphBg">\
<div class="diagnoseHeading"></div>\
<div class="DiagnoseNurseImg"></div>\
<div class="DiagnoseBubble DiagnoseBubble1"></div>\
<div class="DiagnoseBubble DiagnoseBubble2"></div>\
<div class="DiagnoseBubble DiagnoseBubble3"></div>\
<div class="DiagnoseBubble DiagnoseBubble4"></div>\
</div>',
'010102-37.html': '<div class="clearfix pphBg">\
<div class="pages_bg_102_27" style="display:block">\
   <div class="assess_head1_102_27"></div>\
   <div class="boxes_container_102_27">\
	<div class="assess_gra_102_27">Assess</div>\
	<div class="a_fade1_102_27"><img src="Media/eng/images/arrow_one.png"></div>\
	<div class="close_tabs_102_27" style="display:none;"><p class="close_tabs_txt_102_27" style="display:none;">Close</p></div>\
	<div class="assess_red_bg_102_27 assess_red_bgNew" style="display:none">How much time has passed?<br>Is the bleeding excessive?<br>Is the woman&#39;s condition stable?</div>\
	</div>\
	<div class="boxes_container_102_27">\
	<div class="diagnose_gra_102_27">Diagnose</div>\
	<div class="a_fade2_102_27"><img src="Media/eng/images/arrow_one.png"></div>\
	<div class="close_tabs_102_27_1" style="display:none;"><p class="close_tabs_txt_102_27_1" style="display:none;">Close</p></div>\
	<div class="assess_green_bg_102_27 assess_green_bg_102_19New" style="display:none">No placenta after 30 min/1 hr =<br/> retained placenta</div>\
	</div>\
	<div class="boxes_container">\
	<div class="provide_gra_102_27">Provide Care</div>\
	<div class="a_fade3_102_27"><img src="Media/eng/images/arrow_fade.png"></div>\
	<div class="assess_parpal_bg_102_27 assess_parpal_bg_102_27New">Manual removal &amp; uterotonic<br>Give antibiotics &amp; IV fluid; manage pain/sedate<br>Prepare for an emergency</div>\
	</div>\
	<div class="boxes_container_102_27">\
	<div class="evaluate_gra_102_27">Evaluate</div>\
	</div>\
	<div class="bottamcon_102_27">Click on Assess/ Diagnose to view the key questions, if you would like to review them again.</div>\
</div>\
</div>',
'010102-38.html': '<div class="clearfix pphBg">\
<ul class="ConditionList">\
	<li class="Condition1"></li>\
	<li class="Condition2"></li>\
	<li class="Condition3"></li>\
	<li class="Condition4"></li>\
	<li class="Condition5"></li>\
	<li class="Condition6"></li>\
</ul>\
</div>',
'010102-39.html': '<div class="clearfix pphBg">\
<div class="BladderQueSection" style="padding-top: 20px;">\
	 <div class="BladderQueBg" style="padding:10px 10px 7px 10px;">\
	   <div class="BladderQue">\
	     <span></span>\
	     <p style="padding-top: 6px;"></p>\
	   </div>\
	<div class="BladderOption">\
	   <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick1"></div>\
	      <input type="radio" class="BladderOption BladderOption1" name="Bladder" id="1" value="1">\
		  <label for="1" class="BladderOptionLabel">True</label>\
	   </div>\
	  <div class="BladderOptionSection">\
          <div class="BladderTick BladderTick2"></div>\
	      <input type="radio" class="BladderOption BladderOption2" name="Bladder" id="2" value="2">\
		  <label for="2" class="BladderOptionLabel">False</label>\
	   </div>\
	</div>\
	<button class="BladderBtn" style="margin-top: 81px; z-index: 2;"></button>\
     </div>\
</div>\
<!-- BladderQueSection End -->\
<div class="effectiveabsImg3"></div>\
<div class="emergencyFeedback"></div>\
</div>',
'010102-40.html': '<div class="clearfix pphBg pphBgNew">\
<div class="practiseHeading"></div>\
<div class="PrepareTab practiseTab"></div>\
<div class="PainTab practiseTab"></div>\
<div class="ProcedureTab practiseTab"></div>\
<div class="MonitorTab practiseTab"></div>\
<div class="PractiseItext"></div>\
<div class="PractiseText"></div>\
<div class="PractiseImg"></div>\
<div class="TransWhiteBg" style="z-index:3;display:none;"></div>\
<div class="PreparePopup PractisePopup" style="display:none;">\
	<div class="PopupHeadingBg">\
	  <div class="PreparePoupTitle PopupTitle"></div>\
	  <div class="PopupCloseImg"></div>\
	  <div class="PopupCloseText" style="display:none;"></div>\
	</div>\
	<div class="PopupContent">\
	  <ul class="PrepareList">\
	   <li class="Prepare1"></li>\
	   <li class="Prepare2"></li>\
	   <li class="Prepare3"></li>\
	   <li class="Prepare4"></li>\
	 </ul>\
	</div>\
</div>\
<!-- Provide Popup End -->\
<div class="PainPopup PractisePopup" style="display:none;">\
	<div class="PopupHeadingBg">\
	  <div class="PainPoupTitle PopupTitle"></div>\
	  <div class="PopupCloseImg"></div>\
	  <div class="PopupCloseText" style="display:none;"></div>\
	</div>\
	<div class="PopupContent">\
	  <div class="PainDesc"></div>\
	  <ul class="PainList">\
	   <li class="Pain1"></li>\
	 </ul>\
	</div>\
</div>\
<!-- Pain Popup End -->\
<div class="ProcedurePopup PractisePopup" style="display:none;">\
	<div class="PopupHeadingBg">\
	  <div class="ProcedurePoupTitle PopupTitle"></div>\
	  <div class="PopupCloseImg"></div>\
	  <div class="PopupCloseText" style="display:none;"></div>\
	</div>\
	<div class="PopupContent">\
	<div class="ProcedureContentSpacing">\
	  <div class="ProcedureDesc1"></div>\
	  <ul class="ProcedureList">\
	    <li class="Procedure1"></li>\
	  </ul>\
	 <div class="ProcedureDesc2"></div>\
	  <ul class="ProcedureList ProcedureList">\
	    <li class="Procedure2"></li>\
	    <li class="Procedure3"></li>\
	  </ul>\
	 <div class="ProcedureDesc3"></div>\
	<div class="ProcedureImg"></div>\
	</div>\
	</div>\
</div>\
<!-- Procedure Popup End -->\
<div class="MonitorPopup PractisePopup" style="display:none;">\
	<div class="PopupHeadingBg">\
	  <div class="MonitorPoupTitle PopupTitle"></div>\
	  <div class="PopupCloseImg"></div>\
	  <div class="PopupCloseText" style="display:none;"></div>\
	</div>\
	<div class="PopupContent">\
	<div class="ProcedureContentSpacing clearfix">\
	 <div class="MonitorDesc"></div>\
	 <div class="MonitorImg"></div>\
	</div>\
	</div>\
</div>\
<!-- Procedure Popup End -->\
</div>',
}
};