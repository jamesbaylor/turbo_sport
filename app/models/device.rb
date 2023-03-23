class Device < ApplicationRecord
  belongs_to :user

  def send_notification(notification_message, notification_subject)
    Webpush.payload_send(
      message: notification_message,
      endpoint: self.endpoint,
      p256dh: self.p256dh_key,
      auth: self.auth_key,
      vapid: {
        subject: notification_subject,
        public_key: ENV['VAPID_PUBLIC_KEY'],
        private_key: ENV['VAPID_PRIVATE_KEY']
      },
      ssl_timeout: 5, # value for Net::HTTP#ssl_timeout=, optional
      open_timeout: 5, # value for Net::HTTP#open_timeout=, optional
      read_timeout: 5 # value for Net::HTTP#read_timeout=, optional
    )
  end
end
