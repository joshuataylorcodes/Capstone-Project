class SetListsController < ApplicationController
  def create
    @set_list = Set_list.new(
      user_id: current_user.id,
      total_time: params[:total_time],
    )
    @set_list.save
    render :show
  end

  def show
    @set_list = Set_list.find_by(id: params[:id])
    render :show
  end

  def index
    @set_lists = Set_list.all
    render :index
  end
end
