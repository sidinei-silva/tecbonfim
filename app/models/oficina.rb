class Oficina < ApplicationRecord
  validates :titulo, :descricao, :professor, :inicio, :termino, presence: true
  has_many :users
end
