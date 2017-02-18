class Job < ApplicationRecord
  belongs_to :user
  has_many :ship_jobs, dependent: :destroy
  has_many :ships, :through => :ship_jobs
  validates :description, length: {in: 50..200}
  validates :cost, numericality: { greater_than: 1000 }
end

