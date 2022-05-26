class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = @list.find(params[:id])
  end

  def new
    @lists = List.new
  end
  private

  def list_params
    params.require(:list).permit(:name)
  end
end
