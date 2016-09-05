class EventsController < ApplicationController
  before_action :logged_in_user, only: [:show, :respond]
  before_action :admin_user, only: [:new, :edit, :create, :update, :destroy, :admin_respond]
  before_action :set_event, only: [:show, :edit, :update, :destroy, :respond, :admin_respond]

 
  def index
    @events = Event.all
  end


  def show
  end

 
  def new
    @event = Event.new
  end

  
  def edit
  end

  
  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render 'new'
    end
  end

 
  def update
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      render 'edit'
    end
  end

  
  def destroy
    @event.destroy
    redirect_to events_url, notice: 'Event was successfully destroyed.'
  end

  def respond
    add_or_remove_user(current_user)
  end

  def admin_respond
    user = User.find(params[:user_id]) rescue nil
    add_or_remove_user(user)
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id]) rescue nil
    redirect_to root_url, notice: 'Event not found.' unless @event.present?
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:event).permit(:title, :description, :ticket_fee, :duration, :start_time)
  end

  def add_or_remove_user user
    message = ''
    if @event.fresh? && user.present?
      if @event.users.include? user
        @event.users.destroy(user)
      else
        @event.users << user
      end
      message = 'Success'
    else
      message = 'Event expired'
    end
    redirect_to @event, notice: message
  end

end
