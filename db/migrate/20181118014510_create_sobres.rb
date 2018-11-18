class CreateSobres < ActiveRecord::Migration[5.2]
  def change
    create_table :sobres do |t|
      t.text :descricao

      t.timestamps
    end
  end
end
