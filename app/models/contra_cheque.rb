class ContraCheque < ActiveRecord::Base
  has_many :lancamentos
  belongs_to :funcionario
end
