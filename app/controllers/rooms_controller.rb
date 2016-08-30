class RoomsController < ApplicationController
  
  API_KEY = '45592042'
  API_SECRET = '52d0acb0f06e869addf3ea13c3223db4be760487'

  before_action :config_opentok
  

  def index
    @rooms = Room.all.order("created_at DESC")
    @new_room = Room.new
  end

  def new
    
  end

  def create
    session = @opentok.create_session
    @new_room = Room.new(name: params[:room][:name], public: params[:room][:public],
      sessionId: session.session_id)
    
    respond_to do |format|
      if @new_room.save
        format.html { redirect_to("/chat/#{@new_room.id.to_s}") }
      else
        format.html { render :controller => 'rooms', :action => 'index' }
      end
    end
  end

  def chat
    @room = Room.find(params[:id])
    @tok_token = @opentok.generate_token @room.sessionId
  end

  private

    def config_opentok
      if @opentok.nil?
        @opentok = OpenTok::OpenTok.new API_KEY, API_SECRET
      end
    end

end


