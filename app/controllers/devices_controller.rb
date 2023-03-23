class DevicesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    puts 'hello from create device'

    is_endpoint_available = false

    Device.all.each do |device|
      if device.endpoint == params[:endpoint]
        is_endpoint_available = true 
      end
    end

    unless is_endpoint_available 
      @device = Device.new(
        endpoint: params[:endpoint],
        auth_key: params[:keys][:auth],
        p256dh_key: params[:keys][:p256dh],
        user: current_user
      )

      if @device.save
        render json: @notifications
      else
        render json: @notifications.errors.full_messages, status: :unprocessable_entity
      end
    end
  end
end
