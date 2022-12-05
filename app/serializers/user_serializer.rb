class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :address, :email, :phone, :posts
  
  attribute :posts do |object|
    object.object.posts
  end

end
