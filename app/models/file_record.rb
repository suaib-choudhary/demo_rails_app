class FileRecord < ApplicationRecord
    belongs_to :user
    has_one_attached :file
    #validates :file, content_type: ["image/png", "image/jpeg"] #content_type: %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)
end
