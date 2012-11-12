class User < ActiveRecord::Base
  attr_accessible :age, :name
  validates :age, :name, :presence => true
  validates :age, :numericality => { :greater_than => 20 }
  validates :name, :uniqueness => true
  # validates :name, :uniqueness => { :message => 'someone already took' }
end
