class CreateOficinas < ActiveRecord::Migration[5.2]
  def change
    create_table :oficinas do |t|
      t.string :titulo
      t.string :descricao
      t.string :professor
      t.time :inicio
      t.time :termino

      t.timestamps
    end
  end
end
