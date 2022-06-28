a =  [2,20,1,"/a","/c"]
b = [1,"/c/a/","/b","/a",50]
c = 1

#Viết câu lệnh kiểm tra mảng b có chứa c không?
def check_exist_in_arr(array, value)
    return array.include?(value)
end

#Viết hàm lấy ra những phần tử có trong cả 2 mảng.
def get_common_element_arr(array1, array2)
    array1.select {|item| array2.include? item}
end

#Viết hàm lấy ra những phần tử chỉ có trong mảng a mà không có trong mảng b.
def get_element_not_common(array1, array2)
    array1.select {|item| !array2.include? item}
end

p "==============Result:==============="
p check_exist_in_arr(b, c)
p get_common_element_arr(a, b)
p get_element_not_common(a, b)
p "===================================="