class EventAttendancesController < ApplicationController

  def index
    @event_attendances = EventAttendance.all
  end

  def new
    @event_attendance = EventAttendance.new
  end

  def create
    event = Event.find(params[:event_id])
    current_user.attended_events << event
    flash[:notice] = "Now attending this event"
    redirect_to event
  end

end
