class NotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "notifications:#{current_user.id}" if current_user.present?
  end

  def unsubscribed
    stop_all_streams
  end
end
