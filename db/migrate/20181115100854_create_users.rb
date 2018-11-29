class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :cpf, unique: true
      t.string :nome
      t.string :instituicao
      t.string :campus
      t.string :presenca_oficina
      t.references :oficina, foreign_key: true

      t.timestamps
    end
  end
end
