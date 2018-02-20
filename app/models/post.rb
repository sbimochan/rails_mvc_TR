class Post < ApplicationRecord
  validates_length_of :content, :minimum =>50
  validates :title, presence: true
  validates :author, presence: true
  validates :content, presence: true
end
