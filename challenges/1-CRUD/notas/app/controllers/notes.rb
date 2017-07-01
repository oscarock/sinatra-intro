# INDEX

get '/notes' do
  @notes = Notes.all
  erb :index
end

#NEW
get '/notes/new' do
	erb :new
end

#CREATE
post '/notes' do
	@note = Notes.new(name: params[:name],description: params[:description])
	if @note.save
		redirect '/notes'
	else
		@errors = @note.errors.full_messages
    	erb :new	
	end
end

#SHOW
##no la hice##

#EDIT#
get '/notes/:id/edit' do 
	@notes = Notes.find(params[:id])
	erb :edit
end

#UPDATE#
patch '/notes/:id' do
	@notes = Notes.find(params[:id])
	@notes.update(name: params[:name], description: params[:description])
	redirect '/notes'
end

#DELETE#
get '/notes/:id/delete' do
	notes = Notes.find(params[:id])
	notes.destroy
	redirect '/notes'
end
