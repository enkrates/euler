// http://projecteuler.net/index.php?section=problems&id=12

#include <iostream>

using namespace std;

int factors(int);

int main()
{
	
	//cout << factors(500);
	
	int howManyFactors = 500;
	
	int current_leader_number_of_factors = 0;
	int current_leader_triangle_number = 0;
	int current_number_of_factors = 0;
    
	int current_natural_number = 1;
	int number_to_add_to_current_triangle_number = 2;
	
	while (current_leader_number_of_factors <= howManyFactors)
	{
		//cout << current_natural_number << endl;
		
		if(current_natural_number % 1000000 == 0)
		{
			cout << current_natural_number << endl;
		}
		
		current_number_of_factors = factors(current_natural_number);
		
		if (current_number_of_factors > current_leader_number_of_factors)
		{
			current_leader_number_of_factors = current_number_of_factors;
			current_leader_triangle_number   = current_natural_number;
			cout << current_natural_number << " has " << current_number_of_factors << endl;
    	}

		current_natural_number += number_to_add_to_current_triangle_number;
		
		number_to_add_to_current_triangle_number += 1;
		
	}
	
	cout << current_leader_triangle_number << endl;
	
	return 0;
}

int factors(int number)
{
	int factors = 2;	
	double half = number/2.0;
	
	for(int i=2; i <= half; ++i)
	{
		if(number % i == 0)
		{
			//cout << i << endl;
			factors++;
		}
	}
	
	return factors;
	
}