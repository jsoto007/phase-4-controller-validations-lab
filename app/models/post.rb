class Post < ApplicationRecord
  validates :title, presence: true
  validates :category, inclusion: {in: ['Fiction', 'Non-Fiction']}
  validates :content, length: {minimum: 100}
  # validates :clickbait?
  # CLICKBAIT_PATTERNS = [
  #   /Won't Believe/i,
  #   /Secret/i,
  #   /Top \d/i,
  #   /Guess/i
  # ]

  # def clickbait?
  #   if CLICKBAIT_PATTERNS.none? { |pat| pat.match title }
  #     errors.add(:title, "must be clickbait")
  #   end
  # end

end
