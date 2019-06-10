class TargetSongsController < ApplicationController
  before_action :set_target_song, only: [:show,:update,:edit,:destroy]

  def list
    @targetSong = TargetSong.all
  end

  def new
    @targetSong = TargetSong.new
  end

  def destroy
    @targetSong.destroy
    redirect_to root_path
  end

  def create
    @targetSong = TargetSong.create(target_songs_param)
    if @targetSong.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def target_songs_param
    params.require(:target_song).permit(:title, :level)
  end

  def set_target_song
    @targetSong = TargetSong.find(params[:id])
  end
end
