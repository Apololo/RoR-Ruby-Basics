require './pet'
require 'yaml'
require 'sinatra'
require 'sinatra/reloader'

$pet = Pet.new

get "/" do 
   erb :strart_page
end 

post "/" do 
 if params[:start]
   erb :pet_type
 elsif params[ :continue]
   redirect:"/continue"
 end 
end 

get "/pet_type" do
 erb :pet_type
end

post "/pet_type" do
 @name = params[ :name]
 @type_pets = [ :type_pets]
 @health_pt = 10; @feed_pt = 10; @walk = 10; @happiness_pt = 10 
 erb :gamebody
end

get "/continue" do
 stat_save = YAML.load( File.read("petstat.yml"))
 @name = stat_save[0]["name "]
 @feed_pt = stat_save[0] ["hunger"]
 @health_pt = stat_save[0] ["health"]
 @walk = stat_save[0] ["toilet"]
 @happiness_pt = stat_save[0] ["happy"]
 erb :gamebody
end

def create_yaml  
		config = [
		"name " => @name,
		"hunger" => @feed_pt,
		"health" => @health_pt,
		"toilet" => @walk,
		"happy"  => @happiness_pt]
  File.open( "petstat.yml", "w" ) {  |file|  file.write( config.to_yaml )} 
end

 

post "/continue" do
 erb :gamebody
end

post "/gamebody" do
 action
end
 
def action
 case params['act']
  when 'feed'
   pet.feed
  when 'play'
   pet.play
  when 'walk'
   pet.walk
  when 'nurse'
   pet.nurse
  when 'train'
   pet.train
  when 'watch'
   pet.watch
  when 'caress'
   pet.caress
  when 'wash'
   pet.wash
  when 'talk'
   pet.talk
  when 'sleep'
   pet.sleep
  end	
end

