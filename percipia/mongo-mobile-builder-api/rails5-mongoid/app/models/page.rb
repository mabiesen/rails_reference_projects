class Page
  # CONSTRAINTS
  # needs unique ID
  # nothing should be null
  # type should match one of the alotted types

  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :text, type: String
  field :type, type: String
end
