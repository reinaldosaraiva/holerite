class CreateFuncionarios < ActiveRecord::Migration
  def self.up
    create_table :funcionarios do |t|
      t.string :nome
      t.string :cpf
      t.string :fone
      t.string :cargo
      t.string :banco
      t.string :agencia
      t.string :conta_corrente
      t.integer :endereco_id
      t.integer :empresa_id

      t.timestamps
    end
  end

  def self.down
    drop_table :funcionarios
  end
end
