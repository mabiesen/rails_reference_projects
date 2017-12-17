class Company < ApplicationRecord
	belongs_to :version
	validates_presence_of :companyName, :companyLocation
end
