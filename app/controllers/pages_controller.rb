class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @campaigns = Campaign.last(4)
  end
end
