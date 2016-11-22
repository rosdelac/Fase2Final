get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  @photos = Photo.all
  erb :index
end

post '/upload' do
  p params
  @photo = Photo.new(params[:photo])
  @photo.save!

  redirect '/'
end
