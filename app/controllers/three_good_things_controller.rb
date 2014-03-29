class ThreeGoodThingsController < ApplicationController
  before_action :set_three_good_thing, only: [:show, :edit, :update, :destroy]

  # GET /three_good_things
  # GET /three_good_things.json
  def index
    @three_good_things = ThreeGoodThing.all
  end

  # GET /three_good_things/1
  # GET /three_good_things/1.json
  def show
  end

  # GET /three_good_things/new
  def new
    @three_good_thing = ThreeGoodThing.new
  end

  # GET /three_good_things/1/edit
  def edit
  end

  # POST /three_good_things
  # POST /three_good_things.json
  def create
    @three_good_thing = ThreeGoodThing.new(three_good_thing_params)

    respond_to do |format|
      if @three_good_thing.save
        format.html { redirect_to @three_good_thing, notice: 'Three good thing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @three_good_thing }
      else
        format.html { render action: 'new' }
        format.json { render json: @three_good_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /three_good_things/1
  # PATCH/PUT /three_good_things/1.json
  def update
    respond_to do |format|
      if @three_good_thing.update(three_good_thing_params)
        format.html { redirect_to @three_good_thing, notice: 'Three good thing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @three_good_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /three_good_things/1
  # DELETE /three_good_things/1.json
  def destroy
    @three_good_thing.destroy
    respond_to do |format|
      format.html { redirect_to three_good_things_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_three_good_thing
      @three_good_thing = ThreeGoodThing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def three_good_thing_params
      params.require(:three_good_thing).permit(:1, :2, :3)
    end
end
