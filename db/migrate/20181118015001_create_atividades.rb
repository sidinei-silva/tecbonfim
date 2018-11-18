class CreateAtividades < ActiveRecord::Migration[5.2]
  def change
    create_table :atividades do |t|
      t.date :dia_atividade
      t.time :hora_atividade
      t.string :acontecimento
      t.string :tema
      t.string :envolvidos

      t.timestamps
    end
  end
end
