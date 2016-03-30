class UsersController < ApplicationController
  define_method :index do
    @foods = Food.all
  end
end
