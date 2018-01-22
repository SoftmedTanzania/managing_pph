var _Debug = false;    // set this to false to turn debugging off
                     // and get rid of those annoying alert boxes.
// Define exception/error codes
var _NoError = 0;
var _GeneralException = 101;
var _ServerBusy = 102;
var _InvalidArgumentError = 201;
var _ElementCannotHaveChildren = 202;
var _ElementIsNotAnArray = 203;
var _NotInitialized = 301;
var _NotImplementedError = 401;
var _InvalidSetValue = 402;
var _ElementIsReadOnly = 403;
var _ElementIsWriteOnly = 404;
var _IncorrectDataType = 405;

var startDate;
// local variable definitions
var apiHandle = null;
var API = null;
var findAPITries = 0;
var checkAPI=0;
var _Debug = false;
/*******************************************************************************
**
** Function: doLMSInitialize()
** Inputs:  None
** Return:  CMIBoolean true if the initialization was successful, or
**          CMIBoolean false if the initialization failed.
**
** Description:
** Initialize communication with LMS by calling the LMSInitialize
** function which will be implemented by the LMS.
**
*******************************************************************************/
function doLMSInitialize()
{
	//startTimer();
	
  var api = window.getAPIHandle();
  //check if course is launched in new window.
  if(api == undefined || api == null){
  	api = window.parent.getAPIHandle();
  }
 	// alert("doLMSInitialize: api "+ api );
   if (api == null || api == undefined)
   {
      if (_Debug == true) {alert("Unable to locate the LMS's API Implementation.\nLMSInitialize was not successful.");}
      return "false";
   }

   var result = api.LMSInitialize("");

   if (result.toString() != "true")
   {
      var err = ErrorHandler();
   }
	userName=api.LearnerName;
	return result.toString();

}

/*******************************************************************************
**
** Function doLMSFinish()
** Inputs:  None
** Return:  CMIBoolean true if successful
**          CMIBoolean false if failed.
**
** Description:
** Close communication with LMS by calling the LMSFinish
** function which will be implemented by the LMS
**
*******************************************************************************/
function doLMSFinish()
{
   var api = getAPIHandle();
   if (api == null)
   {
      if (_Debug == true) {alert("Unable to locate the LMS's API Implementation.\nLMSFinish was not successful.");}
      return "false";
   }
   else
   {
      // call the LMSFinish function that should be implemented by the API

      var result = api.LMSFinish("");
      if (result.toString() != "true")
      {
         var err = ErrorHandler();
      }

   }

   return result.toString();
}

/*******************************************************************************
**
** Function doLMSGetValue(name)
** Inputs:  name - string representing the cmi data model defined category or
**             element (e.g. cmi.core.student_id)
** Return:  The value presently assigned by the LMS to the cmi data model
**       element defined by the element or category identified by the name
**       input value.
**
** Description:
** Wraps the call to the LMS LMSGetValue method
**
*******************************************************************************/
function doLMSGetValue(name)
{
   var api = getAPIHandle();
   if (api == null)
   {
      if (_Debug == true) {alert("Unable to locate the LMS's API Implementation.\nLMSGetValue was not successful.");}
      return "";
   }
   else
   {
      var value = api.LMSGetValue(name);
      var errCode = api.LMSGetLastError().toString();
      if (errCode != _NoError)
      {
         // an error was encountered so display the error description
         var errDescription = api.LMSGetErrorString(errCode);
         if (_Debug == true) {alert("LMSGetValue("+name+") failed. \n"+ errDescription);}
         return "";
      }
      else
      {
         
         return value.toString();
      }
   }
}

/*******************************************************************************
**
** Function doLMSSetValue(name, value)
** Inputs:  name -string representing the data model defined category or element
**          value -the value that the named element or category will be assigned
** Return:  CMIBoolean true if successful
**          CMIBoolean false if failed.
**
** Description:
** Wraps the call to the LMS LMSSetValue function
**
*******************************************************************************/
function doLMSSetValue(name, value)
{
   var api = getAPIHandle();
   if (api == null)
   {
      if (_Debug == true) {alert("Unable to locate the LMS's API Implementation.\nLMSSetValue was not successful.");}
      return;
   }
   else
   {
      var result = api.LMSSetValue(name, value);
      if (result.toString() != "true")
      {
         var err = ErrorHandler();
      }else
	  {
		  return result;
	  }
   }

   return err;
}

/*******************************************************************************
**
** Function doLMSCommit()
** Inputs:  None
** Return:  None
**
** Description:
** Call the LMSCommit function 
**
*******************************************************************************/
function doLMSCommit()
{
   var api = getAPIHandle();
   if (api == null)
   {
      if (_Debug == true) {alert("Unable to locate the LMS's API Implementation.\nLMSCommit was not successful.");}
      return "false";
   }
   else
   {
      var result = api.LMSCommit("");
      if (result != "true")
      {
         var err = ErrorHandler();
      }
   }

   return result.toString();
}

/*******************************************************************************
**
** Function doLMSGetLastError()
** Inputs:  None
** Return:  The error code that was set by the last LMS function call
**
** Description:
** Call the LMSGetLastError function 
**
*******************************************************************************/
function doLMSGetLastError()
{
   var api = getAPIHandle();
   if (api == null)
   {
      if (_Debug == true) {alert("Unable to locate the LMS's API Implementation.\nLMSGetLastError was not successful.");}
      //since we can't get the error code from the LMS, return a general error
      return _GeneralError;
   }

   return api.LMSGetLastError().toString();
}

/*******************************************************************************
**
** Function doLMSGetErrorString(errorCode)
** Inputs:  errorCode - Error Code
** Return:  The textual description that corresponds to the input error code
**
** Description:
** Call the LMSGetErrorString function 
**
********************************************************************************/
function doLMSGetErrorString(errorCode)
{
   var api = getAPIHandle();
   if (api == null)
   {
      if (_Debug == true) {alert("Unable to locate the LMS's API Implementation.\nLMSGetErrorString was not successful.");}
   }

   return api.LMSGetErrorString(errorCode).toString();
  
}

/*******************************************************************************
**
** Function doLMSGetDiagnostic(errorCode)
** Inputs:  errorCode - Error Code(integer format), or null
** Return:  The vendor specific textual description that corresponds to the 
**          input error code
**
** Description:
** Call the LMSGetDiagnostic function
**
*******************************************************************************/
function doLMSGetDiagnostic(errorCode)
{
   var api = getAPIHandle();
   if (api == null)
   {
      if (_Debug == true) {alert("Unable to locate the LMS's API Implementation.\nLMSGetDiagnostic was not successful.");}
   }

   return api.LMSGetDiagnostic(errorCode).toString();
}

/*******************************************************************************
**
** Function LMSIsInitialized()
** Inputs:  none
** Return:  true if the LMS API is currently initialized, otherwise false
**
** Description:
** Determines if the LMS API is currently initialized or not.
**
*******************************************************************************/
function LMSIsInitialized()
{
   // there is no direct method for determining if the LMS API is initialized
   // for example an LMSIsInitialized function defined on the API so we'll try
   // a simple LMSGetValue and trap for the LMS Not Initialized Error

   var api = getAPIHandle();
   startTimer();
   if (api == null)
   {
      if (_Debug == true) {alert("Unable to locate the LMS's API Implementation.\nLMSIsInitialized() failed.");}
	  return false;
   }
   else
   {
      var value = api.LMSGetValue("cmi.core.student_name");
      var errCode = api.LMSGetLastError().toString();
	 //startTimer();
      if (errCode == _NotInitialized)
      {
         return false;
      }
      else
      {
         return true;
      }
   }
}

function startTimer()
{
   var api = getAPIHandle();
   if (api == null)
   {
      if (_Debug == true)
	  		alert("Unable to locate the LMS's API Implementation.\nLMSGetErrorString was not successful.");
   }
   startDate = new Date().getTime();
  // alert("From startTimer(): "+startDate);
}

function computeTime()
{
	var api = getAPIHandle();
	if (api == null)
	{
	  if (_Debug == true)
		alert("Unable to locate the LMS's API Implementation.\nLMSGetErrorString was not successful.");
	}
	if ( startDate != 0 )
	{
	 var currentDate = new Date().getTime();
	 // alert("From apiwrapper currentDate: "+currentDate+" startdate: "+startDate);
	  var elapsedSeconds = ( (currentDate - startDate) / 1000 );
	  var formattedTime = convertTotalSeconds( elapsedSeconds );
	}
	else
	{
	  formattedTime = "00:00:00.0";
	}
	//A alert("formattedTime "+formattedTime);
	return formattedTime;
}

function convertTotalSeconds(ts)
{
   var sec = (ts % 60);
	
   ts -= sec;
   var tmp = (ts % 3600);  //# of seconds in the total # of minutes
   ts -= tmp;              //# of seconds in the total # of hours

   // convert seconds to conform to CMITimespan type (e.g. SS.00)
   sec = Math.round(sec*100)/100;
  // alert("From apiwrapper sec: "+Math.round(sec*100)/100);
   var strSec = new String(sec);
   var strWholeSec = strSec;
   var strFractionSec = "";

   if (strSec.indexOf(".") != -1)
   {
      strWholeSec =  strSec.substring(0, strSec.indexOf("."));
      strFractionSec = strSec.substring(strSec.indexOf(".")+1, strSec.length);
   }
   
   if (strWholeSec.length < 2)
   {
      strWholeSec = "0" + strWholeSec;
   }
   strSec = strWholeSec;
   
   if (strFractionSec.length)
   {
      strSec = strSec+ "." + strFractionSec;
   }


   if ((ts % 3600) != 0 )
      var hour = 0;
   else var hour = (ts / 3600);
   if ( (tmp % 60) != 0 )
      var min = 0;
   else var min = (tmp / 60);

   if ((new String(hour)).length < 2)
      hour = "0"+hour;
   if ((new String(min)).length < 2)
      min = "0"+min;
	//alert("From apiwrapper strsec: "+strSec);
   var rtnVal = hour+":"+min+":"+parseFloat(strSec);

   return rtnVal;
}

/*******************************************************************************
**
** Function ErrorHandler()
** Inputs:  None
** Return:  The current value of the LMS Error Code
**
** Description:
** Determines if an error was encountered by the previous API call
** and if so, displays a message to the user.  If the error code
** has associated text it is also displayed.
**
*******************************************************************************/
function ErrorHandler()
{
   var api = getAPIHandle();
   if (api == null)
   {
      if (_Debug == true) {alert("Unable to locate the LMS's API Implementation.\nCannot determine LMS error code.");}
      return;
   }

   // check for errors caused by or from the LMS
   var errCode = api.LMSGetLastError().toString();
   if (errCode != _NoError)
   {
      // an error was encountered so display the error description
      var errDescription = api.LMSGetErrorString(errCode);

      if (_Debug == true)
      {
         errDescription += "\n";
         errDescription += api.LMSGetDiagnostic(null);
         // by passing null to LMSGetDiagnostic, we get any available diagnostics
         // on the previous error.
      }

      if (_Debug == true) {alert(errDescription);}
   }

   return errCode;
}

/******************************************************************************
**
** Function getAPIHandle()
** Inputs:  None
** Return:  value contained by APIHandle
**
** Description:
** Returns the handle to API object if it was previously set,
** otherwise it returns null
**
*******************************************************************************/
function getAPIHandle()
{
	
   if (apiHandle == null)
   {
      apiHandle = getAPI();
   }

//console.log("apiHandle: "+ apiHandle)
   return apiHandle;
}
/*******************************************************************************
**
** Function findAPI(win)
** Inputs:  win - a Window Object
** Return:  If an API object is found, it's returned, otherwise null is returned
**
** Description:
** This function looks for an object named API in parent and opener windows
**
*******************************************************************************/
function findAPI(win)
{
   //alert("APIWrapper_scorm_12.js :: findAPI() :: win = "+ win);
  
	try
	{
		//alert("APIWrapper_scorm_12.js :: findAPI() :: win.API = " + win.API + ", win.parent = " + win.parent);
		while ((win.API == null || win.API == "undefined") && (win.parent != null) && (win.parent != win))
		{
			findAPITries++;
			//alert("APIWrapper_scorm_12.js :: findAPI() :: findAPITries = " + findAPITries);
			// Note: 7 is an arbitrary number, but should be more than sufficient
			if (findAPITries > 7) 
			{
			 if (_Debug == true) {alert("Error finding API -- too deeply nested.");}
			 return null;
			}

			win = win.parent;
			//alert("APIWrapper_scorm_12.js :: findAPI() :: win = " + win);
			//alert("APIWrapper_scorm_12.js :: findAPI() :: win.API = " + win.API + ", win.parent" + win.parent);
		}
	}
	catch(err)
	{
		alert("APIWrapper_scorm_12.js :: findAPI() :: ERROR HANDLED " + err.message)
		return null;
	}
   
   return win.API;
}

/*******************************************************************************
**
** Function getAPI()
** Inputs:  none
** Return:  If an API object is found, it's returned, otherwise null is returned
**
** Description:
** This function looks for an object named API, first in the current window's 
** frame hierarchy and then, if necessary, in the current window's opener window
** hierarchy (if there is an opener window).
**
*******************************************************************************/
function getAPI()
{
   //alert("window.name: "+window.name+", window.opener.name: "+window.opener.name+", window.opener.opener.name: "+window.opener.opener.name);
   if (_Debug == true) {alert("Checking "+window.name+" for API"); }
   var theAPI = findAPI(window);
   if ((theAPI == null) && (window.opener != null) && (typeof(window.opener) != "undefined"))
   {
      var myWin=window.opener;
	  while(theAPI == null && checkAPI<10)
		  {
			//alert("checkAPI: "+checkAPI);
			//alert("myWin: "+myWin);
			if(typeof(myWin)=="undefined") {break;}
			checkAPI++;
			if (_Debug == true) {alert("Attempt No. "+checkAPI+": Checking "+myWin.name+" for API"); }
			theAPI = findAPI(myWin);
			if(myWin.opener != null){
				myWin = myWin.opener;
			}
			else{
				break;
			}
		  }
	}
	
   if (theAPI == null && checkAPI>=10)
   {
      if (_Debug == true) {alert("Unable to find an API adapter- too deply nested");}
   }
   if (theAPI == null && typeof(myWin)=="undefined")
	{
      if (_Debug == true) {alert("Unable to find an API adapter- No opener window present");}
   }
   return theAPI
}

