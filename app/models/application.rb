class Application < ApplicationRecord
  belongs_to :advertisement
  belongs_to :user

  after_create :send_notification_to_owner
  after_update :send_notification_to_applicant

  def send_notification_to_owner
    advertisement.event.user.send_application_notification(self)
  end

  def send_notification_to_applicant
    user.send_application_result_notification(self) unless is_accepted.nil?
  end
end
