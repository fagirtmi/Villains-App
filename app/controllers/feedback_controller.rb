class FeedbackController < ApplicationController
   def new
   end
   
   def create
      redirect_to '/feedback/new'
      
   end
end
