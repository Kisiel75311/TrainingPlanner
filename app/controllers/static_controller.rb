class StaticController < ApplicationController
  def index
    @some_variable = 123
    @users = User.all
    @plans = Plan.all
  end
end
