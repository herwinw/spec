require_relative '../../spec_helper'
require_relative '../integer/shared/integer_floor_precision'

describe "Float#floor" do
  context "with precision" do
    it_behaves_like :integer_floor_precision, :Float
  end

  it "returns the largest Integer less than or equal to self" do
    -1.2.floor.should eql( -2)
    -1.0.floor.should eql( -1)
    0.0.floor.should  eql( 0 )
    1.0.floor.should  eql( 1 )
    5.9.floor.should  eql( 5 )
    -9223372036854775808.1.floor.should eql(-9223372036854775808)
    +9223372036854775808.1.floor.should eql(+9223372036854775808)
  end

  it "returns the largest number less than or equal to self with an optionally given precision" do
    2.1679.floor(0).should   eql(2)
    214.94.floor(-1).should  eql(210)
    7.0.floor(1).should      eql(7.0)
    -1.234.floor(2).should   eql(-1.24)
    5.123812.floor(4).should eql(5.1238)
  end
end
