class SubscribersController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end

 	def create
     @subscriber = Subscriber.find_or_initialize_by(email: subscriber_params[:email])
     #   if @subscriber.new_record?
        if subscriber_params[:sub] == 'Yes'
           @subscriber.sub
  		      return redirect_to root_path, notice: "that worked"
      elsif subscriber_params[:sub] == 'No'
        return redirect_to root_path, notice: "NOPE"
		  else
         return redirect_to root_path, notice: "Oops! Something is missing!"
       end
  end

  def sub
    # @subscriber = Subscriber.find_or_initialize_by(email: subscriber_params[:email])
  	 if @subscriber.new_record?
      @subscriber.save!
      else
        return redirect_to root_path, notice: "Looks like you are already here!"
      end
   end

   # def unsub
   #   @subscriber = Subscriber.find_or_initialize_by(email: subscriber_params[:email])
   # 	 if @subscriber.new_record?
   #      redirect_to root_path, notice: "It doesn't look like you are here. Did you wanna sign up"
   #     else
   #       return redirect_to root_path, notice: "This should take you to "
   #     end
   # end

private
  def subscriber_params
		params.require(:subscriber).permit(:email, :sub)
	end
end
