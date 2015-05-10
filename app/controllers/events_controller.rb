class EventsController < ApplicationController
  def index
  	@event = Events.all
      respond_to do |format|
      format.html # index.html.erb
      format.json {render json: @event}
  	end
  end
  def new
  	   @event = Events.new
       respond_to do |format|
      format.html # new.html.erb
  	end
  end
    def create
    @event = Events.new(params[:events])

    respond_to do |format|
     	 if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
      	else
        format.html { render action: "new" }
      	end
   	 end
end
	def show
		@event = Events.find(params[:id])
		end
		def edit
			@event = Events.find(params[:id])
		end
		def update
			@event = Events.find(params[:id])

      respond_to do |format|
      if @event.update_attributes(params[:Event])
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
		end
	end
	def destroy
		 @event = Events.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
	end
end