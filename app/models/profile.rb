class Profile < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :sex
  belongs_to :user
end
