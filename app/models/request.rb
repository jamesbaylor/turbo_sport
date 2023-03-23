class Request < ApplicationRecord
  belongs_to :user
  belongs_to :event

  after_create :send_notification_to_owner
  after_update :send_notification_to_applicant

  def send_notification_to_owner
    event.user.send_application_notification(self)
  end

  def send_notification_to_applicant
    user.send_application_result_notification(self) unless is_accepted.nil?
  end
end
