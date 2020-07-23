class Specialty < ApplicationRecord
    belongs_to :artist
    belongs_to :instrument

    validates_uniqueness_of :artist_id, :scope => :instrument_id, :message => "Instrument is already assigned"
end
