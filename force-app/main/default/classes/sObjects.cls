// public with sharing class Sobjects {
//     public Sobjects() 
//     {
//         Account acct = new Account(Name='Acme', Phone='(415)555-1212', NumberOfEmployees=100); //standar objects
//         // cualquier objeto puede ser asignado a una variable generica de sObject
//         sObject sobj1 = new Account(Name='Trailhead');
//         sObject sobj2 = new Book__c(Name='Workbook 1');
//         // Cast a generic sObject to an Account
//         Account acct1 = (Account)myGenericSObject;
//         // Now, you can use the dot notation to access fields on Account
//         String name = acct1.Name;
//         String phone = acct1.Phone;
//         // ****** CUSTOM OBJECTS *********
//         // Create a Student sObject
//         Student__c st1 = new Student__c(Student_Name__c = 'Agus');
//        //How do I do it if I wanna set name and number of employees for Account?
       
        
//         sObject s1 = new Account (Name = 'Amazon');
//         sObject s2 = new Contact (lastname = 'Pearson');
//         sObject svalue = new Student__c (Student_Name__c = 'Jessica');
//         s1.Name = 'Atoz';
//         s1.put('NumberOfEmployees', value000);

//         // s1 = New Account();
//         // s1.put ('Name', 'Agus');
//         // s1.put ('NumberOfEmployees', value000);

//         integer a = s1.NumberOfEmployees;
//         integer a = s1.get('NumberOfEmployees');
//     }
// }

public class AccountHandler {
    public static void insertAccount(Integer value){
        // create a list to add our accounts
        List<Account> addAccounts = new List<Account>();
        Integer N = 1;
        while(N <= value){
            
            Account acc = new Account();
            acc.Name = 'Acme Inc N ' + N;
            acc.AccountNumber = 'A000n' + N;
            addAccounts.add(acc);
            System.debug(addAccounts);
            //increment the N
            N = N + 1;
        }
        insert addAccounts;
    }
}