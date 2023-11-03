%dw 2.0
output application/json
---
payload map ( payload01 , indexOfPayload01 ) -> {
	(id: payload01.Id),
	(case_number: payload01.CaseNumber) if(not isEmpty(payload01.CaseNumber)),
	(subject: payload01.Subject) if(not isEmpty(payload01.Subject)),
	(status: payload01.Status) if(not isEmpty(payload01.Status)),
	(description: payload01.Description) if(not isEmpty(payload01.Description)),
	(priority: payload01.Priority) if(not isEmpty(payload01.Priority)),
	(last_modified_date: payload01.LastModifiedDate) if(not isEmpty(payload01.LastModifiedDate)),
	(created_date: payload01.CreatedDate) if(not isEmpty(payload01.CreatedDate)),
	(owner_id: payload01.OwnerId) if(not isEmpty(payload01.OwnerId)),
	(sync_new_record_to_db: payload01.Sync_new_record_to_db__c) if(not isEmpty(payload01.Sync_new_record_to_db__c)),
	(sync_update_record_to_db: payload01.Sync_update_record_to_db__c) if(not isEmpty(payload01.Sync_update_record_to_db__c)),
	(external_id: payload01.External_Id__c) if(not isEmpty(payload01.External_Id__c))
}