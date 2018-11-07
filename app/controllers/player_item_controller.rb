class PlayerItemController < ApplicationController
  def list
    @list = PlayerItem.all
    render 'index'
  end

  def add
    render 'add'
  end

  def save
    PlayerItem.create_item(params)
    @list = PlayerItem.all
    render 'index'
  end

  def destroy
    @item = PlayerItem.find(params[:id])
    @item.destroy
    @list = PlayerItem.all
    render 'index'
  end
end
