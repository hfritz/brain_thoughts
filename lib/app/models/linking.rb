class Linking < ActiveRecord::Base

  # === List of columns ===
  #   id         : integer 
  #   link_id    : string 
  #   thought_id : string 
  # =======================

  belongs_to :link
  belongs_to :thought
end
