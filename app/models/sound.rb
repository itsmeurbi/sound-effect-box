class Sound < ApplicationRecord
    has_one_attached :image
    has_one_attached :sound_file

    enum type: %w[happy sad epic fun]
end
