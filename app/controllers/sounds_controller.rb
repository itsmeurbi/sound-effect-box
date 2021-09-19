class SoundsController < ApplicationController
  def index
    @sounds = Sound.all
  end

  def new
    @sound = Sound.new
  end

  def create
    @sound = Sound.new(sound_params)

    if @sound.save
      redirect_to sounds_path, notice: "Sound was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    Sound.find(params[:id]).destroy
    redirect_to sounds_path, notice: "Sound deleted"
  end

  private

    def sound_params
      params.require(:sound).permit(:image, :sound)
    end
end
