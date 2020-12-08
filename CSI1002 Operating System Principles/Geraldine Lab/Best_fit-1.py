def best_fit(list1,list2):
    list_comp = []
    sample_minimum = []
    actual_minimum = []

    for i in list2:
        process = i
        for j in range(len(list1)):
            list_comp.append(((list1[j]-process),j))
            sample_minimum = [(m,n) for m,n in list_comp if m>0]
        if sample_minimum : 
            actual_minimum = min(sample_minimum)
            list1[actual_minimum[1]] = actual_minimum[0]
        else:
            print("Process of size of {} is not inserted".format(i))
        print('The block size after every process goes into : ',list1)
        list_comp = []

list1 = list(map(int,input('Enter the block size   : ').strip().split()))
list2 = list(map(int,input('Enter the process size : ').strip().split()))
#list1 = [5,3,2]
#list2 = [2,1,4]
best_fit(list1,list2)