class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :description, presence: true
  validates :pinned, inclusion: { in: [true, false] }

  has_and_belongs_to_many :categories

  before_save :generate_handle

  def self.posts_by_year
    where(published: true).order(created_at: :asc).each_with_object({}) do |post, posts_by_year|
      post_year = post.created_at.year
      posts_by_year[post_year] ||= []
      posts_by_year[post_year].append(post)
    end.sort_by { |key, _| key }.reverse.to_h
  end

  # Use Redcarpet gem to render Markdown content
  def rendered_content
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    markdown.render(content).html_safe
  end

  private

  def generate_handle
    self.handle = title.downcase.tr(" ", "-")
  end
end
