class SelectedSongsController < ApplicationController
  def create
    @selected_song = SelectedSong.create(
      user_id: current_user.id
      song_id: params[:song_id],
      status: params[:status],
      set_list_id: params[:set_list_id], 
    )
    if @selected_song.save
      render :show
    else  
      render json: {errors: @selected_song.errors.full_messages}
    end
  end
end
