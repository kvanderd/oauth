class User < ActiveRecord::Base

  include BCrypt

  def self.authenticate(email, password)
    current_user = User.where("email = ?", email).first
    current_user.password == password ? true : nil
  end

  def password=(password)
    update_attribute(:password_hash, Password.create(password))
  end

  def password
    Password.new(password_hash)
  end
end