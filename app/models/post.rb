class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :description, presence: true
  validates :pinned, inclusion: { in: [true, false] }

  has_and_belongs_to_many :categories

  before_save :generate_handle

  # Use Redcarpet gem to render Markdown content
  def rendered_content
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    markdown.render(content).html_safe
  end

  private

  def generate_handle
    self.handle = title.downcase.tr(' ', '-')
  end
end
