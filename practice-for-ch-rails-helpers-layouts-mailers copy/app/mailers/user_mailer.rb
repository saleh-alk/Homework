class UserMailer < ApplicationMailer

    def welcome_email(user)
        @user = '99catsadmin@appacademy.io'
        url = "99cats.com"
        mail(to: @user, subject: "Welcome to 99 cats")
    end


end
