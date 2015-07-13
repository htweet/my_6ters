class Comment < ActiveRecord::Base

	belongs_to :micropost
	default_scope -> { order(created_at: :desc) }
  validates      :content, length: { minimum: 1, maximum: 500 }

end
