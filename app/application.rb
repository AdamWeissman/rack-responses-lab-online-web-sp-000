class Application
 
  def call(env)
    resp = Rack::Response.new
    
    less_than_12 = Time.now.hour < 12
    
    lemme_find_out = lambda {less_than_12 ? resp.write "Good Morning!" : resp.write "Good Afternoon!"}
    
    lemme_find_out
    
    #def write_it(something)
    #  resp.write something
    #end
 
 
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