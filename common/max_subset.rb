


def DP_solve(array)
    max, head, tail = 0, 0, 0
    cur_head = 0
    sum = [ [0, array[0]].max ] # base case
    (1...array.length).each do |number|
        sum[number] = [0, sum[number-1] + array[number]].max # bottom-up
        cur_head = number if sum[number-1] == 0 and sum[number] > 0
        if sum[number] > max
            head = cur_head
            tail = number
            max = sum[number]
        end
    end
    return max, head, tail
end

p DP_solve([5,8,-2,4,-5,2,6,-7,2])
