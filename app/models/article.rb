class Article < ActiveRecord::Base

	acts_as_votable
	
	validates :questions, :description, :category, presence:true
	#validates :description, length: { minimum: 10}
	scope :popular, -> { where('points >= ?', 100)}
    scope :recent, -> { where('created_at >= ?', Date.today)}
    #scope :order, -> {reorder('name')}
    #scope :desc, -> { order("points")}
    scope :in_points_order, order('points DESC')


	 belongs_to :user
  	 has_many :comments
  	 has_many :commenters, through: :comments, source: :user

	def self.search_for(query)
		Article.where("questions LIKE :query OR description LIKE :query", query: "%#{query}%")
	end



end
