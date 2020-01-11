require 'rack' 

class Application

 # def call(env)
  #  resp = Rack::Response.new
   # resp.write "Hello, World"
    #resp.finish
#  end
  
   def call(env) 
     return [200,{'Content-Type' => 'text/html'}, introduction]
   end 
   
   def introduction 
     (Time.now.to_i).zero?["<em>Hello,my name is"]#:["<strong>Hello,my name is</strong>"]
   end 
end

run Application.new 
