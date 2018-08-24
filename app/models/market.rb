class Market < ApplicationRecord
    mount_uploader :image, S3Uploader
    
    validates_presence_of :title, :content
    searchable do
        text :title
    end
end
