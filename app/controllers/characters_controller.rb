class CharactersController < ApplicationController
  def index
    @character = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @this_character = Character.new(character_params)
    if @this_character.save
      # session[:character_id] = @this_character.id
      # puts session[:character_id]
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def edit
    @character = Character.find(params[:id])
  end

  private
  def character_params
    params.require(:character).permit(:name, :type, :attack, :defense, :health, :room_id)
  end
end
