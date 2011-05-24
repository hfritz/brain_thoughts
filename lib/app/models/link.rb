class Link < ActiveRecord::Base

  # === List of columns ===
  #   id         : string 
  #   idA        : string 
  #   idB        : string 
  #   dir        : integer 
  #   created_at : datetime 
  #   updated_at : datetime 
  # =======================

  has_many :linkings
  has_many :thoughts, :through => :linkings
  
  def self.parse_xml
    
  end
end
