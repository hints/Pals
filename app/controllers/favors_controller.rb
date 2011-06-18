class FavorsController < ApplicationController
	def create_favor
		@params = params
		takers = params['takers']
		givers = params['givers']
		desc = params['description']
		place = params['place']

		if givers.eql? 'Email of Godfather to get favor from'
		  givers = ''
		end

		if desc.eql? 'Description of Favor'
		  desc = ''
		end

		if place.eql? 'Place (Optional)'
		  place = ''
		end

		f = Favors.new(:takers => takers,
			       :givers => givers,
			       :description => desc,
 			       :place => place)
		f.save!
	end

	def favors
		giver = params["giver"]
		favors = Favors.where("UPPER(givers) LIKE ?", '%' + giver.upcase + '%')
		render :json => favors
	end

	def all_favors
		@favors = Favors.find(:all)
	end
end
