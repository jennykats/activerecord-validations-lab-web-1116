class Post < ActiveRecord::Base
  validates :title, presence: true
  validate :clickbait?
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
  message: "%{value} is not a valid category" }
end


def clickbait?
  unless !title.blank? && title.include?("Won't Believe"|| "Secret" || "Top
    [number]" || "Guess")
  errors.add(:title, "not clickbait")
end


end
