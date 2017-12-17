json.extract! user, :id, :companyName, :companyLocation, :companyPassword, :companyFreqIP, :companyFreqKey, :companyParallaxIP, :companyParallaxKey, :jsonKey, :woeID, :domain, :title, :created_at, :updated_at
json.url user_url(user, format: :json)
