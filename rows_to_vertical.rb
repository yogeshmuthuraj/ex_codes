#converts the rows to vertical columns
#array.transpose ???
rows = ["1,2,3,4,5,6,", "7,8,9,10,11,12", "a,b,c,d,e,f"]
each_row_split = []
temp_array = []
final = []
(rows[0].size/rows.size).times do |j|
    (rows.size).times do |i|
        each_row_split = rows[i].split(',')
        temp_array << each_row_split[j]
    end
    final[j] = temp_array
    temp_array = []
end
p final
