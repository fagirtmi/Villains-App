class FeedbackController < ApplicationController
   def new
      @feedback = Feedback.new
   end
   
   def create
      @feedback = Feedback.new(feedback_params)
      if @feedback.save
         redirect_to @feedback
      else
         render 'new'
      end
   end
   
   def show
      @feedback = Feedback.find(params[:id])
   end
   
   def edit
      @feedback = Feedback.find(params[:id])
   end
   
   def update
      @feedback = Feedback.find(params[:id])
      
      if @feedback.update(feedback_params)
         redirect_to @feedback
      else
         render 'edit'
      end
   end
   
   def destroy
      @feedback = Feedback.find(params[:id])
      @feedback.destroy
      
      redirect_to feedback_path
   end
   
   private 
   def feedback_params
     params.require(:feedback).permit(:title, :text)
   end
   
end
