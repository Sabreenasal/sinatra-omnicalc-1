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
  @the_min = params.fetch("min_input").to_f

  @the_max = params.fetch("max_input").to_f

  @the_rand_num = 
 erb(:random_results)
end
