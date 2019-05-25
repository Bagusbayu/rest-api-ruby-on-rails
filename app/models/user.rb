class User < ApplicationRecord
	validates :tb, presence: true
	validates :bb, presence: true
	validates :jk, presence: true
	validates :umur, presence: true
	validates :fa, presence: true
end
