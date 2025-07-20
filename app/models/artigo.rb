class Artigo < ApplicationRecord
    validates :titulo, presence: true, length: { minimum: 10, maximum: 50 }
    validates :descricao, presence: true, length: { minimum: 50, maximum: 2000 }
end
