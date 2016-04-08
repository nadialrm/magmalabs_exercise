json.array!(@checkattendances) do |checkattendance|
  json.extract! checkattendance, :id
  json.url checkattendance_url(checkattendance, format: :json)
end
