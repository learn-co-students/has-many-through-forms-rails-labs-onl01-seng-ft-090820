class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  # added code
  accepts_nested_attributes_for :categories, reject_if: :all_blank


end
