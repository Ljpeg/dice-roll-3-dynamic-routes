Rails.application.routes.draw do
  get("/", { :controller => "dice", :action => "render_homepage" })

  get("/dice/2/6", { :controller => "dice", :action => "roll_two_six" })
  get("/dice/2/10", { :controller => "dice", :action => "roll_two_ten" })
  get("/dice/1/20", { :controller => "dice", :action => "roll_one_twenty" })
  get("/dice/5/4", { :controller => "dice", :action => "roll_five_four" })
  get("/dice/:number_of_dice/:number_of_sides", { :controller => "dice", :action => "dynamic" })
end
