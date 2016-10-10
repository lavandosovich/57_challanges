def fibo_n(m,n)
  arr = []
  arr[0] = 1
  arr[1] = 1
  for i in 2..n
    arr[i] =  arr[i-1]+arr[i-2]
  end
  arr[(m-1)...n].inject(:+) % 10
end


puts fibo_n(ARGV[0].to_i,ARGV[1].to_i)
