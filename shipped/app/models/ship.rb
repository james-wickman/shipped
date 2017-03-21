class Ship < ApplicationRecord
	belongs_to :user
	has_many :ship_jobs, dependent: :destroy
	has_many :jobs, :through => :ship_jobs
	validates :name, uniqueness: true, presence: true
	validates :containers_possible, presence: true, numericality: true
	validates_inclusion_of :location, :in => ['California', 'Florida', 'Texas', 'Toronto', 'Cancun', 'Barcelona'] 
	
	has_attached_file :boat_photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :boat_photo, content_type: /\Aimage\/.*\z/
end
