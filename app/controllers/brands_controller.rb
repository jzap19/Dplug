class BrandsController < ApplicationController
  before_action :authenticate_user!
  def index
    @brands = Brand.all.order(:created_at)
    @user = current_user
  end

  def show
    @brand = Brand.find(params[:id])
  end

  def new
    @brand = Brand.new
  end

  def create
    brand = Brand.create(brand_params)
    redirect_to brands_path
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    brand = Brand.find(params[:id])
    brand.update(brand_params)
    redirect_to brands_path
  end

  def destroy
    Brand.destroy(params[:id])
    redirect_to brands_path
  end

  private

  def brand_params
    # will return something that looks like this:
    # {name: '...', :description: '...'}
    params.require(:brand).permit(:name, :description, :skills_and_interests, :charities_and_causes, :profile_image)
   end
end
