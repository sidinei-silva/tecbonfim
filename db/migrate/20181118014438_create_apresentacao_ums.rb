class CreateApresentacaoUms < ActiveRecord::Migration[5.2]
  def change
    create_table :apresentacao_ums do |t|
      t.text :descricao

      t.timestamps
    end
  end
end
