class Api::NotificationsController < ApplicationController
    def index
        @notifications = Notification.where(recipient: current_user)
        render json: @notifications
    end

end
