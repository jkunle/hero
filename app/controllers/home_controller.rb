class HomeController < ApplicationController
  
  before_action :common_content, :only => [:index, :team]
  
  def common_content
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @hero_prefix = Faker::Superhero.prefix
    @corp_title = Faker::Company.profession
    @corp_power = Faker::Company.bs
    @corp_power = @corp_power.titleize
    
    @rand_num = rand(1..1000)
    @set_no = "set#{rand(1..4)}"
    @bg_color = "bg#{rand(1..2)}"
    
    @avatar = Faker::Avatar.image(@rand_num, "300x300", "png", @set_no, @bg_color )
  end
  
  def index

  end
  
  def team
    @team_number = params[:team_number].to_i
  end
end
