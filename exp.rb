require "benchmark"



Benchmark.bm do |results|

  results.report "recursive:" do
    def gdc(a,b)
      a = a.to_i
      b = b.to_i
      return a if b == 0
      a,b = b, a % b
      gdc(a,b)
    end
  end

  results.report "while:" do
    def gdc_while(a,b)
      a = a.to_i
      b = b.to_i
      while b > 0
        a,b = b, a % b
      end
      a
    end
  end

  results.report "stock:" do
    def gdc_stock(a,b)
      a,b = a.to_i,b.to_i
      a.gcd(b)
    end
  end
end
puts gdc(ARGV[0],ARGV[1])
puts gdc_while(ARGV[0],ARGV[1])
puts gdc_stock(ARGV[0],ARGV[1])
