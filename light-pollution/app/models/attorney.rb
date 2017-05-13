class Attorney < ApplicationRecord
  has_many :trials

  validates :name, :status, :party, :district,  presence: true

end
