class PowersController < ApplicationController
  before_action :set_character, only: [:new, :create]

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(power_params)
    @power.character = @character
    if @power.save
      redirect_to character_path(@character)
    else
      render :new
    end
  end

  private

  def set_character
    @character = Character.find(params[:character_id])
  end

  def power_params
    params.require(:power).permit(:power)
  end

end
