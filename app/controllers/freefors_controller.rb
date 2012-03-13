class FreeforsController < ApplicationController
  before_filter :signed_in_user

  respond_to :html, :js

  def create
    @event = Event.find(params[:freefor][:event_id])
    current_user.join!(@event)
    respond_with @event
  end

  def destroy
    @event = Freefor.find(params[:id]).event
    current_user.unjoin!(@event)
   
    respond_with @event
  end

end
