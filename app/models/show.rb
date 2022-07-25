class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  belongs_to :network

  def actors_list
    narr = []
    self.actors.all.each do |act|
        narr << act.full_name
        end
        narr
    end
end