class Event < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy
  has_one_attached :image

  def self.search(query)
    return Event.all unless query

    Event.all.select { |event| event.name.downcase.match(/#{query.downcase}/) }
  end

  after_create_commit -> { broadcast_prepend_to 'events', partial: 'events/event_card', locals: { event: self } }

  after_update_commit -> { broadcast_replace_to @event }
end
