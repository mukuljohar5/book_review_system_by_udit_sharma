class Book < ApplicationRecord
  validates :title, presence: true, :uniqueness => { message: " first fill", case_sensitive: false}

    belongs_to :user
    belongs_to :category
    has_many :reviews



     
    has_one_attached :avatar do |attachable|
      attachable.variant :thumb, resize_to_limit: [1000, 1000]
    end

    validates_uniqueness_of :avatar, allow_blank: true

end
