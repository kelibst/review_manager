class Hospital < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  before_save :slugify
  validates :slug, uniqueness: true

  def slugify
    self.slug = name.parameterize
  end

  def avg_score
    reviews.average(:score)
  end
end
