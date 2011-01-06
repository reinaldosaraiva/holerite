class CreateContraCheques < ActiveRecord::Migration
  def self.up
    create_table :contra_cheques do |t|
      t.integer :competencia
      t.float :total_vencimento
      t.float :total_descontos
      t.float :total_liquido_a_receber
      t.integer :funcionario_id

      t.timestamps
    end
  end

  def self.down
    drop_table :contra_cheques
  end
end
