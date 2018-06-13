class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
end


# class Restaurant < ApplicationRecord
#   has_many :reviews, dependent: :destroy
#   validates :name, presence: true
#   validates :address, presence: true
#   validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }

# end
