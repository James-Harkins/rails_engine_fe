class WelcomeController < ApplicationController
  def index
    if params[:search]
      @merchants = MerchantFacade.find_all_by_name(params[:search])
    end
  end
end
