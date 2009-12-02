class User < ActiveRecord::Base
  include Clearance::User
  has_many :posts
  validates_presence_of :login
  attr_accessible :login

  def to_s
    login
  end
end
