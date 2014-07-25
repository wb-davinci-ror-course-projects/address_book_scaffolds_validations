class Person < ActiveRecord::Base
  # is there something that can take place of following for all fields
  validates :first_name, :last_name, :address_line_one, :city, :state, :zip_code,  presence: true
  validates :email, presence: true, uniqueness: true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }
  validates :zip_code, length: { in: 5..10 }

end
