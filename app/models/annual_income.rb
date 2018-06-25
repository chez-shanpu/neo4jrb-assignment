class AnnualIncome 
  include Neo4j::ActiveNode
  property :amount, type: String
  has_many :in, :players, type: :annual_income, model_class: :Player
end
