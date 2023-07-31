class Comment < ApplicationRecord
  validates :author, :body, presence: true
  validates_length_of :body, maximum: 4000

  belongs_to :article
end
