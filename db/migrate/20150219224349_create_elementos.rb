class CreateElementos < ActiveRecord::Migration
  def change
    create_table :elementos do |t|
      t.string :alcunha

      t.timestamps
    end
  end
end
