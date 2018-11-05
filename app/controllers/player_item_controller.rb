class PlayerItemController < ApplicationController
  def list
    @list = PlayerItem.all
    render 'index'
  end

  def destroy
    @item = PlayerItem.find(params[:id])
    @item.destroy
    render 'index'
  end
end