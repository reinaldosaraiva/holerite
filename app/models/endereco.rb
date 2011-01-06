class Endereco < ActiveRecord::Base
  has_one :empresa
  has_one :funcionario
end
