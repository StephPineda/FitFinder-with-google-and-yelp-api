class CalendarsController < ApplicationController
    def show
      respond_to do |format|
        format.html
        format.json do
          start_date  = DateTime.parse(params[:start_date])
          end_date    = DateTime.parse(params[:end_date])
          tasks      = Event.between(start_date, end_date).ordered.group_by_day
          render json: tasks
        end
      end
    end
  end