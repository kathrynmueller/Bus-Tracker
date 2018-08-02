class Location < ApplicationRecord
	geocoded_by :my_location
	after_validation :geocode

	# validations
	validates :address, presence: true
	validates :city, presence: true

	def my_location
		"#{address}, #{city}, GA"
	end



end
