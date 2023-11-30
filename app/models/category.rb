class Category < ApplicationRecord
  validates :name, presence: true
  validates :priority, presence: true
  validates :color, presence: true
  before_save :generate_handle

  has_and_belongs_to_many :posts

  private

  def generate_handle
    self.handle = name.downcase.tr(' ', '-')
  end
end
