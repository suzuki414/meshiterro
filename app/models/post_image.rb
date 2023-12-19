class PostImage < ApplicationRecord
  
  has_one_attached :image
  belomg_to :user
end
