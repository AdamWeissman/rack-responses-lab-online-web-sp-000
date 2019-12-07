class Application
 
  def call(env)
    resp = Rack::Response.new
    
    less_than_12 = Time.now.hour < 12
    
    less_than_12 ? write_it("Good Morning!") : write_it("Good Afternoon!")
    
    def write_it(something)
      resp.write #{something}
    end
 
 
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