class Imt < ApplicationRecord
	validates :iduser, presence: true
	validates :et, presence: true
end
