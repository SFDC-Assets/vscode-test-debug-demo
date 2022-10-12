public with sharing class Demo {
  @AuraEnabled(cacheable=true)
  public static list<Account> Demo() {
    if (Schema.sObjectType.Account.fields.Name.isAccessible()) {
      list<Account> accounts = [SELECT Id, Name FROM Account];
      system.debug('hello world');
      return accounts;
    }
  }
}
