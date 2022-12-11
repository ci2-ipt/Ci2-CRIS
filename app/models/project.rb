class Project < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    Role = ['Opção 1', 'Opção 2', 'Opção 3']
  end
