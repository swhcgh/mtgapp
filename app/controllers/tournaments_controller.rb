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
    @contenders = Contender.where('tournament_id = ?', @tournament.id).order(points: :desc)
    if @contenders.empty?
      redirect_to tournaments_begintournament_path(id: @tournament.id)
      return
    end
    
    @cards = Card.all
  end
  
  def cardpopularity
    
    @tournament = Tournament.find(params[:id])
    @contenders = Contender.where('tournament_id = ?', @tournament.id).order(points: :desc)
    @pairings = Pairing.where('tournament_id = ?', @tournament.id)
    @cards = Card.all
    @decks = []
    @contenders.each do |a|
      @decks.push(Deck.find(a.deck_id))
    end
    
    @pop = []
    @count = 0
    @cards.each do |a|
      @decks.each do |b|
        if b.Cardlist.include?(a.id.to_s)
          @count += 1
        end
      end
      @perc = @count / 8.0
      @pop.push(@perc)
      @count = 0
    end
 
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
        format.html { redirect_to @tournament }
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
      @decks = params[:decks]
      puts @decks.inspect
      puts @players.inspect
      
      @tournament = Tournament.find(params[:id])
    
      @playerlist = []
      @players.each do |a|
        @playerlist.push(User.find(a))
      end

      puts @playerlist

      @contenders = []
      
      (0..7).each do |a|
        this = Contender.new
        @contenders.push(this)
        this.user_id = @playerlist[a].id
        this.deck_id = @decks[a].to_i
        this.tournament_id = @tournament.id
        this.save!
      end
      
      @contenders.shuffle

      @p1 = Pairing.new
      @c = @contenders.shift
      @p1.Contender1 = @c.id
      @c = @contenders.shift
      @p1.Contender2 = @c.id
      @p1.tournament_id = @tournament.id
      @p1.RoundNumber = @round.to_i
      @p1.save!
      puts @p1.inspect

      @p2 = Pairing.new
      @c = @contenders.shift
      @p2.Contender1 = @c.id
      @c = @contenders.shift
      @p2.Contender2 = @c.id
      @p2.tournament_id = @tournament.id
      @p2.RoundNumber = @round.to_i
      @p2.save!
      puts @p2.inspect

      @p3 = Pairing.new
      @c = @contenders.shift
      @p3.Contender1 = @c.id
      @c = @contenders.shift
      @p3.Contender2 = @c.id
      @p3.tournament_id = @tournament.id
      @p3.RoundNumber = @round.to_i
      puts @p3.inspect
      @p3.save!

      @p4 = Pairing.new
      @c = @contenders.shift
      @p4.Contender1 = @c.id
      @c = @contenders.shift
      @p4.Contender2 = @c.id
      @p4.tournament_id = @tournament.id
      @p4.RoundNumber = @round.to_i
      puts @p4.inspect
      @p4.save!


      puts @players
    end

    if @round == '2' || @round == '3'

      @tournament = Tournament.find(params[:id])
      @contenders = Contender.where('tournament_id = ?',@tournament.id).all.order(points: :desc)
      puts @contenders.inspect

      @playerlist = []
      @contenders.each do |a|
        @playerlist.push(User.find(a.user_id))
      end
      
      @contenders = @contenders.to_a
      @contenders.inspect

      puts @playerlist

      @p1 = Pairing.new
      @c = @contenders.shift
      @p1.Contender1 = @c.id
      @c = @contenders.shift
      @p1.Contender2 = @c.id
      @p1.tournament_id = @tournament.id
      @p1.RoundNumber = @round.to_i
      @p1.save!
      puts @p1.inspect

      @p2 = Pairing.new
      @c = @contenders.shift
      @p2.Contender1 = @c.id
      @c = @contenders.shift
      @p2.Contender2 = @c.id
      @p2.tournament_id = @tournament.id
      @p2.RoundNumber = @round.to_i
      @p2.save!
      puts @p2.inspect

      @p3 = Pairing.new
      @c = @contenders.shift
      @p3.Contender1 = @c.id
      @c = @contenders.shift
      @p3.Contender2 = @c.id
      @p3.tournament_id = @tournament.id
      @p3.RoundNumber = @round.to_i
      puts @p3.inspect
      @p3.save!

      @p4 = Pairing.new
      @c = @contenders.shift
      @p4.Contender1 = @c.id
      @c = @contenders.shift
      @p4.Contender2 = @c.id
      @p4.tournament_id = @tournament.id
      @p4.RoundNumber = @round.to_i
      puts @p4.inspect
      @p4.save!


      puts @players
    end


  end

  def reportround

    @tournament = Tournament.find(params[:id])
    @contids = params[:ids]
    results = params[:results]

    @prs = params[:pairings]
    @pairings = []
    @prs.each do |a|
      @pairings.push(Pairing.find(a))
    end
    
    @contenders = []
    @contids.each do |a|
      @contenders.push(Contender.find(a))
    end
        
    @pairings[0].Result = (results[0].to_s + "-" + results[1].to_s)
    @pairings[0].save!

    @pairings[1].Result = (results[2].to_s + "-" + results[3].to_s)
    @pairings[1].save!

    @pairings[2].Result = (results[4].to_s + "-" + results[5].to_s)
    @pairings[2].save!

    @pairings[3].Result = (results[6].to_s + "-" + results[7].to_s)
    @pairings[3].save!
    
    @pairings.each do |a|
      @c1 = Contender.find(a.Contender1)
      @c2 = Contender.find(a.Contender2)
      if a.Result[0] == '1' && a.Result[2] == '1'
        @c1.points += 1
        @c2.points += 1
      elsif a.Result[0].to_i > a.Result[2].to_i
        @c1.points += 3
      elsif a.Result[0].to_i < a.Result[2].to_i
        @c2.points += 3
      end
      @c1.save!
      @c2.save!
    end

    puts @pairings.inspect
    
    @round = @pairings[0].RoundNumber

    

  end
  
  def final
    @tournament = Tournament.find(params[:id])
    @contenders = Contender.where('tournament_id = ?', @tournament.id).order(points: :desc)
    if @contenders[0].points == @contenders[1].points
      @winner = 'top2'
    else
      @winner = @contenders[0]
    end
  end


  # DELETE /tournaments/1
  # DELETE /tournaments/1.json
  def destroy
    @tournament = Tournament.find(params[:id])
    @tournament.destroy
    respond_to do |format|
      format.html { redirect_to tournaments_url, notice: 'Tournament was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament
      @tournament = Tournament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tournament_params
      params.require(:tournament).permit(:Name)
    end
end
