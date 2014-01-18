require 'matrix'
def is_left(p,q,r)
  Matrix[[1,p[0],p[1]], [1,q[0],q[1]],[1,r[0],r[1]]].determinant < 0
end

def pairs(input)
  return [] if(input.size ==1 ) 
    input[1,input.size-1].inject([]){|pairs,q| pairs << [input[0],q];  pairs} + pairs(input[1,input.size-1])
end

def convex_hull(input)
  ch = []
  pairs(input).each{|p,q| ch << [p,q] if input.inject(true){|is_left,r| is_left(p,q,r) &&  is_left}}
  
  ch
end
