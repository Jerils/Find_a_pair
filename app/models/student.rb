class Student < ApplicationRecord
   belongs_to :user

   validates :name, presence: true
   validates :bio, presence: true, length: {maximum: 100}
   validates :image_url, presence: true
end
