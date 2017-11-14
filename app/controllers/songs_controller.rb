class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def song_params
    params.permit(:release_year, :genre)
    params.require(:title, :artist_name, :released)
  end


end
