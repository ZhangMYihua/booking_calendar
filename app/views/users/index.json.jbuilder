json.array!(@users) do |user|
  json.extract! user, :id, :email, :first_name, :last_name, :city_time_zone, :crypted_password, :salt
  json.url user_url(user, format: :json)
end
