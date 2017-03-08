require "chicago_food_inspections/version"
require "unirest"

module ChicagoFoodInspections
  class Inspection
    attr_reader :aka_name, :inspection_type, :inspection_date, :result, :violations
    def initialize(info)
      @aka_name = info["aka_name"]
      @inspection_type = info["inspection_type"]
      @inspection_date = info["inspection_date"]
      @result = info["results"]
      # @violations = info["violations"]
    end

    def self.all
      inspections_array = Unirest.get("https://data.cityofchicago.org/resource/cwig-ma7x.json").body
      inspections = []
      inspections_array.each do |inspection_hash|
        inspections << Inspection.new(inspection_hash)
      end
      return inspections
    end

    def self.search(search_term)
      inspections_array = Unirest.get("https://data.cityofchicago.org/resource/cwig-ma7x.json?$q=#{search_term}").body
      inspections = []
      inspections_array.each do |inspection_hash|
        inspections << Inspection.new(inspection_hash)
      end
      return inspections
    end
  end
end
