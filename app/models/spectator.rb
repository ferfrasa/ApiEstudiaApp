class Spectator < ApplicationRecord
    has_many :projects
    validates :name_spectator, presence: true 
end
