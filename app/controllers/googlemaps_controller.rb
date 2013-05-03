class GooglemapsController < ApplicationController
  # GET /googlemaps
  # GET /googlemaps.json
  def index
    @googlemaps = Googlemap.all
    @json = Googlemap.all.to_gmaps4rails()

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @googlemaps }
    end
  end

  # GET /googlemaps/1
  # GET /googlemaps/1.json
  def show
    @googlemap = Googlemap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @googlemap }
    end
  end

  # GET /googlemaps/new
  # GET /googlemaps/new.json
  def new
    @googlemap = Googlemap.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @googlemap }
    end
  end

  # GET /googlemaps/1/edit
  def edit
    @googlemap = Googlemap.find(params[:id])
  end

  # POST /googlemaps
  # POST /googlemaps.json
  def create
    @googlemap = Googlemap.new(params[:googlemap])

    respond_to do |format|
      if @googlemap.save
        format.html { redirect_to @googlemap, notice: 'Googlemap was successfully created.' }
        format.json { render json: @googlemap, status: :created, location: @googlemap }
      else
        format.html { render action: "new" }
        format.json { render json: @googlemap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /googlemaps/1
  # PUT /googlemaps/1.json
  def update
    @googlemap = Googlemap.find(params[:id])

    respond_to do |format|
      if @googlemap.update_attributes(params[:googlemap])
        format.html { redirect_to @googlemap, notice: 'Googlemap was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @googlemap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /googlemaps/1
  # DELETE /googlemaps/1.json
  def destroy
    @googlemap = Googlemap.find(params[:id])
    @googlemap.destroy

    respond_to do |format|
      format.html { redirect_to googlemaps_url }
      format.json { head :no_content }
    end
  end
end
