class Flier < ActiveRecord::Base
  attr_accessible :id, :title, :description, :endtime, :imageurl, :starttime, 
                  :tagline, :community

  validates :title, :description, :endtime, :imageurl, :starttime, :tagline, :community, :presence => true
  validates :imageurl, :format => {
  :with    => %r{\.(gif|jpg|png)$}i,
  :message => 'must be a URL for GIF, JPG or PNG image.'
}

end


#tests to add: validate that time is in future, that end time is after start-time,
#validate that title and date are unique when put together