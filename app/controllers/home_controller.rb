class HomeController < ApplicationController
	caches_page :index
  def index
  	@contact = ContactMailer.send :new
  end

  def create
  	#render text: params["/contact"][:name]
  		ContactMailer.notify(params).deliver
  		redirect_to :back
  end
end
