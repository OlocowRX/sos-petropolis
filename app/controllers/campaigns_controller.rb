class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaigns_params)
    @campaign.user = current_user
    if @campaign.save
      redirect_to campaigns_path
    else
      render 'new'
    end
  end

  private

  def campaigns_params
    params.require(:campaign).permit(:name, :info)
  end
end
