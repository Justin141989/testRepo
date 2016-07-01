global class GetRecordType
{   
//Test checkk
    webservice static string getRecID(String objName, String recordTypeName)
    {
        try{
            return Schema.getGlobalDescribe().get(objName).getDescribe().getRecordTypeInfosByName().get(recordTypeName).getRecordTypeId();
        }
        catch(Exception e){
            return 'Nope';
        }
    }
    webservice static string getDevName(String objName, String recordTypeID)
    {
        try{
                return Schema.getGlobalDescribe().get(objName).getDescribe().getRecordTypeInfosById().get(recordTypeID).getName();
                //system.debug('---'+devRecordTypeId);
        }
        catch(Exception e){
            return 'Nope';
        }
    }
}