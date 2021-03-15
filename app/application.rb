class Application
time = Time.now.hour
    def call(env)
        resp = Rack::Response.new
        if "#{time}" < 12
            resp.write "Good Morning"
        else "#{time}" >= 12
            resp.write "Afternoon"
        end
            resp.finish
    end

end