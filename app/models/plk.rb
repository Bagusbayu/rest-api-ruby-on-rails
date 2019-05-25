class Plk < ApplicationRecord
	validates :iduser, presence: true
	validates :bb, presence: true
	validates :protein, presence: true
	validates :lemak, presence: true
	validates :kH, presence: true
end
