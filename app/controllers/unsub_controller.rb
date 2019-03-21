class UnsubController < ApplicationController

	  def index
			@subscriber = Subscriber.find(email: subscriber_params[:email])
	  end

		def delete

			if @subscriber.new_record?
	      # if subscriber_params[:sub] == 'Yes'
	         return redirect_to root_path, notice: "It looks like you arent signed up.  Do you wanna be?"
			  else
				 return redirect_to root_path, notice: "Looks like your are already here!"
	    # end
	   end
	  end

private
  def subscriber_params
		params.require(:subscriber).permit(:email, :sub)
	end
end
