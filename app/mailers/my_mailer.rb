class MyMailer < ApplicationMailer
  default from: 'thekillerofdragons@gmail.com'
  def welcome_email(email)
  @email = email
  @url  = 'http://example.com/login'
  mail(to: @email.to, subject: 'Welcome to My Awesome Site')
end
end
