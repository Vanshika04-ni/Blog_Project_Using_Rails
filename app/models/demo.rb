class Demo < ApplicationRecord
    has_one_attached :image
    has_many:comments,dependent: :destroy
end
