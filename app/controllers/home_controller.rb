class HomeController < ApplicationController
  def index
  	@contact = ContactMailer.send :new
  end

  def create
  		ContactMailer.notify(params).deliver
  		redirect_to :back
  end
end
