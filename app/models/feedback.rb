class Feedback < ActiveRecord::Base
  attr_accessible :email, :message, :name, :phone

  validates :email, :presence => true,
            :format => { :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :message, :name, :phone, :presence => true
end
