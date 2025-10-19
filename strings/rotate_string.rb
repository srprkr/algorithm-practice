# @param {String} s
# @param {String} goal
# @return {Boolean}
def rotate_string(s, goal)
    arr = s.split("")
    goal_arr = goal.split("")
    (arr.size).times do
        arr << arr.shift
        return true if arr == goal_arr
    end
    false
end