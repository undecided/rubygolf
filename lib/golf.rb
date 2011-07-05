class Golf
  class << self
    def hole1(arr)
      arr.inject(1,:*)
    end
    
    def hole2(str)
      str.split.sort {|a,b| a[1]<=>b[1]}.join(' ')
    end
    
    def hole3(num)
      (2..num).inject(1,:*)
    end
    
    def hole4(arr)
      arr.map{|m| m.sub(/(man.+)/,'hat(\1)')}.
          map{|m| m.sub(/(dog.+)\)/,'\1(bone))')}.
          map{|m| m.sub('cat','dead')}
          
    end
    
    def hole5(arr)
      (1..arr.size).map{|n| arr.each_cons(n).to_a}.flatten(1)
    end
    
    def hole6(num)0
      (1..num).map{|n| n%15==0 ? 'fizzbuzz' : (n%3==0 ? 'fizz' : (n%5==0 ? 'buzz' : n))}
    end

    def hole8(num)
      (1..num).map{|n|fib(n-1)}
    end
    
    def fib(num)
      num < 2 ? 1 : fib(num-1) + fib(num-2)
    end
  end
end
