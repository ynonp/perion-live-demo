class User < ActiveRecord::Base
  include BCrypt
  validates_presence_of :password_hash
  validates_presence_of :name
  validates_uniqueness_of :name

  def password=(val)
    return if val.blank?
    @password = Password.create(val)
    self.password_hash = @password    
  end

  def password
    ''
  end

  def check_password(val)
    Password.new(password_hash) == val
  end
end
