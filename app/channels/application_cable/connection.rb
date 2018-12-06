module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verfied_user
      logger.add_tags 'ActionCable', current_user.email
    end

    protected

    def find_verfied_user
      if user = env['warden'].user
        user
      else
        reject_unauthorized_connection
      end
    end
  end
end
