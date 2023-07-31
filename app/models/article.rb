class Article < ApplicationRecord
  validates :title, :text, presence: true
  validates_length_of :title, maximum: 140
  validates_length_of :text, maximum: 4000

  # has_rich_text :text
  has_many :comments, dependent: :destroy

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
