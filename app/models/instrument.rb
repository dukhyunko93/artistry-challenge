class Instrument < ApplicationRecord
    has_many :specialties
    has_many :artists, through: :specialties
end
