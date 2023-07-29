class Article < ApplicationRecord
  validates :title, :content, presence: true
  has_many :comments, dependent: :destroy
  has_rich_text :content

  def subject
    title
  end
end
