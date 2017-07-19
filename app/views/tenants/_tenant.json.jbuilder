json.extract! tenant, :id, :tenent_name, :from, :to, :amount_paid, :balance, :total, :landlord_id, :created_at, :updated_at
json.url tenant_url(tenant, format: :json)