class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories 
  accepts_nested_attributes_for :comments, reject_if: :second_comment

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      # binding.pry
      if category_attribute["name"] != ""
        category = Category.find_or_create_by(category_attribute)
        self.post_categories.build(category: category)
      end
    end
  end

  def second_comment(category_attributes)
    binding.pry
    # post.users.include?(User.find_by(categories_attributes["user"]))
  end

  def unique_users
    unique_users = self.users.uniq
  end

end
