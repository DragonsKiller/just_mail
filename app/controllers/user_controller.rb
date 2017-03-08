class UserController < ApplicationController

  after_create :send_admin_mail
  def send_admin_mail
    flash[:success] = "Success!"
    #UserMailer.send_new_user_message(self).deliver
  end
end
