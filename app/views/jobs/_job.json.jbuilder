json.extract! job, :id, :date_applied, :job_title, :company_name, :status, :created_at, :updated_at
json.url job_url(job, format: :json)
