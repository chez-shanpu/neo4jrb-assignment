class Player
  include Neo4j::ActiveNode
  property :name, type: String
  property :no, type: Int
  has_one :out, :age, type: :age, model_class: :Age
  has_one :out, :annual_income, type: :annual_income, model_class: :AnnualIncome
  has_one :out, :birthday, type: :birthday, model_class: :Birthday
  has_one :out, :birthplace, type: :birthplace, model_class: :Birthplace
  has_one :out, :blood_type, type: :blood_type, model_class: :BloodType
  has_one :out, :body_height, type: :body_height, model_class: :BodyHeight
  has_one :out, :body_weight, type: :body_weight, model_class: :BodyWeight
  has_one :out, :pitching_and_batting, type: :pitching_and_batting, model_class: :PitchingAndBatting
  has_one :out, :position, type: :position, model_class: :Position
  has_one :out, :year, type: :year, model_class: :Year
end
