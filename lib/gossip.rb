require 'pry'
require 'csv'
class Gossip
  
  attr_accessor :content , :author
  def initialize(gossip_author,gossip_content)
  
    @author = gossip_author
    @content = gossip_content
  
end

def save
  CSV.open("/home/pierre/Desktop/Gossipserv/db/gossip.csv", "ab") do |csv|
    csv << [@author, @content]
  end
end

def self.all
  all_gossips = [] #on initialise un array vide

  CSV.read("/home/pierre/Desktop/Gossipserv/db/gossip.csv").each do |ligne|
    all_gossips << Gossip.new(ligne[1], ligne[0])
  
  end
  
  return all_gossips #on retourne un array rempli d'objets Gossip
end
def self.find(id)
    find_it =CSV.readlines("/home/pierre/Desktop/Gossipserv/db/gossip.csv")[id]
  
return find_it
  
end
def self.update(id)
   
  test = CSV.read("/home/pierre/Desktop/Gossipserv/db/gossip.csv").each.with_index do |author, content|
   
  
     #puts test
     #test.delete_at(0)
     #puts test
   end
end


end




