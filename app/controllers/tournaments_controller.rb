class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :edit, :update, :destroy]

  # GET /tournaments
  # GET /tournaments.json
  def index
    @tournaments = Tournament.all
  end

  # GET /tournaments/1
  # GET /tournaments/1.json
  def show
    @tournament = Tournament.find(params[:id])
  end

  # GET /tournaments/new
  def new
    @tournament = Tournament.new
  end

  # GET /tournaments/1/edit
  def edit
    @tournament = Tournament.find(params[:id])
  end

  # POST /tournaments
  # POST /tournaments.json
  def create
    @tournament = Tournament.new(tournament_params)

    respond_to do |format|
      if @tournament.save
        format.html { redirect_to @tournament, notice: 'Tournament was successfully created.' }
        format.json { render :show, status: :created, location: @tournament }
      else
        format.html { render :new }
        format.json { render json: @tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tournaments/1
  # PATCH/PUT /tournaments/1.json
  def update
    respond_to do |format|
      if @tournament.update(tournament_params)
        format.html { redirect_to @tournament, notice: 'Tournament was successfully updated.' }
        format.json { render :show, status: :ok, location: @tournament }
      else
        format.html { render :edit }
        format.json { render json: @tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  def begintournament
    @tournament = Tournament.find(params[:id])
    puts @tournament

  end

  def getpairings
    @round = params[:round]
    if @round == '1'
      @players = params[:players]
      @players = @players.shuffle
      @tournament = Tournament.find(params[:id])
    
      @playerlist = []
      @players.each do |a|
        @playerlist.push(User.find(a))
      end

      puts @playerlist

      @contenders = []

      @playerlist.each do |a|
        this = Contender.new
        @contenders.push(this)
        this.user_id = a.id
        this.tournament_id = @tournament.id
        this.save!
      end

      @p1 = Pairing.new
      @c = @contenders.shift
      @p1.Contender1 = @c.id
      @c = @contenders.shift
      @p1.Contender2 = @c.id
      @p1.tournament_id = @tournament.id
      @p1.save!
      puts @p1.inspect

      @p2 = Pairing.new
      @c = @contenders.shift
      @p2.Contender1 = @c.id
      @c = @contenders.shift
      @p2.Contender2 = @c.id
      @p2.tournament_id = @tournament.id
      @p2.save!
      puts @p2.inspect

      @p3 = Pairing.new
      @c = @contenders.shift
      @p3.Contender1 = @c.id
      @c = @contenders.shift
      @p3.Contender2 = @c.id
      @p3.tournament_id = @tournament.id
      puts @p3.inspect
      @p3.save!

      @p4 = Pairing.new
      @c = @contenders.shift
      @p4.Contender1 = @c.id
      @c = @contenders.shift
      @p4.Contender2 = @c.id
      @p4.tournament_id = @tournament.id
      puts @p4.inspect
      @p4.save!


      puts @players
    end

    if @round == '2'

      @tournament = Tournament.find(params[:id])
    
      @playerlist = []
      @players.each do |a|
        @playerlist.push(User.find(a))
      end

      puts @playerlist

      @contenders = []

      @playerlist.each do |a|
        this = Contender.new
        @contenders.push(this)
        this.user_id = a.id
        this.tournament_id = @tournament.id
        this.save!
      end

      @p1 = Pairing.new
      @c = @contenders.shift
      @p1.Contender1 = @c.id
      @c = @contenders.shift
      @p1.Contender2 = @c.id
      @p1.tournament_id = @tournament.id
      @p1.RoundNumber = @round
      @p1.save!
      puts @p1.inspect

      @p2 = Pairing.new
      @c = @contenders.shift
      @p2.Contender1 = @c.id
      @c = @contenders.shift
      @p2.Contender2 = @c.id
      @p2.tournament_id = @tournament.id
      @p2.RoundNumber = @round
      @p2.save!
      puts @p2.inspect

      @p3 = Pairing.new
      @c = @contenders.shift
      @p3.Contender1 = @c.id
      @c = @contenders.shift
      @p3.Contender2 = @c.id
      @p3.tournament_id = @tournament.id
      @p3.RoundNumber = @round
      puts @p3.inspect
      @p3.save!

      @p4 = Pairing.new
      @c = @contenders.shift
      @p4.Contender1 = @c.id
      @c = @contenders.shift
      @p4.Contender2 = @c.id
      @p4.tournament_id = @tournament.id
      @p4.RoundNumber = @round
      puts @p4.inspect
      @p4.save!


      puts @players
    end


  end

  def reportround

    @tournament = params[:id]
    @players = params[:ids]
    results = params[:results]

    @prs = params[:pairings]
    @pairings = []
    @prs.each do |a|
      @pairings.push(Pairing.find(a))
    end

    @pairings[0].Result = (results[0].to_s + "-" + results[1].to_s)
    @pairings[0].save!

    @pairings[1].Result = (results[2].to_s + "-" + results[3].to_s)
    @pairings[1].save!

    @pairings[2].Result = (results[4].to_s + "-" + results[5].to_s)
    @pairings[2].save!

    @pairings[3].Result = (results[6].to_s + "-" + results[7].to_s)
    @pairings[3].save!

    puts @pairings.inspect

    

  end


  # DELETE /tournaments/1
  # DELETE /tournaments/1.json
  def destroy
    @tournament.destroy
    respond_to do |format|
      format.html { redirect_to tournaments_url, notice: 'Tournament was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tournament_params
      params.require(:tournament).permit(:Name)
    end
end
