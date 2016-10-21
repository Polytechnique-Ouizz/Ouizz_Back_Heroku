class OuizzusersController < ApplicationController
  before_action :set_ouizzuser, only: [:show, :edit, :update, :destroy]

  # GET /ouizzusers
  # GET /ouizzusers.json
  def index
    @ouizzusers = Ouizzuser.all
  end

  # GET /ouizzusers/1
  # GET /ouizzusers/1.json
  def show
  end

  # GET /ouizzusers/new
  def new
    @ouizzuser = Ouizzuser.new
  end

  # GET /ouizzusers/1/edit
  def edit
  end

  # POST /ouizzusers
  # POST /ouizzusers.json
  def create
    @ouizzuser = Ouizzuser.new(ouizzuser_params)

    respond_to do |format|
      if @ouizzuser.save
        format.html { redirect_to @ouizzuser, notice: 'Ouizzuser was successfully created.' }
        format.json { render :show, status: :created, location: @ouizzuser }
      else
        format.html { render :new }
        format.json { render json: @ouizzuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ouizzusers/1
  # PATCH/PUT /ouizzusers/1.json
  def update
    respond_to do |format|
      if @ouizzuser.update(ouizzuser_params)
        format.html { redirect_to @ouizzuser, notice: 'Ouizzuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @ouizzuser }
      else
        format.html { render :edit }
        format.json { render json: @ouizzuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ouizzusers/1
  # DELETE /ouizzusers/1.json
  def destroy
    @ouizzuser.destroy
    respond_to do |format|
      format.html { redirect_to ouizzusers_url, notice: 'Ouizzuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ouizzuser
      @ouizzuser = Ouizzuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ouizzuser_params
      params.require(:ouizzuser).permit(:username, :password, :email, :phone)
    end
end
