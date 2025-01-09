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

  @the_rand = rand(@the_min..@the_max)

 erb(:random_results)
end

get("/payment/new") do
erb(:new_payment)
end

get("/payment/results") do
  @apr = (params.fetch("user_apr").to_f)/100

  @apr_shown = (params.fetch("user_apr").to_f).to_fs(:percentage, { :precision => 4 })
  @user_years = params.fetch("user_years").to_i
  @present_value = params.fetch("user_pv").to_i
  @present_val_display = @present_value.to_fs (:currency)
  @num_periods = @user_years * 12
  @rate_per_period = @apr/12
  @numerator = @rate_per_period * @present_value
  @denominator = 1 - ((1 + @rate_per_period)**(-@num_periods))

  @payment = (@numerator/@denominator).to_fs(:currency)


erb(:payment_results)
end
