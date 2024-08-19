class UserMailer < ApplicationMailer
    def confirmation_instructions(user, token, opts = {})
        @user = user
        @token = token
        mail(from: 'jospinndagano1@gmail.com',to: @user.email, subject: 'Your account confirmation')
    end
end
