class PlaysController < ProtectedController
  before_action :set_play, only: [:show, :update, :destroy]

  # GET /plays
  def index
    @plays = current_user.plays.all

    render json: @plays
  end

  # GET /plays/1
  def show
    render json: @play
  end

  # POST /plays
  def create
    @play = current_user.plays.build(play_params)

    if @play.save
      render json: @play, status: :created, location: @play
    else
      render json: @play.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /plays/1
  def update
    if @play.update(play_params)
      render json: @play
    else
      render json: @play.errors, status: :unprocessable_entity
    end
  end

  # DELETE /plays/1
  def destroy
    @play.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_play
      @play = current_user.plays.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def play_params
      params.require(:play).permit(:team, :yard_line, :play_type, :yards_gained, :play_result, :user_id)
    end
end
