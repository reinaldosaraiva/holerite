class Funcionario < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :endereco
  has_many :contra_cheques
  has_many :vales
end
