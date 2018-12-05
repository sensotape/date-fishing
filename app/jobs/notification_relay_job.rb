class NotificationRelayJob < ApplicationJob
  queue_as :default

  def perform(notification)
    # html = ApplicationController.render(partial: "shared/notification", formats: [:html])
    if notification.action == "messaged"
      ActionCable.server.broadcast(
        "notifications:#{notification.recipient_id}",
        action: "messaged",
        id: "message-notification",
        # html: html
      )
    elsif notification.action == "nibbled"
      ActionCable.server.broadcast(
        "notifications:#{notification.recipient_id}",
        action: "nibbled",
        id1: "profile-notification",
        id2: "dates-notification",
        # html: html
      )
    elsif notification.action == "updated"
      ActionCable.server.broadcast(
        "notifications:#{notification.recipient_id}",
        action: "updated",
        id1: "profile-notification",
        id2: "nibbles-notification",
        # html: html
      )
    end
  end
end
