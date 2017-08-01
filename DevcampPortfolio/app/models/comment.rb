class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  
  validates :content, presence: true, length:  { minimum: 1, maximium: 100 }
  
  after_create_commit { CommentBoreadcastJob.perform_later(self) }
end
