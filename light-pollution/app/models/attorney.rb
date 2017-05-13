class Attorney < ApplicationRecord
  has_many :trials

  validates :name, :status, :district,  presence: true

end
