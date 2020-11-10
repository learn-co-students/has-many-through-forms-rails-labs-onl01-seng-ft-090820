class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank 
  # accepts_nested_attributes_for :user reject_if: proc { |category_attribute| category_attribute['name'].blank? }

end
