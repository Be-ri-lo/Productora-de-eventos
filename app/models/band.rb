class Band < ApplicationRecord
    has_many :concerts, dependent: :destroy
    has_many :crews, dependent: :destroy

    accepts_nested_attributes_for :crews

    enum band_sort: [:band, :soloist]

    def to_s
        name
    end
end

