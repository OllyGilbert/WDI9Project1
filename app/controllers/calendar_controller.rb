class CalendarController < ApplicationController
  
  def index
    Course.all.each do |course|
      unless Event.where(id: course.id).present?
        Event.create(name: course.name,
          start_at: course.start_at,
          end_at: course.end_at, 
          course_id: course.id)
      end
    end
  

    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i

    @shown_month = Date.civil(@year, @month)

    @event_strips = Event.event_strips_for_month(@shown_month)
  end
end
