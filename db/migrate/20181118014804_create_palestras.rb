class CreatePalestras < ActiveRecord::Migration[5.2]
  def change
    create_table :palestras do |t|
      t.string :palestrante
      t.string :email_palestrante
      t.string :titulo_palestra
      t.text :desc_palestra
      t.date :dia_palestra
      t.time :hora_palestra

      t.timestamps
    end
  end
end
