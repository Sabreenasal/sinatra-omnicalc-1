require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:new_square_calc)
end

get("/square/new") do
erb(:new_square_calc)
end

get "/square/results" do
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num ** 2
 erb(:square_results)
end

get "/square_root/new" do
 erb(:new_square_root)
end

get("/square_root/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = Math.sqrt(@the_num)
  erb(:root_results)
end

get("/random/new") do
 erb(:random)
end

get("/random/results") do
  @the_min = params.fetch("user_min").to_f

  @the_max = params.fetch("user_max").to_f

 erb(:random_results)
end

get("/payment/new") do
erb(:new_payment)
end

get("/payment/results") do
  @the_apr = params.fetch("user_apr").to_f

  @user_years = params.fetch("user_years")


erb(:payment_results)
end
