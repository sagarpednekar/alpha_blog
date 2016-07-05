class Article < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :user
=======
	belongs_to :user
>>>>>>> userarticle-assocication
  validates :title, presence: true, length: {minimum: 4,maximum: 500 }
  validates :description, presence: true, length: {minimum: 10,maximum: 1000}
  validates :user_id, presence: true
end