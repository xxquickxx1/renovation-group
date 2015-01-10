class ContactMailer < ActionMailer::Base
  default from: "renovation@website.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.notify.subject
  #
  def notify(params)
    @body = params["/contact"][:message]
    @from = params["/contact"][:email]
    @phone = params["/contact"][:phone]
    @name = params["/contact"][:name]
    mail to: "renovationgroupedin@gmail.com", subject: 'Mail from website', from: "#{@from}"
  end
end
