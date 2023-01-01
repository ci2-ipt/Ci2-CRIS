class Instituicao < ApplicationRecord
    validates :nome, presence: true
end
