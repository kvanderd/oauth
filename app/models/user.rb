# require 'bcrypt'

class User < ActiveRecord::Base
  # Remember to create a migration!
   # e.g., User.authenticate('jesse@devbootcamp.com', 'apples123')


  def encrypt(password)
    #when we create a "User", => User.create(email: "email", password: User.encrypt(password)) 
    @encrypted_pass = User.password.reverse 
  end

  def decrypt(password)
    User.password = @encrypted_pass.reverse
  end

  def self.authenticate(email, password)
    @user = User.find_by_email(email)
    
    password == @user.decrypt(@user.password) ? true : false
    # if email and password correspond to a valid user, return that user
    # otherwise, return nil
  end
end
