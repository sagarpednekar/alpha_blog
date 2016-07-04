class Article < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 4,maximum: 500 }
  validates :description, presence: true, length: {minimum: 10,maximum: 1000}
end