class NibbleChannel < ApplicationCable::Channel
  def subscribed
    stream_from "nibble_#{params[:nibble_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
