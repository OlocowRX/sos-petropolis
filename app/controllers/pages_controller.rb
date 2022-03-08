class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @campaigns = Campaign.last(4)
    @donations_cash = Donation.where(donation_type: "dinheiro").sum(:quantity) / 1000
    @donations_food = Donation.where(donation_type: "comida").sum(:quantity)
    @donations_cloth = Donation.where(donation_type: "roupas").sum(:quantity)
  end
end
