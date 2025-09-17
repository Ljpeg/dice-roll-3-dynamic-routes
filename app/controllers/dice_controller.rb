class DiceController < ApplicationController
  def render_homepage
    render({ :template => "dice_templates/homepage" })
  end


  def dynamic
    @rolls = []
    @num_dice = params.fetch("number_of_dice").to_i
    @num_sides = params.fetch("number_of_sides").to_i

    @num_dice.times do
      dice = rand(1..@num_sides)
      @rolls.push(dice)
    end 

    render({ :template => "dice_templates/result_dynamic" })
  end 
end
