// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
// 
// Find the sum of all the primes below two million.
// 
// http://projecteuler.net/index.php?section=problems&id=10

int main (int argc, char const *argv[])
{
	int i, j, sum_of_primes, counter;
	
	sum_of_primes = 0;
	
	
	for(i = 2; i < 2000000; ++i) // 2,000,000
		{
			counter = 0;
			
			for(j = 2; j < i; ++j)
			{
				if ((i % j) == 0){
					counter++;   
				};
			}
			
			if (counter == 0){
				sum_of_primes = sum_of_primes + i; 
				printf("%d\n", i);  
    		}
			
			
		}
		
		printf("The sum is %d", sum_of_primes);
		
		
	return 0;
}