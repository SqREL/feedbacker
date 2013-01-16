class AdministratorMailer < ActionMailer::Base
  default from: "noreply@example.com"
  default to:   "admin@example.com"

  def new_message(message)
    @message = message
    mail(:subject => "New message")
  end
end
