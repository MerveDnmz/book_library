class Book < ApplicationRecord
  	belongs_to :user
  	has_many :reviews

	has_attached_file :image, styles: { medium: "400x600#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

    def self.search(search)
    	if search
    		where(["name LIKE ?","%#{search}%"])
    	else
    		all 
    	end
    end
end
