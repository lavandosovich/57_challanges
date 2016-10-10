require "benchmark"
require "ruby-prof"

arr1 = []
arr2 = []
arr3 = []
list = []

def random_arr(arr)
  1000000.times do |i|
    arr<< rand(1000000)
  end

end

random_arr(arr1)
random_arr(arr2)
random_arr(arr3)
random_arr(list)
RubyProf.start

Benchmark.bm do |bm|
#  bm.report("budble:") do
#
#    for i in 0..(arr1.size-2) do
#      for j in (i+1)..(arr1.size-1) do
#        if arr1[i] > arr1[j]
#          temp =  arr1[j]
#          arr1[j] = arr1[i]
#          arr1[i] = temp
#        end
#      end
#    end
#
#  end
#
#  bm.report("insertion:") do
#    for i in 0..(arr2.size-1)
#      j=i
#      done = false
#      while j > 0 && !done
#        if arr2[j] < arr2[j-1]
#          temp = arr2[j-1]
#          arr2[j-1] = arr2[j]
#          arr2[j] = temp
#        else
#          done = true
#        end
#        j = j-1
#      end
#    end
#
#  end
#
  bm.report("Ruby-sort: ") do
    arr3.sort!

  end

  bm.report "Merge sort:" do
    def mergesort(list )
      return list if list.size <= 1
      mid   = list.size / 2
      left  = list[0, mid]
      right = list[mid, list.size]
      merge(mergesort(left), mergesort(right))
    end

    def merge(left, right)
      sorted = []
      until left.empty? || right.empty?
        if left.first <= right.first
          sorted << left.shift
        else
          sorted << right.shift
        end
      end
      sorted.concat(left).concat(right)

    end
  end

end
result = RubyProf.stop

printer = RubyProf::FlatPrinter.new(result)
printer.print(STDOUT)
