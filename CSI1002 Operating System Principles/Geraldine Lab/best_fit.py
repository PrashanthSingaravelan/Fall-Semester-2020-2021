process_size = [10,40,20,30,50]
buffer_size = [15,55,25,43,31]
diff = []

for i in range(len(process_size)):
    process = process_size[i]
    for j in range(len(buffer_size)):
        if process<buffer_size[j]:
            diff.append(((abs(buffer_size[j]-process)),j))
    minimum_element = min(diff)
    
    print("Process{} of size {} is going into the block {}".format(i+1,process,minimum_element[1]+1))
    diff=[]