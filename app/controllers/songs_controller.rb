class SongsController < ApplicationController
  def index
    @songs = Song.all
    render :index
  end

  def create
    @songs = Song.create(
      name: params[:name]
      artist: params[:artist]
      year: params[:year]
      genre: params[:genre]
      tempo: params[:tempo]
      time: params[:time]
      dynamics: params[:dynamics]
      song_length: params[:song_length]
      video_url: params[:video_url]
      sheet_music_url: params[:sheet_music_url]
    )
    render :show
end
