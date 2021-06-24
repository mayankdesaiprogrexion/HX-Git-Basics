/**************************************************************************************************
 Author: Amita Sharma
 Company: Hexaware Technologies
 Description: This is a generic class to handle CONSTANTS
====================================================================================================
====================================================================================================
 TestClass: 
 Code Coverage: 
====================================================================================================
====================================================================================================
 History
 <Version>   <Date>             <Author Name>                <Brief description of change > 
  1.0 -      03/26/2021         Amita Sharma     				Initial Creation   
***************************************************************************************************/
public class PGRX_Constants {
    
    /** Callout Methods */
    public static String POST = 'POST';
    public static String GET = 'GET';
    public static String PUT = 'PUT';
    
    /** Property Names */
    public static final String USERNAME_PROPERTY = 'username';
    public static final String PASSWORD_PROPERTY = 'password';

    /** Support Note API */
    public static String SUPPORT_NOTE_SOURCE = 'Salesforce';
    public static String REV_AGENT_DOMAIN_ID = '606654';
    public static String CONTENTTYPE = 'Content-Type'; 
    public static String APPLICATIONJSON = 'application/json';
    public static String BASIC = 'Basic';
    public static String AUTHORIZATION = 'Authorization';
    public static String ENDUSER = 'End-User';
    public static String ENDUSERTYPE = 'End-User-Type';
    public static String ENDUSERTYPEVALUE = 'CRM';
    public static String SUPPORTNOTE_USER = 'sf_external';
    public static String SUPPORTNOTE_PWD = '8XbmOuXRulXgyQ9k';
    public static String SUPPORTNOTE_ENDPOINT= 'https://partnerapi-test.progrexion.com/sfinbound/v2/supportnote/';
    public static String SUPPORTNOTE_TYPE = 'Complaint Management System';
    public static String SUPPORTNOTE_CONFIG_NAME = 'Support_Note_Integration';
	public static final String PGRX_CUSTOMERCOMPLAINT_RT_ID = getRecordTypeIdFromDeveloperName('Case', 'PGRX_customerComplaint');
	
    public static final String SUPPORTNOTE_TYPENAME = 'type';
    public static final String SUPPORTNOTE_SOURCE = 'source';


/**
* Get Record Type Id From Developer Name
* @author Nikhil
* @Param Object Name
* @Param record type developer name 
* @return Id
*/
public static Id getRecordTypeIdFromDeveloperName(String objectName, String recordTypeDeveloperName) {
	Id recordTypeId = NULL;
	try {
		if (String.isNotBlank(ObjectName) && String.isNotBlank(recordTypeDeveloperName))
			recordTypeId = Schema.getGlobalDescribe().get(ObjectName).getDescribe().getRecordTypeInfosByDeveloperName().get(recordTypeDeveloperName).getRecordTypeId();
	} catch(Exception ex) {
		
	}
	return recordTypeId;
	}
    
    /**
    * Get Record Type Id From label
    * @author Amita Sharma
    * @Param Object Name
    * @Param record type Label 
    * @return Id
    */
	public static Id getRecordTypeIdFromName(String objectName, String recordTypeName) {
        Id recordTypeId;
        try {
            if (String.isNotBlank(ObjectName) && String.isNotBlank(recordTypeName))
                recordTypeId = Schema.getGlobalDescribe().get(ObjectName)?.getDescribe()?.getRecordTypeInfosByName().get(recordTypeName)?.getRecordTypeId();
        } catch(Exception ex) {
          
        }
        return recordTypeId;
	}
}