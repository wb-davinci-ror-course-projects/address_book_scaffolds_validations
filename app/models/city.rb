class City < ActiveRecord::Base
  VALID_STATES = %w(ID WA OR)
  validates :elevation,
            numericality: {
              greater_than_or_equal_to: 3315,
              if: lambda { |city| city.state == 'CO' },
              message: 'is too low, the lowest elevation in Colorado is 3,315 feet'
            }
   validates :name, :population, :elevation, :state,  presence: { message: "Fields highlighted in red are required." }
   validates :population,
             numericality: {
               greater_than: 0
             }
   validates :state, inclusion: { in: %w(AK AZ AR CA CO CT DE DC FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY),
                              }
end

