class CreateLancamentos < ActiveRecord::Migration
  def self.up
    create_table :lancamentos do |t|
      t.string :descricao
      t.float :referencia
      t.string :tipo_lancamento
      t.float :valor
      t.integer :contra_cheque_id

      t.timestamps
    end
  end

  def self.down
    drop_table :lancamentos
  end
end
