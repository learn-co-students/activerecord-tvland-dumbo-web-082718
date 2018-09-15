require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
"#{first_name} #{last_name}"
  end

  def list_roles
    x = "#{self.characters[0].name} - #{self.shows[0].name}"
    #binding.pry
    # "#{character_name} - #{show_name}"
  end


end
