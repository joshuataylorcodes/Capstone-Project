class SelectedSongsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def create
    @selected_song = SelectedSong.new(
      user_id: current_user.id,
      song_id: params[:song_id],
      status: "selected",
      set_list_id: params[:set_list_id],
    )
    if @selected_song.save
      render :show
    else
      render json: { errors: @selected_song.errors.full_messages }
    end
  end

  def index
    @selected_songs = current_user.selected_songs.where(status: "selected")
    render :index
  end
end
