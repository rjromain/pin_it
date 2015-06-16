class PinsController < ApplicationController
	def index
		@pins = Pin.all.order("created_at DESC")
	end

	def show
	end

	def new
		@pin = Pin.new
	end

	def create
		@pin = Pin.new(pin_params)

		if @pin.save
			redirect_to @pin, notice: "Pin was successfully created"
		else
			render 'new'
		end
	end
end
