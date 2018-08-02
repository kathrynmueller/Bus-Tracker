module ApplicationHelper

	def nearby(lng1, lat1, lng2, lat2)
    	if (lng1-lng2).abs <= 0.01 && (lat1-lat2).abs <= 0.01
      		# can omit 'return' in Ruby
      		return true
    	else
      		return false
    	end
  	end


  	def valid_location(location)
	    if location.latitude.nil? || location.longitude.nil?
	    	return false
	    else
			return true	
	    end
	end	

    def on_time?(adherence)
      if adherence.to_i == 0
        "on time"
      elsif adherence.to_i < 0
        "#{adherence.to_i.abs} minutes late"
      else
        "#{adherence.to_i.abs} minutes ahead of schedule"
      end
  end

end
