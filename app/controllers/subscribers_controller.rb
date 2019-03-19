class SubscribersController < ApplicationController
  def index
  end

 	def subscribe
		@subscribe = Subscribe.find_or_initialize_by(email: subscribe_params[:email])
		if @subscribe.new_record?
			 @subscribe.save!
			 redirect_to root_path, notice: "Hey thanks for signing up."
		else
			 redirect_to root_path, notice: "Looks like your are already here!"
		end
	end

private
  def subscribe_params
		params.require(:subscribe).permit(:email, :sub)
	end


end
