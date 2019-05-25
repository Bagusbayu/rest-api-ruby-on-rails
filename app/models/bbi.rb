class Bbi < ApplicationRecord
	validates :iduser, presence: true
	validates :bbi, presence: true
	validates :imt, presence: true
	validates :bmr, presence: true
	validates :fa, presence: true
end
