class SetListsController < ApplicationController
  def create
    @set_list = SetList.new(
      user_id: params[:user_id],
      total_time: params[:total_time],
    )
    @set_list.save
    render :show
  end

  def show
    @set_list = SetList.find_by(id: params[:id])
    render :show
  end

  def index
    @set_lists = SetList.all
    render :index
  end
end
