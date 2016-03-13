class RankingController < ApplicationController
  def have
    @items = Item.all
  end

  def want
    @items = Item.all
  end
end
