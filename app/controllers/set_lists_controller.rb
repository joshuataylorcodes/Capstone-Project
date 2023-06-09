class SetListsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def create
    selected_songs = current_user.selected_songs.where(status: :carted)

    songs = Song.all
    total_time = songs.sum { |hash| hash[:song_length] }

    @set_list = SetList.new(
      user_id: current_user.id,
      total_time: total_time,
    )
    @set_list.save
    render :show
  end

  def show
    @set_list = current_user.set_lists.find_by(id: params[:id])
    @selected_songs = current_user.selected_songs.where(status: "selected")
    render :show
  end

  def index
    @set_lists = current_user.set_lists
    @selected_songs = current_user.selected_songs.where(status: "selected")
    render :index
  end
end
