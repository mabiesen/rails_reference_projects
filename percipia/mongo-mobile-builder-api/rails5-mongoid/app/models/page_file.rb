class PageFile
  include Mongoid::Document
  include Mongoid::Timestamps
  field :type, type: String
  field :name, type: String
  field :link, type: String
end
