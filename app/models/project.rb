class Project < ActiveRecord::Base
  belongs_to :user
  has_many :requirement_specifications,:dependent =>:destroy
  has_many :test_specifications,:dependent =>:destroy
  has_many :test_plans,:dependent =>:destroy
end
