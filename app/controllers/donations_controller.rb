class DonationsController < ApplicationController
  helper_method :done

  def new
    @donation = Donation.new
    @campaign = Campaign.find(params[:campaign_id])
    authorize @donation
  end

  def create
    @donation = Donation.new(donations_params)
    @campaign = Campaign.find(params[:campaign_id])

    @donation.donation_type.downcase!
    @donation.user = current_user
    @donation.campaign = @campaign

    authorize @donation

    if @donation.save
      redirect_to campaign_path(@campaign)
    else
      render 'new'
    end
  end

  def update
    @donation = Donation.find(params[:id])
    authorize @donation
    @donation.update!(donations_params)
    redirect_to campaign_path(@donation.campaign)
  end

  def destroy
    @donation = Donation.find(params[:id])
    authorize @donation
    @donation.destroy

    redirect_to campaigns_path(@donation.campaign)
  end

  def done
    @donation = Donation.find(params[:id])
    authorize @donation
    @donation.done = true

    redirect_to campaigns_path(@donation.campaign)
  end

  private

  def donations_params
    params.require(:donation).permit(:donation_type, :observation, :quantity, :user_id, :campaign_id, :done)
  end
end
