class Empresa < ActiveRecord::Base
  has_many :funcionarios
  belongs_to :endereco
end
