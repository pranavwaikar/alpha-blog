class Article < ActiveRecord::Base
  # To inforce data integrity & prevent nil entries - use validations
  # use length to keep restrain on length of data.
  validates :title, presence:true, length: {minimum:3 , maximum:50}
  validates :description , presence:true,length: {minimum:7 , maximum:80}
end