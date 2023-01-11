class Employee < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, inclusion: {in: 40..200}
  belongs_to :store
  validates_associated: store #validates record is associated to store
end
