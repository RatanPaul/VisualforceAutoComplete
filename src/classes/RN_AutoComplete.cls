global with sharing class RN_AutoComplete 
{
    @RemoteAction
    public static Sobject[] fetchSObjects(String strSobjectName, String strFieldName, String strSearch)
    {
        List<Sobject> lstSobject = new List<Sobject>();
        String strQuery = 'SELECT Id, '+strFieldName+ ' FROM '+strSobjectName+' WHERE '+strFieldName+ ' like \'%'+strSearch+'%\'';
        return database.query(strQuery);
    }
}