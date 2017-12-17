class Version < ApplicationRecord
	has_many :htmls, dependent: destroy
	has_many :companies, dependent: destroy
	validates_presence_of :activeVersion, :company_id, :html_id
end
