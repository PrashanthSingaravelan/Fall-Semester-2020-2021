list1 = [1,2,3,4,2,1,5,6,2,1,2,3,7,6,3,2,1,2,3,6]  # pages
list2 = []    # frames

frame_size=3
hit=0
fault=frame_size
cnt=0

for i in range(frame_size):   # Initially adding the pages to the frames
    list2.append(list1[i])
    print("fault {} and {}".format(list1[i],list2))

for i in range(frame_size,len(list1)):
    if list1[i] in list2:
        hit+=1
        print("hit   {} and {}".format(list1[i],list2))
    else:
        fault+=1
        front = cnt%frame_size
        cnt+=1
        list2[front]=list1[i]
        print("fault {} and {}".format(list1[i],list2))
print("Total Hit is {} and Fault is {} ".format(hit,fault))