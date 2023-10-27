%dw 2.0
output application/json
---
[{
	"Id": vars.id,
	("Subject": payload.subject) if(not isEmpty(payload.subject)),
	("Description": payload.description) if(not isEmpty(payload.description)),
	("Status": payload.status) if(not isEmpty(payload.status)),
	("Priority": payload.priority) if(not isEmpty(payload.priority)),
    ("OwnerId": payload.owner_Id) if(not isEmpty(payload.owner_Id)),
	("sync_new_record_to_db__c": payload.sync_new_record_to_db__c) if(not isEmpty(payload.sync_new_record_to_db__c)),
	("external_id__c": payload.external_id) if(not isEmpty(payload.external_id__c))
}]