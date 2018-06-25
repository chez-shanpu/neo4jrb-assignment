class CreateAnnualIncome < Neo4j::Migrations::Base
  def up
    add_constraint :AnnualIncome, :uuid
  end

  def down
    drop_constraint :AnnualIncome, :uuid
  end
end
