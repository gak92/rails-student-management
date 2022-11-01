class Student < ApplicationRecord
  has_many :blogs
  has_and_belongs_to_many :courses
  has_many :student_projects
  has_many :projects, through: :student_projects

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
  validates :first_name, :last_name, length: {minimum:2, maximum:50}
  validates :first_name, :last_name, format: { with: /\A[a-zA-z]+\z/, message: 'Only letters allowed' }
  validate :validate_student_age

  # before_create :display_greetings

  # def display_greetings
  #   puts "Hello, your executed before action callbacks"
  # end

  def validate_student_age
    if self.date_of_birth.present?
      age = Date.today.year - self.date_of_birth.year
      if age < 15
        errors.add(:age, 'Please provide valid date of birth, Age must be greater than 15')
      end
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def age
    if date_of_birth.present?
      Date.today.year - date_of_birth.year
    else
      nil
    end
  end

end
