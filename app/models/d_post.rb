class DPost < ApplicationRecord
	mount_uploader :image, S3Uploader
end
