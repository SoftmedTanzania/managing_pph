/** variables**/
var LMSType = "SCORM_1.2";

var strApiInit = null;
var completionStatus;
var userName = 'Default Learner';
var startDate;
var trackAlreadyCompletedOrNot = "";
var nLastScoreSaved = 0;
var nLastRetrivedScore = 0;
var LMSFinishDone = false;
var bookmarkDataStr = '';
var lessonLocation = "";
var bWinClose = false;
/*********************/

/**
 * Function: initAPI
 * Description: function to find and initialize the SCORM API Adapter.
 * 
 *
 * Parameters:
 *	NA

 * Returns:
 *  void
 */
function initAPI()
{
	// Initialising the API Adapter
	// detect browser before adding event
		if( $.browser.msie){
			
				//window.onunload =  forsecommit;// check window closed by clicking browser close button
		}else{
				//window.onbeforeunload =  forsecommit;// check window closed by clicking browser close button
		}
			strApiInit = doLMSInitialize();	
			//alert("strApiInit : "+ strApiInit);
			if ((strApiInit == "1") || (strApiInit == "true") || (strApiInit == true)) 
			{
				//alert("LMS initialized");
				initLMSvars();
				return true;
			} 
			else 
			{
				//alert(" :: initAPI() could not initialize SCORM 2004 Wrapper, course will be launched without scorm. ");
				return false;

			}
		/*});*/

	  
			  	
	
}

/*
 * commit tracking data, If widow is closed by clicking Browser close button  
 *  
 */
function forsecommit(event)
  {
  	if(!bWinClose){// check has added to indentify unload event from broswer close btn and UI close button
   		exitLMS();
   	}
  }

function initLMSvars(){
	userName = doLMSGetValue("cmi.learner_name");				
	if(EnvVariables.scorm === "1.2")
	{
		completionStatus = doLMSGetValue("cmi.core.lesson_status");
	}
	else
	{
		completionStatus = doLMSGetValue("cmi.completion_status");
	}	
	scoID = doLMSGetValue("cmi.launch_data");
	lessonLocation = getLMSData("lesson_location")
	bookmarkDataStr  = getLMSData('bookmarkdata');
	
}


/**
 * Function: setLMSData
 * Description:
 * 
 *
 * Parameters:
 *  p_LMSPropertyName - The kind of bookmark data to be saved // e.g. <BookmarkData>
 *  p_LMSPropertyValue - The actual data -- Should be in String format.
 *  p_sFunctionName - The callback function name, which would be called once the data is saved.
 *
 * Returns:
 *  void
 */
function setLMSData(p_LMSPropertyName, p_LMSPropertyValue, p_sFunctionName)
{
	//alert(thisFileName + " :: setLMSData() :: p_LMSPropertyName = " + p_LMSPropertyName + ", p_LMSPropertyValue = " + p_LMSPropertyValue + ", p_sFunctionName = " + p_sFunctionName);
	var p_sSuccess = false;
	var sBookmarkDataType = p_LMSPropertyName.toLowerCase();
	
	switch(String(sBookmarkDataType))
	{
		case "bookmarkdata":
			var convertBookMarkData = escape(p_LMSPropertyValue);
			if(EnvVariables.scorm === "1.2"){
				p_sSuccess = doLMSSetValue("cmi.suspend_data", convertBookMarkData);
			}
			else if(EnvVariables.scorm === "2004"){
				p_sSuccess = doSetValue('cmi.suspend_data', convertBookMarkData);
			}
			break;
		case "score":
			p_sSuccess = setScore(p_LMSPropertyValue);
			break;
		case "completion_status":
			p_sSuccess = setCompletionStatus(p_LMSPropertyValue);
			break;
		case "lesson_location":
			p_sSuccess = doLMSSetValue("cmi.core.lesson_location", p_LMSPropertyValue);
			break;
		default:
			throw new Error("application_12.html :: setLMSData() failed. p_LMSPropertyName data did not match.");
	}
	
	/*if (p_sFunctionName!=null && p_sFunctionName!=undefined && p_sFunctionName!="")
	{
		// Now make call to flash with the callback function name and the data;
		this.callFlash(p_LMSPropertyName,p_sFunctionName);
	}*/	
		if(EnvVariables.scorm === "1.2"){
			doLMSCommit();
		}else if(EnvVariables.scorm === "2004"){
			doCommit('');
		}
}

/**
 * Function: setScore
 * Description: Forwards the call to Scorm API wrapper to save the score on LMS.
 * 
 *
 * Parameters:
 *  p_score - The actual score to be stored in the LMS. The value always should be in - between score.min and score.max.
 *  
 * Returns:
 *  void
 */
function setScore(p_score)
{
	var finalAvgScore = Number(p_score);
	if(EnvVariables.scorm === "1.2")
	  {
		 doLMSSetValue("cmi.core.score.raw",finalAvgScore); 
	  }
	  else
	  {
		 doLMSSetValue("cmi.score.raw",finalAvgScore);
	  }
	  doLMSCommit();
}

/**
 * Function: setCompletionStatus
 * Description: Forwards the call to Scorm API wrapper to save the completion status on LMS.
 * 
 *
 * Parameters:
 *  p_completionStatus - 
 *  
 * Returns:
 *  void
 *
 * TODO: Besides setting completion need to see if any other value need to be set, like passed, failed etc.
 */
function setCompletionStatus(p_completionStatus)
{
	//alert(thisFileName + " :: setCompletionStatus() :: p_completionStatus = " + p_completionStatus + ", trackAlreadyCompletedOrNot = " + trackAlreadyCompletedOrNot);
	if (completionStatus == "completed")
	{
		p_completionStatus = "completed"
	}
	
	completionStatus = p_completionStatus;

	if(EnvVariables.scorm === "1.2")
	{
		var s_value = doLMSSetValue("cmi.core.lesson_status", p_completionStatus);
		doLMSCommit();
		doLMSGetValue("cmi.core.lesson_status");
	}
	else
	{
		var s_value = doLMSSetValue("cmi.completion_status", p_completionStatus);
		doLMSSetValue("cmi.success_status","passed")// Check value here
		doLMSCommit();
		var val1=doLMSGetValue("cmi.completion_status"); 
	}
	return s_value;
}

/**
 * Function: getLMSData
 * Description:
 * 
 *
 * Parameters:
 *  p_BookmarkType - description
 *  p_sFunctionName - description
 *
 * Returns:
 *  void
 */
function getLMSData(p_BookmarkType, p_sFunctionName)
{
	//alert(thisFileName + " :: getLMSData() :: p_BookmarkType = " + p_BookmarkType + ", p_sFunctionName = " + p_sFunctionName);
	var sData;
	var sBookmarkDataType = p_BookmarkType.toLowerCase();
	switch(String(sBookmarkDataType))
	{
		case "launchdata":
			sData = doLMSGetValue("cmi.launch_data");
			break;
		case "bookmarkdata":
		var convertBookMarkData = "";
			if(EnvVariables.scorm === "1.2"){
				convertBookMarkData = doLMSGetValue("cmi.suspend_data");
			}
			else if(EnvVariables.scorm === "2004"){
				convertBookMarkData = doGetValue('cmi.suspend_data',true);
			}
			convertBookMarkData = unescape(convertBookMarkData);
			sData = convertBookMarkData;
			break;
		case "progressmeasure":
			// Not applicable for SCORM 1.2		
			//sData = doGetValue("cmi.progress_measure");
			break;
		case "score":
			 if(EnvVariables.scorm === "1.2")
			{
				sData = doLMSGetValue("cmi.core.score.raw");
				nLastRetrivedScore = sData;
				nLastScoreSaved = nLastRetrivedScore==""?0:Number(nLastRetrivedScore);
			}
			else
			{
			   sData = doLMSGetValue("cmi.score.raw");
			   nLastRetrivedScore = sData;
			   nLastScoreSaved = nLastRetrivedScore==""?0:Number(nLastRetrivedScore); 
			}
			
			break;

		case "completion_status":
			  if(EnvVariables.scorm === "1.2")
			  {
				 sData = doLMSGetValue("cmi.core.lesson_status");  
			  }
			  else
			  {
				  sData = doLMSGetValue("cmi.completion_status");
			  }
				
			break;
		case "lesson_location" :
			if(EnvVariables.scorm === "1.2")
			  {
				 sData = doLMSGetValue("cmi.core.lesson_location");  
			  }
			  else
			  {
				  sData = doLMSGetValue("cmi.location");
			  }
		break;
		default:
			sData = "Failed to get Value";
	}
	return sData;	
}

/**
 * Function: exitLMS
 * Description: 
 * 
 *
 * Parameters:
 *	NA

 * Returns:
 *  void
 */
/*---------------------------------------------------------------------------------------------------
	exitCourse() function is called when all the required data is captured from the LMS
-----------------------------------------------------------------------------------------------------*/

function exitLMS()
{
	
	//alert(" :: exitCourse() ::  LMSFinishDone = " + LMSFinishDone);
	if (LMSFinishDone == false)
	{
		var sessionTime = getTimeSpent();
		if(EnvVariables.scorm === "1.2")
		{
			doLMSSetValue("cmi.core.session_time", sessionTime);
		}
		else
		{
			 doLMSSetValue("cmi.session_time", sessionTime);
		}
		doLMSCommit();
		doLMSFinish();
		LMSFinishDone = true;
	}
	bWinClose = true
	window.close();
	//window.top.close();
}

/**
 * Function: getTimeSpent
 * Description: 
 * 
 *
 * Parameters:
 *	NA

 * Returns:
 *  void
 */
/*---------------------------------------------------------------------------------------------------
	getTimeSpent() function is called while exiting from the course
-----------------------------------------------------------------------------------------------------*/
function getTimeSpent()
{
	var date = new Date();
	var logoffTime = date.getTime();
	timeDiff = logoffTime - startDate;
	sec = timeDiff/1000;
	tmp = sec/3600;
	hrs = Math.floor(tmp);
	min1 = (tmp - hrs) * 60;
	min = Math.floor(min1);
	sec1 = (min1-min)*60;
	sec = Math.floor(sec1);
	if (hrs < 10) hrs = "0" + hrs;
	if (min < 10) min = "0" + min;
	if (sec < 10) sec = "0" + sec;
	time = hrs + ":" + min + ":" + sec;
	return time;
}
