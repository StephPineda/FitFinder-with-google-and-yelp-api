class GymsController < ApplicationController
  before_action :set_gym, only: [:show, :edit, :update, :destroy]

  # GET /gyms
  # GET /gyms.json
  def index
    #@gym = Gym.find(params[:id])
    @gyms = Gym.all
    @gyms = @gyms.by_name( params[:search_term] ) if params[:search_term]
    @gyms = @gyms.by_zipcode( params[:zipcode] ) if params[:zipcode]
    @terms = [params[:search_term], params[:zipcode]].join(' ')
    
  end

  def index_coords
    @gyms = Gym.all
    @gyms = @gyms.by_name( params[:search_term] ) if params[:search_term]
    @gyms = @gyms.by_zipcode( params[:zipcode] ) if params[:zipcode]
    @terms = [params[:search_term], params[:zipcode]].join(' ')
    if params[:zipcode].present?
      result = Geocoder.search("United States #{params[:zipcode]}").first.data
      @position =  { coords: { latitude: result["lat"], longitude: result["lon"] } }
    end
    @coordinates = @gyms.map do |gym|
      data = Geocoder.search(gym.address)
      next if data.empty?
      data = data.first.data

      {
        coords: [ data['lon'], data['lat'] ],
        name: gym.name,
        address: gym.address
      }
    end
    render json: @coordinates
  end

  # GET /gyms/1
  # GET /gyms/1.json
  def show
    @gym = Gym.find(params[:id])
    @fave = Favorite.find_by(user_id: current_user.id, gym_id: @gym.id) if current_user
  end

  # GET /gyms/new
  def new
    @gym = Gym.new
  end

  # GET /gyms/1/edit
  def edit
  end

  # POST /gyms
  # POST /gyms.json
  def create
    @gym = Gym.new(gym_params)

    respond_to do |format|
      if @gym.save
        format.html { redirect_to @gym, notice: 'Gym was successfully created.' }
        format.json { render :show, status: :created, location: @gym }
      else
        format.html { render :new }
        format.json { render json: @gym.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gyms/1
  # PATCH/PUT /gyms/1.json
  def update
    respond_to do |format|
      if @gym.update(gym_params)
        format.html { redirect_to @gym, notice: 'Gym was successfully updated.' }
        format.json { render :show, status: :ok, location: @gym }
      else
        format.html { render :edit }
        format.json { render json: @gym.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gyms/1
  # DELETE /gyms/1.json
  def destroy
    @gym.destroy
    respond_to do |format|
      format.html { redirect_to gyms_url, notice: 'Gym was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gym
      @gym = Gym.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gym_params
      params.require(:gym).permit(:name, :address, :phone_number, :price_in_cents)
    end
end
