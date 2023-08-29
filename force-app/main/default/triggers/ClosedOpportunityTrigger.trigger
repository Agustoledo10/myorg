/* 
* Create a bulkified Apex trigger that adds a follow-up task to an opportunity if its stage is Closed Won. 
Create an Apex trigger:
Object: Opportunity
Events: after insert and after update
! Condition: Stage is Closed Won
? Operation: Create a task:
    Subject: Follow Up Test Task
    WhatId: the opportunity ID (associates the task with the opportunity)
Bulkify the Apex trigger so that it can insert or update 200 or more opportunities */
trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> taskList = new List<Task>();
    for(Opportunity opp : [SELECT Id, StageName FROM Opportunity WHERE StageName='Closed Won' AND Id IN : Trigger.New]){
        taskList.add(new Task(Subject='Follow Up Test Task', WhatId = opp.Id));
    }
    
    if(taskList.size()>0){
        insert tasklist;
    }
}

