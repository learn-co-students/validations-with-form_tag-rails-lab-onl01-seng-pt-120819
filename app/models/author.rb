class Author < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  validates :phone_number, length: { is: 10}
  validates :email, uniqueness: true
end
