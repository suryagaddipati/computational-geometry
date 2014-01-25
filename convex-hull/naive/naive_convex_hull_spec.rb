require_relative 'naive_convex_hull'
describe "convex hull" do
  it "should calculate convex hull" do 
    input= [[1, 1], [1.5, 2.5], [3, 3], [1, 3]]
    expected_output = [[3, 3], [1, 3], [1, 1]]
    convex_hull(input).should eq(expected_output)
  end
  it "should calculate pairs" do 
    input = [1,2,3]
    pairs(input).should eq([[1,2],[1,3],[2,3]])
  end
end
