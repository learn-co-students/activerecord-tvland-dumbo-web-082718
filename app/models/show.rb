class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(call_letters)
    new_network = Network.create(call_letters)
    # self.network = new_network # belongs to
    #or -> both work
    new_network.shows << self # has many
  end
end

# def build_show(show_name)
#   new_show = Show.create(show_name)
#   self.show = new_show
# end
