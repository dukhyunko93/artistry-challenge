class Artist < ApplicationRecord
    has_many :specialties
    has_many :instruments, through: :specialties

    validates :name, :age, presence: true
    validates :title, presence: true, uniqueness: true
end
