class Word < ApplicationRecord
  validates :to, presence: true
  validates :from, presence: true, :uniqueness => true
  belongs_to :user
  
end