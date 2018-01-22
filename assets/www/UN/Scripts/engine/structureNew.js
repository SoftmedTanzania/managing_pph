var JSONStructure = [{
  "structure": {
    "courseTitle": "Managing Postpartum Haemorrhage",
	"courseType": "Assessment",
	"AssessmentType":'',
	"AssessmentReviewMode":'pagination',
	"indexPage": { "type": "off" },
	"audioName":"",
    "menuType": { "type": "nonliner" },
    "CertificateOption": { "status": "on" },
    "assessmentScore": { "passingScore": "80" },
	
	//----------------------------------------------------*****************************-----------------------------------------
		"course": {
		 "enableNext": "false",
		 "menuType": "topic",
		 "navigationMode": "linear",
		 "style": "backgroundimage:url('Media/eng/images/header.png'); backgroundrepeat:norepeat;backgroundcolor: #C2C2C2; fontsize:20px",
		 "logo": { "image":"Media/eng/images/newTemplates/Title.png" },
		 "breadcrum": { "style": "backgroundimage:url('Media/eng/images/breadcrum.png');color:#000" },
		 "footer": { "style": "backgroundimage:url('Media/eng/images/footer.png');backgroundrepeat: norepeat;color:#000; height:54px; " },
		 "bottom": { "style": "backgroundcolor:none" },
		 "container": { "style": "backgroundimage:url('Media/eng/images/bg.png');backgroundrepeat: norepeat; bordercolor:white" },
		 "module": [
		 //-------------------------------Module Starts here-----------------------------------------------------------
					{
					"moduleBreadCrum": [{"title": "Introduction","visible": "true" }],
						"topic": [
									//-------------------------------Topic Starts here-----------------------------------------------------------
										{
									  "topicBreadCrum": [{"title": "Information","visible": "true" }],
									  "screen": [
		  
												//----------------------Module 1 start---------------//		
												{
													"templateID": "010101-01.html",
													"xmlName": "010101-01",
													  "audioName":"Media/eng/audio/Intro",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},
										{
									  "topicBreadCrum": [{"title": "Information","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010101-02.html",
													"xmlName": "010101-02",
													  "audioName":"Media/eng/audio/pwfc_pph_int_s01_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "playPauseController":"true"
												},
												
											]
										},
											{
									  "topicBreadCrum": [{"title": "Help! Emergency!","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010101-03.html",
													"xmlName": "010101-03",
													  "audioName":"Media/eng/audio/pwfc_pph_int_s02_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
											]
										},
											{
									  "topicBreadCrum": [{"title": "Help! Emergency!","visible": "true" }],
									  "screen": [
												 {
													"templateID": "010101-04.html",
													"xmlName": "010101-04",
													  "audioName":"Media/eng/audio/pwfc_pph_int_s03_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},
										{
									  "topicBreadCrum": [{"title": "Introduction","visible": "true" }],
									  "screen": [
		  
									  
												{
													"templateID": "010101-05.html",
													"xmlName": "010101-05",
													  "audioName":"Media/eng/audio/pwfc_pph_int_s04_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},
										{
									  "topicBreadCrum": [{"title": "WHO IMPAC Series","visible": "true" }],
									  "screen": [
		  
									  
												{
													"templateID": "010101-06.html",
													"xmlName": "010101-06",
													  "audioName":"Media/eng/audio/pwfc_pph_int_s05_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},
										{
									  "topicBreadCrum": [{"title": " ","visible": "true" }],
									  "screen": [
		  
									  
												{
													"templateID": "010101-07.html",
													"xmlName": "010101-07",
													  "audioName":"Media/eng/audio/pwfc_pph_int_s06_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},
										{
									  "topicBreadCrum": [{"title": "Learning Questions","visible": "true" }],
									  "screen": [
		  
									  
												{
													"templateID": "010101-08.html",
													"xmlName": "010101-08",
													  "audioName":"Media/eng/audio/pwfc_pph_int_s07_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},
										{
									  "topicBreadCrum": [{"title": "Pre-Module Quiz ","visible": "true" }],
									  "screen": [
		  
									  
												{
													"templateID": "010101-09.html",
													"xmlName": "010101-09",
													  "audioName":"Media/eng/audio/pwfc_pph_int_s08_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "playPauseController":"true",
													  "eos":"true"
												},
												
											]
										},
										
									]
								},
								{
					"moduleBreadCrum": [{"title": "Assessment","visible": "true","type": "assessment2" }],
						"topic": [
						//-------------------------------Topic Starts here-----------------------------------------------------------
									{
									  "topicBreadCrum": [{"title": "Assessment","type": "assessment","pull":21,"nextQuestion": "true","showResultButton":"true","visible":"true","BeginScreen":"On","xmlName":"Assessment_BeginScreen.xml","audioName": "", }],
											"screen": [
												{
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q1.xml",
												  "feedbackpopup":"false"
												},
												
												{
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q2.xml",
												  "feedbackpopup":"false"
												},	
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q3.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q4.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q5.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q6.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q7.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q8.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q9.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q10.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q11.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q12.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q13.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q14.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q15.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q16.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q17.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q18.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q19.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q20.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q21.xml",
												  "feedbackpopup":"false"
												}												
											
											]										
									  
									}
								//-------------------------------Topic Starts here-----------------------------------------------------------
							]
				
				},
								{
								//-------------------------------Module 2 Starts here--------------------------	
					"moduleBreadCrum": [{"title": "Lesson","visible": "true" }],
						"topic": [
									{
									  "topicBreadCrum": [{"title": "<strong>Introduction <span class='sap'>|</span> </strong><span class='module_topic2'>Emergencies and Respectful  Maternity Care</span>","visible": "true" }],
									  "screen": [
												{
													"templateID": "010102-01.html",
													"xmlName": "010102-01",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s01_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "playPauseController":"true"
												},
												
											]
									},{
									  "topicBreadCrum": [{"title": "<strong>Introduction <span class='sap'>|</span> </strong><span class='module_topic2'>What will you learn?</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-02.html",
													"xmlName": "010102-02",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s02_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "playPauseController":"true"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Introduction <span class='sap'>|</span> </strong><span class='module_topic2'>What is PPH?","visible</span>": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-03.html",
													"xmlName": "010102-03",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s03_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Introduction <span class='sap'>|</span> </strong><span class='module_topic2'>How much bleeding is too much?","visible</span>": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-04.html",
													"xmlName": "010102-04",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s04_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "playPauseController":"true"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Introduction <span class='sap'>|</span> </strong><span class='module_topic2'>Causes of PPH</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-05.html",
													"xmlName": "010102-05",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s05_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Introduction <span class='sap'>|</span> </strong><span class='module_topic2'>Treatment of PPH</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-06.html",
													"xmlName": "010102-06",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s06_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "playPauseController":"true"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Let's Begin</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-07.html",
													"xmlName": "010102-07",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s07_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "playPauseController":"true"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Assess</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-08.html",
													"xmlName": "010102-08",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s08_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Assess</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-09.html",
													"xmlName": "010102-09",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s09_01",
													  "interactiveLocknext": "true",
													  "forcelockNext": "false",
													   "playPauseController":"true"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Assess</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-10.html",
													"xmlName": "010102-10",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s10_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "playPauseController":"true"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Assess</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-11.html",
													"xmlName": "010102-11",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s11_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "playPauseController":"true"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Assess</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-12.html",
													"xmlName": "010102-12",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s12_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Diagnose</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-13.html",
													"xmlName": "010102-13",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s13_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Diagnose</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-14.html",
													"xmlName": "010102-14",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s14_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "playPauseController":"true"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Diagnose</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-15.html",
													"xmlName": "010102-15",
													  "audioName":"",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Diagnose</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-16.html",
													"xmlName": "010102-16",
													  "audioName":"",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Diagnose</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-17.html",
													"xmlName": "010102-17",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s17_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Provide Care</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-18.html",
													"xmlName": "010102-18",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s18_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Provide Care</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-19.html",
													"xmlName": "010102-19",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s19_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Provide Care</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-20.html",
													"xmlName": "010102-20",
													  "audioName":"Media/eng/audio/pwfc_pph_l01_s20_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Provide Care</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-21.html",
													"xmlName": "010102-21",
													  "audioName":"Media/eng/audio/mod_2_21",
													  "interactiveLocknext": "true",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Provide Care</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-22.html",
													"xmlName": "010102-22",
													  "audioName":"Media/eng/audio/mod_2_22",
													  "interactiveLocknext": "true",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Provide Care</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-23.html",
													"xmlName": "010102-23",
													  "audioName":"Media/eng/audio/mod_2_23",
													  "interactiveLocknext": "true",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Provide Care</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-24.html",
													"xmlName": "010102-24",
													  "audioName":"Media/eng/audio/mod_2_24",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Evaluate</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-25.html",
													"xmlName": "010102-25",
													  "audioName":"Media/eng/audio/mod_2_25",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Evaluate</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-26.html",
													"xmlName": "010102-26",
													  "audioName":"Media/eng/audio/mod_2_26",
													  "interactiveLocknext": "true",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Evaluate</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-27.html",
													"xmlName": "010102-27",
													  "audioName":"Media/eng/audio/mod_2_23",
													  "interactiveLocknext": "true",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Evaluate</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-28.html",
													"xmlName": "010102-28",
													  "audioName":"Media/eng/audio/mod_2_28",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 1: Uterine Atony <span class='sap'>|</span> </strong><span class='module_topic2'>Key Points</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-29.html",
													"xmlName": "010102-29",
													  "audioName":"Media/eng/audio/mod_2_29",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span> </strong><span class='module_topic2'>Let's Begin</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-30.html",
													"xmlName": "010102-30",
													  "audioName":"Media/eng/audio/mod_2_30",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "playPauseController":"true"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span> </strong><span class='module_topic2'>Assess</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-31.html",
													"xmlName": "010102-31",
													  "audioName":"Media/eng/audio/mod_2_31",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span> </strong><span class='module_topic2'>Assess</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-32.html",
													"xmlName": "010102-32",
													  "audioName":"Media/eng/audio/mod_2_32",
													  "interactiveLocknext": "true",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span> </strong><span class='module_topic2'>Assess</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-33.html",
													"xmlName": "010102-33",
													  "audioName":"Media/eng/audio/mod_2_33",
													  "interactiveLocknext": "true",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span> </strong><span class='module_topic2'>Assess</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-34.html",
													"xmlName": "010102-34",
													  "audioName":"Media/eng/audio/mod_2_34",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span> </strong><span class='module_topic2'>Diagnose</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-35.html",
													"xmlName": "010102-35",
													  "audioName":"Media/eng/audio/mod_2_35",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span> </strong><span class='module_topic2'>Diagnose</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-36.html",
													"xmlName": "010102-36",
													  "audioName":"Media/eng/audio/mod_2_36",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "playPauseController":"true"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span> </strong><span class='module_topic2'>Provide Care</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-37.html",
													"xmlName": "010102-37",
													  "audioName":"Media/eng/audio/mod_2_37",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span> </strong><span class='module_topic2'>Provide Care</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-38.html",
													"xmlName": "010102-38",
													  "audioName":"Media/eng/audio/mod_2_38",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span> </strong><span class='module_topic2'>Provide Care</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-39.html",
													"xmlName": "010102-39",
													  "audioName":"",
													  "interactiveLocknext": "true",
													  "forcelockNext": "false"
												},
												
											]
										},{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span> </strong><span class='module_topic2'>Provide Care</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-40.html",
													"xmlName": "010102-40",
													  "audioName":"Media/eng/audio/mod_2_40",
													  "interactiveLocknext": "true",
													  "forcelockNext": "false"
												},
												
											]
										},
										{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span></strong> <span class='module_topic2'>Provide Care</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-41.html",
													"xmlName": "010102-41",
													  "audioName":"Media/eng/audio/mod_2_41",
													  "interactiveLocknext": "true",
													  "forcelockNext": "false"
												},
												
											]
										},
										{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span></strong> <span class='module_topic2'>Provide Care</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-42.html",
													"xmlName": "010102-42",
													  "audioName":"Media/eng/audio/mod_2_42",
													  "interactiveLocknext": "true",
													  "forcelockNext": "false"
												},
												
											]
										},
										{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span></strong> <span class='module_topic2'>Provide Care</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-43.html",
													"xmlName": "010102-43",
													  "audioName":"Media/eng/audio/mod_2_43",
													  "interactiveLocknext": "true",
													  "forcelockNext": "false"
												},
												
											]
										},
										{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span></strong> <span class='module_topic2'>Evaluate</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-44.html",
													"xmlName": "010102-44",
													  "audioName":"Media/eng/audio/mod_2_44",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false"
												},
												
											]
										},
										{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span></strong> <span class='module_topic2'>Evaluate</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-45.html",
													"xmlName": "010102-45",
													  "audioName":"Media/eng/audio/mod_2_45",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "playPauseController":"true"
												},
												
											]
										},
										{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span></strong> <span class='module_topic2'>Evaluate</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-46.html",
													"xmlName": "010102-46",
													  "audioName":"Media/eng/audio/mod_2_46",
													  "interactiveLocknext": "true",
													  "forcelockNext": "false"
												},
												
											]
										},
										{
									  "topicBreadCrum": [{"title": "<strong>Case 2: Retained Placenta, CCT not effective <span class='sap'>|</span></strong> <span class='module_topic2'>Key Points</span>","visible": "true" }],
									  "screen": [
		  
												{
													"templateID": "010102-47.html",
													"xmlName": "010102-47",
													  "audioName":"Media/eng/audio/mod_2_47",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "playPauseController":"true",
													   "eos":"true"
												},
												
											]
										}
										
										
										
												//----------------------topic end---------------//			
										
									]
								},
								{
								//-------------------------------Module 2 End here--------------------------	
								//-------------------------------Module 3 Starts here--------------------------		
					"moduleBreadCrum": [{"title": "Clinical Decision Making Model","visible": "true" }],
						"topic": [
								
									{
									  "topicBreadCrum": [{"title": "Summary","visible": "true" }],
									  "screen": [

												{
													"templateID": "010103-01.html",
													"xmlName": "010103-01",
													  "audioName":"Media/eng/audio/pwfc_pph_sum_s02_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "playPauseController":"true"
												},
												]
									},
									{
									  "topicBreadCrum": [{"title": "Key Points and Actions","visible": "true" }],
									  "screen": [

												{
													"templateID": "010103-02.html",
													"xmlName": "010103-02",
													  "audioName":"Media/eng/audio/pwfc_pph_sum_s02_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "playPauseController":"true"
												},
												]
									},
									{
									  "topicBreadCrum": [{"title": "Post Module  Quiz","visible": "true" }],
									  "screen": [

												{
													"templateID": "010103-03.html",
													"xmlName": "010103-03",
													  "audioName":"Media/eng/audio/pwfc_pph_sum_s03_01",
													  "interactiveLocknext": "false",
													  "forcelockNext": "false",
													  "eos":"true"
												},

										 //-------------------------------Module 3 End here--------------------------
											]
									  
									}
									//-------------------------------Topic Ends here-----------------------------------------------------------
									
									
									
									
							]
				
				}
				//-------------------------------Module Ends here-----------------------------------------------------------
				
				
				
				
				
				
				//-------------------------------Module Starts here-----------------------------------------------------------
				,{
					"moduleBreadCrum": [{"title": "Assessment","visible": "true","type": "assessment" }],
						"topic": [
						//-------------------------------Topic Starts here-----------------------------------------------------------
									{
									  "topicBreadCrum": [{"title": "Assessment","type": "assessment2","pull":21,"nextQuestion": "true","showResultButton":"true","visible":"true","BeginScreen":"On","xmlName":"Assessment_BeginScreen2.xml","audioName": "", }],
											"screen": [
												{
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q22.xml",
												  "feedbackpopup":"false"
												},
												
												{
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q23.xml",
												  "feedbackpopup":"false"
												},	
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q24.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q25.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q26.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q27.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q28.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q29.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q30.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q31.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q32.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q33.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q34.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q35.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q36.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q37.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q38.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q39.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q40.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q41.xml",
												  "feedbackpopup":"false"
												},		
                                                {
												  "templateID": "MCQWithSingleScenarioRadio.html",
												  "setNo":"1",
												  "title": "quesrion1",
												  "xmlName": "Assessment_Q42.xml",
												  "feedbackpopup":"false"
												}												
											
											]								
									  
									}
								//-------------------------------Topic Starts here-----------------------------------------------------------
							]
				
				}
				//-------------------------------Module Ends here-----------------------------------------------------------
				
			]
	
		}
		
		//----------------------------------------------------*****************************-----------------------------------------
	}
}]