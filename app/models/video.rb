class Video < ActiveRecord::Base
  has_attached_file :video, styles: {thumb: ["150x200#", :png]}
  validates_attachment_content_type :video, content_type: /\Avideo/
  validates_attachment_presence :video
  validates :latitude, numericality: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90 }
  validates :longitude, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
end
