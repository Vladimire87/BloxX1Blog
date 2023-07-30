class Article < ApplicationRecord
  validates :title, :content, presence: true
  validates_length_of :title, maximum: 140
  has_many :comments, dependent: :destroy
  has_rich_text :content

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
