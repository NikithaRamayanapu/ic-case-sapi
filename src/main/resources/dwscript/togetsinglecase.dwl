%dw 2.0
output application/json
---
payload map ( payload01 , indexOfPayload01 ) -> {
	(id: payload01.Id),
	(account_number: payload01.AccountNumber) if(not isEmpty(payload01.AccountNumber)),
	(annual_revenue: payload01.AnnualRevenue) if(not isEmpty(payload01.AnnualRevenue)),
	(Status: payload01.Status) if(not isEmpty(payload01.Status)),
	(Description: payload01.Description) if(not isEmpty(payload01.Description)),
	(Priority: payload01.Priority) if(not isEmpty(payload01.Priority)),
	(no_of_employees: payload01.NumberOfEmployees) if(not isEmpty(payload01.NumberOfEmployees)),
	(phone: payload01.Phone) if(not isEmpty(payload01.Phone)),
	(shipping_address: payload01.ShippingStreet) if(not isEmpty(payload01.ShippingStreet)),
	(shipping_country: payload01.ShippingCountry) if(not isEmpty(payload01.ShippingCountry)),
	(shipping_city: payload01.ShippingCity) if(not isEmpty(payload01.ShippingCity)),
	(last_modified_date: payload01.LastModifiedDate) if(not isEmpty(payload01.LastModifiedDate)),
	(last_viewed_date: payload01.LastViewedDate) if(not isEmpty(payload01.LastViewedDate)),
	(last_referenced_date: payload01.LastReferencedDate) if(not isEmpty(payload01.LastReferencedDate)),
	(last_modified_by_id: payload01.LastModifiedById) if(not isEmpty(payload01.LastModifiedById)),
	(owner_id: payload01.Owner_Id) if(not isEmpty(payload01.Owner_Id)),
	
	(sync_new_record_to_db: payload01.sync_new_record_to_db__c) if(not isEmpty(payload01.sync_new_record_to_db__c)),
	(external_id: payload01.external_id__c) if(not isEmpty(payload01.external_id__c))
}