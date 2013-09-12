class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  def send_email(user)
    @user = user
    mail(:to =>user.email,:subject =>"Registration Completed")
  end
end
