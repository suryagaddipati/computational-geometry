require_relative 'naive_convex_hull'
describe "convex hull" do
  it "should calculate convex hull" do 
    input= [[1, 1], [2, 2], [3, 3], [1, 3]]
    expected_output = [[3, 3], [1, 3], [1, 1]]
    convex_hull(input).should eq(expected_output)
  end
end
