class AthletesController < ApplicationController

  def show
    @athlete = Athlete.find(params[:id])
    @athlete_stats = Athlete.stats(params[:id])
  end

  def index
    @users = User.all
  end

end
