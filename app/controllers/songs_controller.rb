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
  end

  def edit
  end

  def update
  end

  def delete
  end

  
end