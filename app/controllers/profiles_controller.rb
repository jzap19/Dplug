class ProfilesController < ApplicationController
  def index
    @user = current_user
    @influencers = Influencer.all.order(:created_at)
    @brands = Brand.all.order(:created_at)
  end
end
