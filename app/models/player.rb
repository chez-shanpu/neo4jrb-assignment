class Player
  include Neo4j::ActiveNode
  property :name, type: String
  property :no, type: Integer
  has_one :out, :age, type: :age, model_class: :Age,dependent: :destroy_orphans
  has_one :out, :annual_income, type: :annual_income, model_class: :AnnualIncome,dependent: :destroy_orphans
  has_one :out, :birthday, type: :birthday, model_class: :Birthday,dependent: :destroy_orphans
  has_one :out, :birthplace, type: :birthplace, model_class: :Birthplace,dependent: :destroy_orphans
  has_one :out, :blood_type, type: :blood_type, model_class: :BloodType,dependent: :destroy_orphans
  has_one :out, :body_height, type: :body_height, model_class: :BodyHeight,dependent: :destroy_orphans
  has_one :out, :body_weight, type: :body_weight, model_class: :BodyWeight,dependent: :destroy_orphans
  has_one :out, :pitching_and_batting, type: :pitching_and_batting, model_class: :PitchingAndBatting,dependent: :destroy_orphans
  has_one :out, :position, type: :position, model_class: :Position,dependent: :destroy_orphans
  has_one :out, :year, type: :year, model_class: :Year,dependent: :destroy_orphans
end
