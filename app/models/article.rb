class Article < ActiveRecord::Base
  has_one_attached :photo

  validates :title, presence: true, length: { minimum: 3, maximum: 100}
end
