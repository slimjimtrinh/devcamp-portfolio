class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  
  validates :content, presence: true, length:  { minimum: 1, maximium: 100 }
end
