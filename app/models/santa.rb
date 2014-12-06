class Santa < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :fact1, presence: true
  validates :fact2, presence: true
  validates :fact3, presence: true
  validates :fact4, presence: true
  validates :fact5, presence: true
  belongs_to :party
end
