class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :city_time_zone, :crypted_password, :salt
end
