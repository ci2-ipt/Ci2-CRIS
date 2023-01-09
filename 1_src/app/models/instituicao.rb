class Instituicao < ApplicationRecord
    validates :nome, presence: true
    validates :url, presence: true
    validates :imagem, exclusion: [nil]
    validates :parceiros, presence: true
end
