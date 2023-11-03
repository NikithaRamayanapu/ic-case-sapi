%dw 2.0
output application/json
---
payload map ( payload01 , indexOfPayload01 ) -> {
	id: payload01.Id ,
	case_number: payload01.CaseNumber,
	subject: payload01.Subject ,
	description: payload01.Description ,
	status: payload01.Status ,
	priority: payload01.Priority ,
	created_date: payload01.CreatedDate ,
	last_modified_date: payload01.LastModifiedDate ,
	sync_new_record_to_db: payload01.Sync_new_record_to_db__c ,
	sync_update_record_to_db: payload01.Sync_update_record_to_dc__c ,
	external_id: payload01.External_Id__c ,
	owner_id: payload01.OwnerId 
}