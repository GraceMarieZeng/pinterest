class PinsController < ApplicationController
  before_action :load_pins, :only => [:index, :create]
  before_action :load_new_pin, :only => [:index, :new]

  def index
  end

  def new
  end

  def create
    @tweet = pin.new(pin_params)

    if @pin.save
      redirect_to '/pins'
    else
      render :index
    end
  end

  private

    def pin_params
      params["pin"].permit(:body).merge(:user => current_user)
    end

    def load_new_pin
      @pin = pin.new
    end

    def load_pins
      @pins = pin.all
    end
end