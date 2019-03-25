class UserSerializer < ActiveModel::Serializer
  attributes :email, :username, :name, :profile_image
end
