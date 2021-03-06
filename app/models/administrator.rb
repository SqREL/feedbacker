class Administrator < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation

  validates :email, :presence => true,
            :format => { :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
            :uniqueness => { :case_sensitive => false }
  validates :password, :password_confirmation, :presence => true

  has_secure_password
end
