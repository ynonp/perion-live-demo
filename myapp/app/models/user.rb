class User < ActiveRecord::Base
  include BCrypt
  validates_presence_of :password
  validates_presence_of :name

  def password=(val)
    @password = Password.create(val)
    self.password_hash = @password    
  end

  def password
    if password_hash.present?
      @password ||= Password.new(password_hash)
    else
      ""
    end
  end

  def check_password(val)
    password == val
  end
end
