class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy, :register]


  # On saute une etape de securite si on appel BOOK en JSON
  skip_before_action :verify_authenticity_token, only: [:register]


  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # POST /events/1/register.json
  def register
    # On crée un nouvel objet registration à partir des paramètres reçus
    @registration = Registration.new(registration_params)
    # On précise que cet object Registration dépend de l'event concerné
    @registration.event = @event

    respond_to do |format|
      if @registration.save
        format.json
      else
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:user, :name, :location, :date, :time, :description, :capacity, :price, :image)
    end

    # On ajoute les paramètres qu'on va envoyer avec le registration
    def registration_params
      params.require(:registration).permit(:ouizzuser_id)
    end
end
