class SetListsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def create
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
    render :show
  end

  def index
    @set_lists = current_user.set_lists
    render :index
  end
end
