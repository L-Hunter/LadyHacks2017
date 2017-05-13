class Trial < ApplicationRecord
  belongs_to :attorney

  # validates :name, :date, :classification, :judgment, :ruling, :opinion_link, presence: true
end
