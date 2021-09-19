class Sound < ApplicationRecord
    has_one_attached :image
    has_one_attached :attachment
end
