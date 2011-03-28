//
//  main.cpp
//  euler23
//
//  Created by William Sullivan on 3/27/11.
//  Copyright 2011 N/A. All rights reserved.
//

#include <iostream>
#include <math.h>
using namespace std;

bool is_abundant(int);
bool is_sum_of_abundant_numbers(int);

int main (int argc, const char * argv[])
{
    int sum = 0;
    
    for (int i=1; i<=28123; i++) {
        if (!is_sum_of_abundant_numbers(i)) {
            cout << i << " is not the sum of two abundant numbers." << endl;
            sum += i;
        }
    }

    cout << "The sum is: " << sum << endl;
    
    return 0;
}

bool is_abundant(int number)
{
    
    if (number < 12)
        return false;
    
    int upper = sqrt(number);    
    int sum_of_factors = 1;
    
    for (int i=2; i<=upper; i++) {
        if (number%i == 0) {
            if ( i == (number/i))
                sum_of_factors += i;
            else
                sum_of_factors = sum_of_factors + i + (number/i);
        }
    }
    
    if (sum_of_factors > number)
        return true;
    else
        return false;
    
}

bool is_sum_of_abundant_numbers(int number)
{
    if (number < 24)
        return false;
    else {
        for (int i=12; i<=(number/2); i++) {
            int other = number - i;
            if (other >= 12) {
                if (is_abundant(i) && is_abundant(other))
                    return true;
            }
        }
        return false;
    }
}