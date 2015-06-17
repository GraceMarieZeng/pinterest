class PinsController < ApplicationController
  before_action :load_pins, :only => [:index, :create]
  before_action :load_new_pin, :only => [:index, :new]

  def index
  end

  def new
  end

  def create
    @pin = Pin.new(pin_params)

    if @pin.save
      redirect_to '/pins'
    else
      render :index
    end
  end

  private

    def pin_params
      params["pin"].permit(:description, :name, :avatar)
    end

    def load_new_pin
      @pin = Pin.new
    end

    def load_pins
      @pins = Pin.all
    end
end