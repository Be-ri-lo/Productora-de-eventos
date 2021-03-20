class Crew < ApplicationRecord
  belongs_to :band

  def to_s
    name
  end
end
