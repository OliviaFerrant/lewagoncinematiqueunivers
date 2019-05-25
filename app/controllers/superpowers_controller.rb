class SuperpowersController < ApplicationController
  before_action :set_character, only: [:new, :create]
  def new
    @superpower = Superpower.new
  end

  def create
    @superpower = Superpower.new(superpowers_params)
    @superpower.character = @character
    if @superpower.save
      redirect_to character_path(@character)
    else
      render :new
    end
  end

  def destroy
    @superpower = Superpower.find(params[:id])
    @superpower.destroy
    redirect_to character_path(@superpower.character)
  end

  private

  def set_character
    @character = Character.find(params[:character_id])
  end

  def superpowers_params
    params.require(:superpower).permit(:power_id)
  end
end
