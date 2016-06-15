# using transpose
rows = ["1,2,3,4,5,6,", "7,8,9,10,11,12", "a,b,c,d,e,f"]
rows.map!{|e| e.split(',')}
p rows.transpose
# output [["1", "7", "a"], ["2", "8", "b"], ["3", "9", "c"], ["4", "10", "d"], ["5", "11", "e"], ["6", "12", "f"]] 
