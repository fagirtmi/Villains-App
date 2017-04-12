class VillainsController < ApplicationController
   def new
      @villain = Villain.new
   end
   def create
      @villain = Villain.new()
      if @villain.save
         
   end
end