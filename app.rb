require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    "#{params[:name].reverse!}"
  end

  get "/square/:number" do
    "#{params[:number].to_i ** 2}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    i = 0
    until i <= @num do
      "#{params[:phrase]}"
            i += 1
    end
  end
end
