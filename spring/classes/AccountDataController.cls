public with sharing class AccountDataController {

    @AuraEnabled(cacheable=true)

    public static list<Account> getAccountList(){

 

        list<Account> acclist=new list<Account>();

        acclist=[SELECT id,Name,Industry,Description from Account order by createddate desc Limit 10];

        return acclist;

    }

    public AccountDataController() {

 

    }

}