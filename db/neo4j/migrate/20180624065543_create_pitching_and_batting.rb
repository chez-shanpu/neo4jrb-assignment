class CreatePitchingAndBatting < Neo4j::Migrations::Base
  def up
    add_constraint :PitchingAndBatting, :uuid
  end

  def down
    drop_constraint :PitchingAndBatting, :uuid
  end
end
