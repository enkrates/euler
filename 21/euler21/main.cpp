#include <iostream>
#include <math.h>

#include <algorithm>
#include <numeric>
#include <vector>
using namespace std;

int sumOfProperDivisors(int);

int main (int argc, char * const argv[]) {
	
	int first = 0;
	int second = 0;
	int sum = 0;
    
	vector<int> amicableNumbers;
	
	for (int i=1; i<=10000; i++) {
		first = sumOfProperDivisors(i);
		if (first != i) {
			second = sumOfProperDivisors(first);
			if (second == i) {
				amicableNumbers.push_back(first);
				amicableNumbers.push_back(second);
			}
		}
	}
	
	sum = accumulate( amicableNumbers.begin(), amicableNumbers.end(), 0 );
	
	cout << sum/2;
    return 0;
}

int sumOfProperDivisors(int number)
{
	int sum = 1;
	for (int i=2; i<sqrt(number); i++) {
		if (number % i == 0) {
			sum += i;
			sum += (number/i);
		}
	}
	return sum;

}