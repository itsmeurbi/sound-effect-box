class Sound < ApplicationRecord
    has_one_attached :image
    has_one_attached :sound_file

    enum sound_type: %w[happy sad epic fun]

    validates_presence_of :image, :sound_type, :sound_file
end
