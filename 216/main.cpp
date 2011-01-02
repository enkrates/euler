#include <iostream>
#include <vector>
#include <math.h>
using namespace std;

long contender(long);
bool isPrime(long);

int main (int argc, char * const argv[]) {
	
	vector<long> contenders;
	vector<long>::iterator it;
	vector<long> primes;
	
	for (int i=2; i<50000000; i++) {
		if (i%10000 == 0)
			cout << "Trying " << i << endl;
		long current = contender(i);
		//cout << current << endl;
		if (isPrime(current)) {
			contenders.push_back(current);
		}
	}
	
	for (it=contenders.begin(); it != contenders.end(); it++) {
		cout << *it << endl;
	}
	
	cout << "I've got " << contenders.size() << " primes." << endl;
	
    return 0;
}

long contender(long input)
{
	return (2*(input*input))-1;


}

bool isPrime(long integer)
{
	
	if (integer%2 == 0) {
		return false;
	}
	else {
		long divisor = 3;
		long upperLimit = static_cast<long> (sqrt(integer));
		while (divisor <= upperLimit) {
			if (integer%divisor == 0) {
				return false;
			}
			else {
				divisor+=2;
			}

		}
	}
	
	return true;
	
	
}