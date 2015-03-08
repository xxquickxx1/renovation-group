class PricingController < ApplicationController
  def index
  	@website = Website.send :new
  end

  def show
  end
end
