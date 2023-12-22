class Category < ApplicationRecord
  validates :name, presence: true
  validates :priority, presence: true
  validates :color, presence: true
  before_save :generate_handle

  has_and_belongs_to_many :posts

  def posts_by_year
    posts.where(published: true).each_with_object({}) do |post, posts_by_year|
      post_year = post.created_at.year
      posts_by_year[post_year] ||= []
      posts_by_year[post_year].append(post)
    end.sort_by { |key, _| key }.reverse.to_h
  end

  private

  def generate_handle
    self.handle = name.downcase.tr(" ", "-")
  end
end
