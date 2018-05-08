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
    p = ""
    @phrase = params[:phrase]
      @num.times do
        p += @phrase
      end
      p
  end
end
