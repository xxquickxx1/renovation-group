class PlasteringController < ApplicationController
	before_filter :sub



	def index

	end


	private

	def sub
		render layout: 'layouts/sub'
	end
end
