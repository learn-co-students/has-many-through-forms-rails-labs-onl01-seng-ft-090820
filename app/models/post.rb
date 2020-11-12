class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  

  def categories_attributes=(attribute_hash)
    attribute_hash.values.each do |ah|
      if !ah[:name].blank?
        self.categories.build(ah)
      end 
    end 
  end


end
