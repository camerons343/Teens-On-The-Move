json.array!(@logs) do |log|
  json.extract! log, :id, :name, :student_number, :time, :activity
  json.url log_url(log, format: :json)
end
