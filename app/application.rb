  def call(env)
    resp = Rack::Response.new
 
    now = Time.now
    if now.hour >=12
      resp.write "Good Afternoon!"
    elsif now.hour <= 11
      resp.write "Good Morning!"
    end
 
    resp.finish
  end