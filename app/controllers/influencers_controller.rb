class InfluencersController < ApplicationController
before_action :authenticate_user!
  def search; end

  def index
    @user = current_user
    @influencers = Influencer.all.order(:created_at)
  end

  def show
    @influencer = Influencer.find(params[:id])
  end

  def new
    @influencer = Influencer.new
  end

  def create
    influencer = Influencer.create(influencer_params)
    redirect_to influencers_path
  end

  def edit
    @influencer = Influencer.find(params[:id])
  end

  def update
    influencer = Influencer.find(params[:id])
    influencer.update(influencer_params)
    redirect_to influencers_path
  end

  def destroy
    Influencer.destroy(params[:id])
    redirect_to influencers_path
  end

  private

  def influencer_params
    # will return something that looks like this:
    # {name: '...', :description: '...'}
    params.require(:influencer).permit(:name, :skills_and_interests, :age, :gender, :charities_and_causes, :profile_image)

   end
end
