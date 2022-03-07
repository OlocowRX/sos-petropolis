class UsersController < ApplicationController
  def show
    authorize current_user
  end

  # def edit
  #   authorize current_user
  # end

  # def update
  #   authorize current_user
  #   @user = current_user
  # end
end
