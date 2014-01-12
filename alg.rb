#bubble sort
def bubble_sort(list)
  list.each_index do |i|
    (list.length - i - 1).times do |job|
      if list[job]  > list[job + 1]
        list[job], list[job + 1] = list[job + 1], list[job]
      end
    end
  end
end

list = [22,43,5,1,76, 8, 4, 32, 11, 10]
p list
p bubble_sort(list)
