class VillainsController < ApplicationController
   def new
      @villain = Villain.new
   end
   def create
      @villain = Villain.new(villain_params)
      if @villain.save
         redirect_to @villain
      else
         render 'new'
      end
   end
   def show
      @villain = Villain.find(params[:id])
   end
   
   
   private
   def villain_params
       params.require(:villain).permit(:firstName, :lastName, :alias, :birthday, :gender,
       :rank, :cursed, :super_strength, :healing_factor, :invulnerability, :duplication,
       :dynamic_camouflage, :invisibility, :enhanced_awarness, :enhanced_durability, 
       :enhanced_marksmanship, :enhanced_reflexes, :enhanced_senses, :clairvoyance, 
       :energy_manipulation, :immortality, :mental_projection, :psychic, 
       :superhuman_intelligence, :time_travel, :telepathy, :teleportation, :searching_for)  
   end
   
end

