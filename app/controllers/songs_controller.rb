class SongsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @songs = Song.all
    render :index
  end

  def create
    @song = Song.create(
      name: params[:name],
      artist: params[:artist],
      year: params[:year],
      genre: params[:genre],
      tempo: params[:tempo],
      time: params[:time],
      dynamics: params[:dynamics],
      song_length: params[:song_length],
      video_url: params[:video_url],
      sheet_music_url: params[:sheet_music_url],
    )
    render :show
  end

  def show
    @song = Song.find_by(id: params[:id])
    render :show
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.update(
      name: params[:name] || @song.name,
      artist: params[:artist] || @song.artist,
      year: params[:year] || @song.year,
      genre: params[:genre] || @song.genre,
      tempo: params[:tempo] || @song.tempo,
      time: params[:time] || @song.time,
      dynamics: params[:dynamics] || @song.dynamics,
      song_length: params[:song_length] || @song.song_length,
      video_url: params[:video_url] || @song.video_url,
      sheet_music_url: params[:sheet_music_url] || @song.sheet_music_url,
    )
    render :show
  end

  def destroy
    @song = Song.find_by(id: params[:id])
    @song.destroy
    render json: { message: "Song Destroyed" }
  end
end
