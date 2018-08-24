class User < ApplicationRecord
  belongs_to :stylejgs
  has_many :rates
  has_many :rated_stylejgs, through: :rates, source: :stylejg
  
  def is_rate? (stylejg)
    Rate.find_by(user_id: self.id, stylejg_id: stylejg.id).present?
  end
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
