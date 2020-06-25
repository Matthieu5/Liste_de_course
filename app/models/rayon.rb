class Rayon < ApplicationRecord
    has_many :item2s
    accepts_nested_attributes_for :item2s, allow_destroy: true
end
