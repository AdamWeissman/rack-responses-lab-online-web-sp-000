class Application
 
  def call(env)
    resp = Rack::Response.new
    
    (Time.now < 12 )? ? (resp.write "Good Morning!") : (resp.write "Good Afternoon!")
 
 
    #current_time = Time.now
    #time = current_time.hour
 
    #if time < 12
    #  resp.write "Good Morning!"
    #else
    #  resp.write "Good Afternoon!"
    #end
 
    resp.finish
  end
 
end