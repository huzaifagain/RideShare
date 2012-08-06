class Category < ActiveRecord::Base
  has_and_belongs_to_many :articles
  attr_accessible :name

  default_scope order('categories.name')
end
