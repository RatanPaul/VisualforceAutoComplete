public with sharing class RN_AutoCompleteCtrl 
{
    public Id selectedId {get;set;}
    public void save()
    {
        system.debug('======='+selectedId);
    }
}