class CreateVales < ActiveRecord::Migration
  def self.up
    create_table :vales do |t|
      t.integer :funcionario_id
      t.date :data
      t.float :valor
      t.string :observacao

      t.timestamps
    end
  end

  def self.down
    drop_table :vales
  end
end
