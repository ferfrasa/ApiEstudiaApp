class Spectator < ApplicationRecord
    has_many :projects
    validates :name_spectator, presence: true , uniqueness: true
    before_save :to_upper
end
