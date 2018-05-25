class Post < ActiveRecord::Base
  validates :content, presence:true,length:{in: 5..40}
  belongs_to :user
  has_many :likes
end
