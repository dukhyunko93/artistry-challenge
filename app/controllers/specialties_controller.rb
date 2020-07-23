class SpecialtiesController < ApplicationController

    def new
        @specialty = Specialty.new
        @artists = Artist.all
        @instruments = Instrument.all
    end

    def create
        s = Specialty.create(params_method)
        redirect_to artist_path(s.artist)
    end


    private

    def params_method
        params.require(:specialty).permit(:artist_id, :instrument_id)
    end
    
end
