class EventSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :location, :description, :start_time, :end_time, :price, :is_free, :available_spots,
             :maximum_applications, :advertised?, :user_id, :image
  has_one :user

  def image
    if object.image.attached?
      {
        cloudinary: object.image.service_url
      }
    end
  end
end
