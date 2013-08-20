class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :article

		def self.search_for(query)
		Comment.where("comment LIKE :query", query: "%#{query}%")
	end
end

