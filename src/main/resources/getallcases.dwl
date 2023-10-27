%dw 2.0
output application/json
---
payload map ( payload01 , indexOfPayload01 ) -> {
	Id: payload01.Id default "",
	CaseNumber: payload01.CaseNumber default "",
	Subject: payload01.Subject default "",
	Description: payload01.Description default "",
	Status: payload01.Status default "",
	Priority: payload01.Priority default "",
	CreatedDate: payload01.CreatedDate as String default "",
	LastModifiedDate: payload01.LastModifiedDate as String default "",
	Sync_new_record_to_db: payload01.Sync_new_record_to_db__c default "",
	Sync_update_record_to_db: payload01.Sync_update_record_to_dc__c default "",
	External_Id: payload01.External_Id__c as String default "",
	Owner_Id: payload01.OwnerId default ""
}