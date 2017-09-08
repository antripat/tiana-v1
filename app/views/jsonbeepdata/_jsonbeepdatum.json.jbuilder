json.extract! jsonbeepdatum, :id, :beepSeq, :FileName, :beepDuration, :created_at, :updated_at
json.url jsonbeepdatum_url(jsonbeepdatum, format: :json)
