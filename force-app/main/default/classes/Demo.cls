public with sharing class Demo {
  @AuraEnabled(cacheable=true)
  public static list<Account> Demo() {
    list<Account> accounts = new List<Account>();
    if (Schema.sObjectType.Account.fields.Name.isAccessible()) {
      accounts = [SELECT Id, Name FROM Account];
      system.debug('hello world');
    }
    return accounts;
  }
}
