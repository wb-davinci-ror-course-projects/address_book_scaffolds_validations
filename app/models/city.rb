class City < ActiveRecord::Base
  VALID_STATES = %w(ID WA OR)
  validates :elevation,
            numericality: {
              greater_than_or_equal_to: 3315,
              if: lambda { |city| city.state == 'CO' },
              message: 'is too low, the lowest elevation in Colorado is 3,315 feet'
            }
   validates :name, :population, :elevation, :state,  presence: { message: "Fields highlighted in red are required." }

end
