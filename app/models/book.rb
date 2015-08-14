class Book < ActiveRecord::Base
	extend FriendlyId

	friendly_id :name, use: :slugged
	belongs_to :user
	has_many :sales

	has_attached_file :image
	has_attached_file :resource

	validates_numericality_of :price,
	greater_than: 49, message: 'must be greatear than 50 cents' 	
end
