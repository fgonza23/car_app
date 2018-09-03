class Api::CarsController < ApplicationController

  def index
    @cars = Car.all
    render 'index.json.jbuilder'
  end

  def create
    @car = Car.new(
                    Maker: params[:Maker],
                    color: params[:color]
                    )
    car.save
    render 'show.json.jbuilder'
  end

  def show
    @car = Car.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update 
    @car = Car.find(params[:id])

    @car.Maker = params[:Maker] || @car.Maker
    @car.color = params[:color] || @car.color

    @car.save
    render 'show.json.jbuilder'

  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    render json: {message: "Car successfully destroyed"}


  end
end
