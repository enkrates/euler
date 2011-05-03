//  Created by William Sullivan on 4/16/11.
//  Copyright 2011 N/A. All rights reserved.
//

#include <iostream>
#include <math.h>
using namespace std;

// long getNumberOfDigits(int);
// long* getDigits(int);


int main (int argc, const char * argv[])
{
	// long n = 1023456789;
	
	int sizeOfNumbers = 10;
	int numbers[10] = {0,1,2,3,4,5,6,7,8,9};
	
	for(int i = 0; i < sizeOfNumbers; ++i)
	{
		cout << numbers[i] << " ";
	}
	
	// long* digits;
	
	// cout << getNumberOfDigits(n) << " digits in " << n <<endl;
	
	// digits = new long[getNumberOfDigits(n)];
	// 
	// digits = getDigits(n);
	
	// for(int i = 0; i < getNumberOfDigits(n); ++i)
	// {
	// 	cout << digits[i] << endl;
	// }
	
	return 0;
}

// long getNumberOfDigits(int number)
// {
// 	long digits = 0;
// 	
// 	while (number > 0)
// 	{
// 		number = number/10;
// 		digits++;
// 	}
// 	
// 	return digits;
// }
// 
// long* getDigits(int number)
// {
// 	long numberOfDigits = getNumberOfDigits(number);
// 	long *digits;
// 	digits = new long[numberOfDigits];
// 	
// 	for(int i = 0; i < numberOfDigits; ++i)
// 	{
// 		digits[i] = number % 10;
// 		number = number / 10;
// 	}
// 	
// 	return digits;
// }