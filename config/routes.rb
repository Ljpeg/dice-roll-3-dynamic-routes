Rails.application.routes.draw do
  get("/", { :controller => "dice", :action => "render_homepage" })

  get("/dice/:number_of_dice/:number_of_sides", { :controller => "dice", :action => "dynamic" })
end
