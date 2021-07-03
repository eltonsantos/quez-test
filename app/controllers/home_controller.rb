class HomeController < ApplicationController
  def index
    # @purchases = Purchase.find(params[:user_id])  
    if user_signed_in?
      @user = User.find(current_user.id)
      @purchases = @user.purchases
    else
      @purchases = Purchase.all
    end
  end
end
