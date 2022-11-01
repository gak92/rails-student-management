class Student < ApplicationRecord
  has_many :blogs
  has_and_belongs_to_many :courses

  validates :first_name, :last_name, :email, presence: true

  # before_create :display_greetings

  # def display_greetings
  #   puts "Hello, your executed before action callbacks"
  # end
end
