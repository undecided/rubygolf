class Golf
  class<<self
    def hole1 j
      j.inject 1,:*
    end
    
    def hole2 l
      l.split.sort {|a,b| a[1]<=>b[1]}.join ' '
    end
    
    def hole3 k
      hole1 2..k
    end
    
    def hole4 j
      j.map{|m| m.sub /(ma.+)/,'hat(\1)' }.
          map{|m| m.sub /(do.+)\)/,'\1(bone))' }.
          map{|m| m.sub 'cat','dead' }
    end
    
    def hole5 j
      (1..j.size).map{|n| j.each_cons(n).to_a}.flatten(1)
    end
    
    def hole6 k
      (1..k).map{|n| n%15==0 ? 'fizzbuzz' : n%3==0 ? 'fizz' : n%5==0 ? 'buzz' : n}
    end
    
    def hole7 c
      d = []
      c.map { |n| d[0] && d.last.last == n - 1 ? d.last << n : d << [n] }
      d.map { |n| n.size > 1 ? "#{n[0]}-#{n.last}" : n.to_s}
    end

    def hole8 k
      (0..k-1).map{|n|f n }
    end
    
    def f v
      v < 2 ? 1 : f(v-1) + f(v-2)
    end
  end
end
