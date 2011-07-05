module Enumerable
  alias :m :map
  alias :i :find_index
  def next_nonsec(from)
    nidx = i(from) + 1
    n = self[nidx]
    n && n - from == 1 ? next_nonsec(n) : n
  end
end
class Golf
  class<<self
    def hole1(j)
      j.inject(1,:*)
    end
    
    def hole2(l)
      l.split.sort {|a,b| a[1]<=>b[1]}.join(' ')
    end
    
    def hole3(k)
      hole1(2..k)
    end
    
    def hole4(j)
      j.m{|m| m.sub(/(man.+)/,'hat(\1)')}.
          m{|m| m.sub(/(dog.+)\)/,'\1(bone))')}.
          m{|m| m.sub('cat','dead')}
    end
    
    def hole5(j)
      (1..j.size).m{|n| j.each_cons(n).to_a}.flatten(1)
    end
    
    def hole6(k)0
      (1..k).m{|n| n%15==0 ? 'fizzbuzz' : (n%3==0 ? 'fizz' : (n%5==0 ? 'buzz' : n))}
    end
    
    def hole7(a)
      arr = []
      i = 0
      start = a[i]
      while(b = a.next_nonsec(start))
        puts "found next: #{b}"
        finish = a[a.i(b)-1]
        arr << a.i(start)==a.i(b)+1 ? (start=b) : (start=finish;"#{start}-#{finish}")
      end
      arr << "#{start}-#{a.last}"
    end

    def hole8(k)
      (1..k).m{|n|f(n-1)}
    end
    
    def f(v)
      v < 2 ? 1 : f(v-1) + f(v-2)
    end
  end
end
