class Villain < ApplicationRecord
   has_many :followers, :class_name => 'Followings', :foreign_key => 'villains_id'
   has_many :following, :class_name => 'Followings', :foreign_key => 'follower_id' 
end
