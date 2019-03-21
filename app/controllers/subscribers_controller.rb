class SubscribersController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end

 	def create
		@subscriber = Subscriber.find(email: subscriber_params[:email])

		if @subscriber.new_record?
      # if subscriber_params[:sub] == 'Yes'
			   @subscriber.save!
         return redirect_to root_path, notice: "Hey thanks for signing up."
		  else
			 return redirect_to root_path, notice: "Looks like your are already here!"
    # end
   end
  end

  # def new
  #   if @subscriber.sub == "Yes"
  #      @subscriber.save!
  #      redirect_to root_path, notice: "Hey thanks for signing up."
  #   else
  # end

private
  def subscriber_params
		params.require(:subscriber).permit(:email, :sub)
	end
end
