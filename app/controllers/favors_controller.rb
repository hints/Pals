class FavorsController < ApplicationController
	def create_favor
		@params = params
		takers = params['takers']
		givers = params['givers']
		desc = params['description']
		place = params['place']

		f = Favors.new(:takers => takers,
			       :givers => givers,
			       :description => desc,
 			       :place => place)
		f.save!
	end

	def all_favors
		@favors = Favors.find(:all)
	end
end