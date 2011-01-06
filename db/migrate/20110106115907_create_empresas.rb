class CreateEmpresas < ActiveRecord::Migration
  def self.up
    create_table :empresas do |t|
      t.string :razao_social
      t.string :cnpj
      t.string :nome_fantasia
      t.string :logo
      t.integer :endereco_id
      t.timestamps
    end
  end

  def self.down
    drop_table :empresas
  end
end
