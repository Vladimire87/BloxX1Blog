class Article < ApplicationRecord
  validates :title, :text, :thumbnail, presence: true
  validates_length_of :title, maximum: 140
  validates_length_of :text, maximum: 4000

  has_one_attached :thumbnail
  has_rich_text :text

  has_many :comments, dependent: :destroy

  def subject
    title
  end

  def last_comment
    comments.last
  end

  def thumbnail_edit
    thumbnail.variant(resize_to_limit: [250, 250]).processed
  end

  def thumbnail_index
    thumbnail.variant(resize_to_limit: [580, 330]).processed
  end
end
