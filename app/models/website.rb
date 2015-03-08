class Website
	include ActiveModel::Model

	attr_reader :design, :logo, :pages, :images, :content, :quote, :features, :socialmedia, :effects, :email, :phone_number, :additional_notes

end