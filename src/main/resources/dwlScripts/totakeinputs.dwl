%dw 2.0
output application/json
---
[{
	
	Subject: payload.subject ,
	Description: payload.description ,
	Status: payload.status ,
	Priority: payload.priority ,
	Sync_new_record_to_db__c: payload.sync_new_record_to_db,
	Sync_update_record_to_db__c: payload.sync_update_record_to_db,
	External_Id__c: payload.external_id,
	OwnerId: payload.owner_id
}]