class Category < ApplicationRecord
    validates :name, presence: true
    validates :priority, presence: true
    validates :color, presence: true

    has_and_belongs_to_many :posts
end
