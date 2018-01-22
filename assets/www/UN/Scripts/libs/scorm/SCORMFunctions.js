//-------------------------------------------------****************-------------------------------------------------------/
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
var courseType="Assessment"
var secTemp
var minTemp
var hrsTemp
var sec
var min
var hrs
var mySessionTime
var splitTime =new Array()
var sessionTimeSpent
hrsTemp = 0;
minTemp = 0;
secTemp = 0;

//-------------------------------------------------*******initAPI********-------------------------------------------------------/
function initAPI()
{
	
		if( $.browser.msie){
			
				
		}else{
				
		}
			strApiInit = doLMSInitialize();	
			
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
	

	  
			  	
	
}



//-------------------------------------------------**********forsecommit*****-------------------------------------------------------/

function forsecommit(event){
  	if(!bWinClose){
   	
   	}
}


//-------------------------------------------------*********initLMSvars*******-------------------------------------------------------/

function initLMSvars(){
	userName = doLMSGetValue("cmi.learner_name");				
	if(Controller.scorm === "1.2")
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



//-------------------------------------------------********setLMSData*******-------------------------------------------------------/

function setLMSData(p_LMSPropertyName, p_LMSPropertyValue, p_sFunctionName)
{
	var p_sSuccess = false;
	var sBookmarkDataType = p_LMSPropertyName.toLowerCase();
	
	switch(String(sBookmarkDataType))
	{
		case "bookmarkdata":
			var convertBookMarkData = escape(p_LMSPropertyValue);
			if(Controller.scorm === "1.2"){
				p_sSuccess = doLMSSetValue("cmi.suspend_data", convertBookMarkData);
			}
			else if(Controller.scorm === "2004"){
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
		if(Controller.scorm === "1.2"){
			doLMSCommit();
		}else if(Controller.scorm === "2004"){
			doCommit('');
		}
}




//-------------------------------------------------*********setScore******-------------------------------------------------------/
function setScore(p_score)
{
	var finalAvgScore = Number(p_score);

	
		

	if(Controller.scorm === "1.2")
	  {
		 doLMSSetValue("cmi.core.score.raw",finalAvgScore); 
	  }
	  else
	  {
		 doLMSSetValue("cmi.score.raw",finalAvgScore);
	  }
	  doLMSCommit();
}




//-------------------------------------------------*********setCompletionStatus******-------------------------------------------------------/
function setCompletionStatus(p_completionStatus)
{
	if (courseType == "Assessment"){
		completionStatus = p_completionStatus;
		if (completionStatus == "completed")
		{
			p_completionStatus = "passed"
		}
		
	}

	if (courseType == "Normal"){
		completionStatus = p_completionStatus;
		if (completionStatus == "completed")
		{
			p_completionStatus = "completed"
		}
		
	}
	
	

	if(Controller.scorm === "1.2")
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



//-------------------------------------------------*********getLMSData******-------------------------------------------------------/
function getLMSData(p_BookmarkType, p_sFunctionName)
{
	var sData;
	var sBookmarkDataType = p_BookmarkType.toLowerCase();
	switch(String(sBookmarkDataType))
	{
		case "launchdata":
			sData = doLMSGetValue("cmi.launch_data");
			break;
		case "bookmarkdata":
		var convertBookMarkData = "";
		if(Controller.scorm === "1.2"){
				convertBookMarkData = doLMSGetValue("cmi.suspend_data");
			}
			else if(Controller.scorm === "2004"){
				convertBookMarkData = doGetValue('cmi.suspend_data',true);
			}
			convertBookMarkData = unescape(convertBookMarkData);
			sData = convertBookMarkData;
			break;
		case "progressmeasure":
			break;
		case "score":
			 if(Controller.scorm === "1.2")
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
			  if(Controller.scorm === "1.2")
			  {
				 sData = doLMSGetValue("cmi.core.lesson_status");  
			  }
			  else
			  {
				  sData = doLMSGetValue("cmi.completion_status");
			  }
				
			break;
		case "lesson_location" :
			if(Controller.scorm === "1.2")
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


//-------------------------------------------------*********exitLMS*******-------------------------------------------------------/
function exitLMS()
{
	
	if (LMSFinishDone == false)
	{
		var sessionTime = getTimeSpent();
		if(Controller.scorm === "1.2")
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
}



//-------------------------------------------------********getTimeSpent********-------------------------------------------------------/
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







//-------------------------------------------------*********getSessionVal*******-------------------------------------------------------/
 function getSessionVal(){
	  hrsTemp = 0;
	  minTemp = 0;
	  secTemp = 0;
 }


 //-------------------------------------------------*********getCurrentDate*******-------------------------------------------------------/

function getCurrentDate(){
   var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!

    var yyyy = today.getFullYear();
    if(dd<10){
        dd='0'+dd
    } 
    if(mm<10){
        mm='0'+mm
    } 
    var today = dd+'/'+mm+'/'+yyyy;
	return today

}


//-------------------------------------------------********setTime********-------------------------------------------------------/

function setTime(){

	secTemp++

	if (secTemp==60){
			secTemp = 0;
			minTemp++
	   } 
	  if (minTemp==60){
			minTemp=0;
			hrsTemp++
	  }
	   
	if (hrs < 10){
		hrs = "0" + hrsTemp;
	}else{
	hrs = hrsTemp;
	}
	if (min < 10) {
		min = "0" + minTemp;
	}else{
	min =minTemp
	}
	if (sec < 10){
		sec = "0" + secTemp;
	}else{
	sec =secTemp
	}
	
	mySessionTime = hrs + ":" + min + ":" + sec
	//console.log(mySessionTime)
}



//-------------------------------------------------********sendSessionTimeToLMS********-------------------------------------------------------/
function  sendSessionTimeToLMS(){
	if(Controller.scorm === "1.2")
		{
			doLMSSetValue("cmi.core.session_time", mySessionTime);
			
	
		}
		else
		{
			 doLMSSetValue("cmi.session_time", mySessionTime);
		}
		
}
