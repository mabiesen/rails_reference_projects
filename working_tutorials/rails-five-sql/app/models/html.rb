class Html < ApplicationRecord
	belongs_to :version
	validates_presence_of :page
end
