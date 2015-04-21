class Event < ActiveRecord::Base

	validates :name, uniqueness: true, presence: true, length: { maximum: 50 }

	validates :description, presence: true, length: { maximum: 500,
    too_long: "%{count} characters is the maximum allowed" }

  validates :address, presence: true, length: { maximum: 50 }

  validates :time, :date, presence: true

  has_attached_file :image, :styles => { :medium => "300x300>", 
  	:thumb => "100x100>" }, 
  	:default_url => "/images/:style/missing.png"

  validates_attachment_content_type :image, :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
  
  def days_left
  	start_date = today()
    end_date = event_date
  end
end
