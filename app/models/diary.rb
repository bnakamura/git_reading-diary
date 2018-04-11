class Diary < ActiveRecord::Base
  belongs_to :user
  belongs_to :genre
  has_attached_file :book_image,
                     styles:  { medium: "300x300#", thumb: "100x100#" }
  validates_attachment_content_type :book_image,
                     content_type: ["image/jpg","image/jpeg","image/png"]
end
