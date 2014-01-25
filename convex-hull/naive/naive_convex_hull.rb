require 'matrix'
def det(p,q,r)
   Matrix[[1,p[0],p[1]], [1,q[0],q[1]],[1,r[0],r[1]]].determinant 
end

def pairs(input)
  return [] if(input.size ==1 ) 
    input[1,input.size-1].inject([]){|pairs,q| pairs << [input[0],q];  pairs} + pairs(input[1,input.size-1])
end
#is edge of all other points are on the half plane
def is_edge(p,q,input)
    prev = nil
   input.each do |r| 
     det = det(p,q,r)
     next if det == 0
     next_value = (det < 0)
     return false if next_value != prev && prev !=nil
     prev = next_value
   end
  return true
end

def convex_hull(input)
  pairs(input).inject([]) do |ch,(p,q)|
    ch << [p,q] if is_edge(p,q,input)
    ch
  end.flatten(1).uniq.sort.reverse
end
