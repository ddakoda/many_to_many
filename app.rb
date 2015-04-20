
  require 'bundler'
  Bundler.require()

#connection
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'many'
)

require './models/chirp'

#Routes:
# get \api\users
# All users
get '/api/chirps' do
  content_type :json
  Chirp.all.to_json
end
# get \api\users\:id
# A specific user
get '/api/chirps/:id' do
  chirp = Chirp.find(params[:id].to_i)
  chirp.to_json
end
# post \api\users
# Create a new user
post '/api/chirps' do
  content_type :json
  chirp = To_do.create(params[:chirp])
  chirp.to_json
end
# put \api\users\:id
# Update an existing user
put '/api/chirps/:id' do
  content_type :json
  chirp = Chirp.find(params[:id].to_i).update(params[:chirp])
  chirp.to_json
end
# patch \api\users\:id
# Update an existing user
patch '/api/chirps/:id' do
  content_type :json
  chirp = Chirp.find(params[:id].to_i).update(params[:chirp])
  chirp.to_json
end
# delete \api\users\:id
# Delete an existing user
delete '/api/chirps/:id' do
  content_type :json
  id = params[:id].to_i
  chirp = Chirp.destroy(id)
end
# get \api\locations
# All locations
get '/api/locations' do
  content_type :json
  Location.all.to_json
end
# get \api\locations\:id
# A specific location
get '/api/locations/:id' do
  location = Location.find(params[:id].to_i)
  location.to_json
end
# post \api\locations
# Create a new location
post '/api/locations' do
  content_type :json
  location = Location.create(params[:location])
  location.to_json
end
# put \api\locations\:id
# Update an existing location
put '/api/locations/:id' do
  content_type :json
  location = Location.find(params[:id].to_i).update(params[:location])
  location.to_json
end
# patch \api\locations\:id
# Update an existing location
patch '/api/locations/:id' do
  content_type :json
  location = Location.find(params[:id].to_i).update(params[:location])
  location.to_json
end
# delete \api\locations\:id
# Delete an existing location
delete '/api/locations/:id' do
  content_type :json
  id = params[:id].to_i
  location = Location.destroy(id)
end
# get \api\visits
# All visits
get '/api/visits' do
  content_type :json
  Visit.all.to_json
end
# get \api\visits\:id
# A specific visit
get '/api/visits/:id' do
  visit = Visit.find(params[:id].to_i)
  visit.to_json
end
# post \api\visits
# Create a new visit
post '/api/visits' do
  content_type :json
  visit = Visit.create(params[:visit])
  visit.to_json
end
# put \api\visits\:id
# Update an existing
put '/api/visits/:id' do
  content_type :json
  visit = Visit.find(params[:id].to_i).update(params[:visit])
  visit.to_json
end
# patch \api\visits\:id
# Update an existing visit
patch '/api/visits/:id' do
  content_type :json
  visit = Visit.find(params[:id].to_i).update(params[:visit])
  visit.to_json
end
# delete \api\visits\:id
# Delete an existing visit
delete '/api/visits/:id' do
  content_type :json
  id = params[:id].to_i
  visit = Visit.destroy(id)
end
