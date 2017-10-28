class Pet < ApplicationRecord
	geocoded_by :address   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates
	reverse_geocoded_by :latitude, :longitude
	after_validation :reverse_geocode  # auto-fetch address

	has_attached_file :img, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :img, content_type: /\Aimage\/.*\z/


  def set_coordinates(request)
    self.update_columns(longitude: request.location.longitude, latitude: request.location.longitude)
  end

end
