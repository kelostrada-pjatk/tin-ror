class Post < ActiveRecord::Base
  belongs_to :user
  validates :content, presence: true
  validates :user_id, presence: true
  
  def author
    user.name
  end
end
