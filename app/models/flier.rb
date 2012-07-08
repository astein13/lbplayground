class Flier < ActiveRecord::Base
  attr_accessible :id, :title, :description, :endtime, :imageurl, :starttime, 
                  :tagline
end
