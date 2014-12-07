class RacesController < ApplicationController

  before_action :authenticate_user!

  def index
    @races = Race.all
    if params[:races]
      @results = params[:races].map do |r|
      Race.find(r)
      end
    end
    @result_id = params[:races]
  end

  def new
    @user = current_user
    @races = current_user.races
    @race = Race.new
  end

  def edit
  end

  def update
  end

  def create
    @race = Race.new(ingredient_params.merge(user_id: current_user.id))
    if @race.save
      redirect_to race_path(current_user, @race)
    else
      render 'new'
    end
  end

  def show
  end

  def destroy
  end
  
  private

  def race_params
    params.require(:race).permit(:text)
  end

end