#include<iostream>
using namespace std;
extern"C" bool isPalindrome(char[]);

int main(){
    char arr[] = "kAyak";
	if (isPalindrome(arr))
		cout << arr << " is palindrome.\n";
	else
		cout << arr << "is not palindrome.\n";
    return 0;
}