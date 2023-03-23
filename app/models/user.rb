class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :requests, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :rooms
  has_many :messages, through: :rooms
  has_many :saved_events, through: :events
 

  def send_application_notification(request)
    devices = Device.where(user: self)
    devices.each do |device|
      device.send_notification(
        "You have a new application for event '#{request.event.name}'",
        "'#{request.user.full_name}' requested to attend your event"
      )
    end
  end

  def send_application_result_notification(request)
    devices = Device.where(user: self)
    devices.each do |device|
      device.send_notification(
        "Your application for event '#{request.event.name}' was #{request.is_accepted ? 'accepted' : 'rejected'}",
        'Click here to see more details'
      )
    end
  end

  def upcoming_events
    events = []
    requests.each do |request|
      events << request.event if request.is_accepted && request.event.start_time > DateTime.now
    end
    events
  end

  def attended_events
    events = []
    requests.each do |request|
      events << request.event if request.is_accepted && request.event.start_time <= DateTime.now
    end
    events
  end

  def pending_requests
    requests = []
    Request.all.each do |request|
      requests << request if request.is_accepted.nil? && request.event.start_time > DateTime.now && request.event.user == self
    end
    requests
  end
end
