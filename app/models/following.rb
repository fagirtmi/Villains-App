class Following < ApplicationRecord
   belongs_to :leader, :class_name => 'Villains'
   belongs_to :follower, :class_name => 'Villains'
end
