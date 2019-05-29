def dirReduc(arr)
  c = 0
  until c == arr.length || arr.length == 1
    if arr[c] == "NORTH" && arr[c+1] == "SOUTH"
      arr.delete_at(c); arr.delete_at(c); c=0
    elsif arr[c] == "EAST" && arr[c+1] == "WEST"
      arr.delete_at(c); arr.delete_at(c); c=0
    elsif arr[c] == "SOUTH" && arr[c+1] == "NORTH"
      arr.delete_at(c); arr.delete_at(c); c=0
    elsif arr[c] == "WEST" && arr[c+1] == "EAST"
      arr.delete_at(c); arr.delete_at(c); c=0
    elsif arr[c+1] == "NORTH" && arr[c+2] == "SOUTH"
      arr.delete_at(c+1); arr.delete_at(c+1); c=0
    elsif arr[c+1] == "EAST" && arr[c+2] == "WEST"
      arr.delete_at(c+1); p c; arr.delete_at(c+1); c=0
    elsif arr[c+1] == "SOUTH" && arr[c+2] == "NORTH"
      arr.delete_at(c+1); arr.delete_at(c+1); c=0
    elsif arr[c+1] == "WEST" && arr[c+2] == "EAST"
      arr.delete_at(c+1); arr.delete_at(c+1); c=0
    else
    c+=1
    end
  end
  arr
end