class CalendarsController < ApplicationController
    def show
      respond_to do |format|
        format.html
        format.json do
          start_date  = Date.parse(params[:start_date])
          end_date    = Date.parse(params[:end_date])
          gyms       = current_user.gyms.between(start_date, end_date).ordered
          render json: gym.group_by{ |gym| gym.due_date }
        end
      end
    end
  end
