class User

  # CONSTRAINTS
  # Company location should be validated against google (to obtain woeID)
  # Company name/location combo should be unique
  # Company password should be at least 6 characters, 1 number
  # Company freqIP should be different from companyParallaxIP

  include Mongoid::Document
  include Mongoid::Timestamps
  field :companyName, type: String
  field :companyLocation, type: String
  field :companyPassword, type: String
  field :companyFreqIP, type: String
  field :companyFreqKey, type: String
  field :companyParallaxIP, type: String
  field :companyParallaxKey, type: String
  field :jsonKey, type: String
  field :woeID, type: String
  field :domain, type: String
  field :title, type: String
end
