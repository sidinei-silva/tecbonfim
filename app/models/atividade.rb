class Atividade < ApplicationRecord
  validates :dia_atividade, :hora_atividade, :acontecimento, :tema, :envolvidos, presence: true
end
