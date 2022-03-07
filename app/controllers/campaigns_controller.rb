class CampaignsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_campaign, only: %i[edit update show destroy]

  def index
    # @campaigns = Campaign.all
    @campaigns = policy_scope(Campaign)
  end

  def show
  end

  def new
    @campaign = Campaign.new
    authorize @campaign
  end

  def create
    @campaign = Campaign.new(campaigns_params)
    @campaign.user = current_user

    authorize @campaign

    if @campaign.save
      redirect_to campaigns_path
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @campaign.update(campaigns_params)
      redirect_to campaigns_path
    else
      render 'edit'
    end
  end

  def destroy
    @campaign.destroy
    redirect_to campaigns_path
  end

  private

  def set_campaign
    @campaign = Campaign.find(params[:id])
    authorize @campaign
  end

  def campaigns_params
    params.require(:campaign).permit(:name, :info, :phone_number, :image)
  end
end
