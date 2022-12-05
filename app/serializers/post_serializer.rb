class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :status, :images

  attribute :images do |object|
     object.object.image.map do |img|
        url_for(category.img) 
    end

  end
end
