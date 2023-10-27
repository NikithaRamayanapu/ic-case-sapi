%dw 2.0
output application/json
---
[{
	
	Subject: payload.subject default "",
	Description: payload.description default "",
	Status: payload.status default "",
	Priority: payload.priority default "",
	Sync_new_record_to_db__c: payload.sync_new_record_to_db,
	Sync_update_record_to_db__c: payload.sync_update_record_to_db,
	External_Id: payload.external_Id,
	OwnerId: payload.owner_Id
}]