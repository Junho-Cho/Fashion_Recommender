class Stylejg < ApplicationRecord
    mount_uploader :image, S3Uploader
    
    belongs_to :user, optional: true
    has_many :rates
    has_many :rated_users, through: :rates, source: :user
end
