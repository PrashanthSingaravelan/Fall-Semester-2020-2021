#include<stdio.h>
#include<conio.h>

void Best_fit(int process_size[],int block_size[],int n,int m)
{
    int i,j,process;
	int diff[n];
    for(i=0;i<n;i++)
    {
        process = process_size[i];  // Pick up a process
        int min=INT_MIN,index=0;    // Finding the least difference
		for(j=0;j<n;j++)
        {
            diff[j] = process_size[j]-process;   // Difference between the process and 
        }
        
        for(j=0;j<n;j++) { if (diff[i]<min) { min=diff[i];index=i;} }
        if(process<block_size[i]) 
        { 
            printf("\nProcess of size %d is allocated to the block size : %d",process,block_size[i]);
        }
    }
}

int main()
{
    int n=5,m=5;
    int process_size[5] = {10,40,20,30,50};
    int block_size[5]   = {15,55,25,43,31};
    Best_fit(process_size,block_size,n,m);  
    return 0;
}
