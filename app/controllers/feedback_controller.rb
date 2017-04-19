class FeedbackController < ApplicationController
   def show
      @feedback = Feedback.find(params[:id])
   end
   
   def new
      @feedback = Feedback.new
   end
   
   def create
      @feedback = Feedback.new(params[:feedback])
      
      @feedback.save
      redirect_to @feedback
   end
   
   private 
   def feedback_params
      params.require(:feedback).permit(:title, :text)
   end
   
end
