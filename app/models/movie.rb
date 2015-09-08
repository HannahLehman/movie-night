class Movie < ActiveRecord::Base
	validates :title, :url, presence: true 
end
