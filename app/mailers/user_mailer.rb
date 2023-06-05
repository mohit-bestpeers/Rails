class UserMailer < ApplicationMailer

    default from: 'kuldeeplovanshi777@gmail.com'
    def welcome_email
      @article = params[:article]
      @url  = 'http://example.com/login'
      
      mail(to:@article.email,subject: 'Welcome to My Awesome Site',messages:'hello Mohit') 
      

      # template_path: 'notifications'@article.email,
      # template_name: 'another'
    end
end
