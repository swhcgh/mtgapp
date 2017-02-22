class ContendersController < ApplicationController
  before_action :set_contender, only: [:show, :edit, :update, :destroy]

  # GET /contenders
  # GET /contenders.json
  def index
    @contenders = Contender.all
  end

  # GET /contenders/1
  # GET /contenders/1.json
  def show
  end

  # GET /contenders/new
  def new
    @contender = Contender.new
  end

  # GET /contenders/1/edit
  def edit
  end

  # POST /contenders
  # POST /contenders.json
  def create
    @contender = Contender.new(contender_params)

    respond_to do |format|
      if @contender.save
        format.html { redirect_to @contender, notice: 'Contender was successfully created.' }
        format.json { render :show, status: :created, location: @contender }
      else
        format.html { render :new }
        format.json { render json: @contender.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contenders/1
  # PATCH/PUT /contenders/1.json
  def update
    respond_to do |format|
      if @contender.update(contender_params)
        format.html { redirect_to @contender, notice: 'Contender was successfully updated.' }
        format.json { render :show, status: :ok, location: @contender }
      else
        format.html { render :edit }
        format.json { render json: @contender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contenders/1
  # DELETE /contenders/1.json
  def destroy
    @contender.destroy
    respond_to do |format|
      format.html { redirect_to contenders_url, notice: 'Contender was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contender
      @contender = Contender.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contender_params
      params.require(:contender).permit(:user_id, :tournament_id, :deck_id)
    end
end
