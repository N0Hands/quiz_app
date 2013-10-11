class Quiz < ActiveRecord::Base
	# # attr_accessible :title, :questions
	# whitelist_attributes

	has_many :questions
	# accepts_nested_attributes_for :questions

	validates :title, presence: true
	# validates :questions, presence: true

end
