#include <iostream>
using namespace std;

//Developer: Hill, Theodis
//Date: 12/13/2024
// Title: Calculator.cpp
// This code is used to produce answers to basic addition, multiplication, division and subtraction. It only uses logic
// addition and subtraction to accomplish this goal. There are a lot of funny errors you can find. Please feel free 
// to explore.

double EasyAddition(int a, int b) // this function should output simple addition.
{
    if( a < b)
    {
      cout<< "ERROR: please enter an 'a' value that is larger than 'b'"<< endl; //added error warnings and explanations
      // all functions will initially check for errors in input in a similar way
       return NULL; 
    }
    if (a < 0 || b < 0)
    {
      cout << "ERROR: please enter a positive number for both 'a' AND 'b'" << endl;
       return NULL; 
    }
    else
    {
     return a + b;
    }
}



double EasySubtraction(int a, int b)
{
    if( a < b)
    {
      cout<< "ERROR: please enter an 'a' value that is larger than 'b'"<< endl;
       return NULL; 
    }
  if (a < 0 || b < 0)
    {
      cout << "ERROR: please enter a positive number for both 'a' AND 'b'" << endl;
       return NULL; 
    }
    else
    {
     return a- b;
    }
  }


double EasyMultiplication(int a, int b) //it's only doing powers of b as of now. Fixing
{
   if( a < b)
    {
      cout<< "ERROR: please enter an 'a' value that is larger than 'b'"<< endl;
      return NULL; // chose NULL because of a show I watched Everything else I used still returned 0 or gave an error.
    }
 if (a < 0 || b < 0)
    {
      cout << "ERROR: please enter a positive number for both 'a' AND 'b'"<< endl;
      return NULL;
    }
   else
   {  
      int function = 0;
    for ( int i = 0; i < abs(b); i++)
      {
       function += a;
      }
      return function;
    }
  }
  
  double EasyDivision(int a, int b) // still figuring out division and a/0
  {
     if (b == 0)
    {
      cout << "MAJOR ERROR: Please do not divide by zero! It could summon AJLFJJ:NGJCECON)#(URJI)RJFN!!!!"<<endl;
      return NULL;
    }
    
     if(a < b)
    {
      cout<< "ERROR: Enter an 'a' value that is larger than 'b'"<< endl;
       return NULL; 
    }
   
  if (a < 0 || b < 0)
    {
      
      cout << "ERROR: Enter a positive number for both 'a' AND 'b'" << endl;
       return NULL; 
    }
  
   else
   {  
      int fighter = abs(a);
      int grabber = abs(b);
      int function = 0;
      int muhummad = 0;
      
    while ( fighter >= grabber) 
    {
      fighter = fighter - abs(b);
      function++;
    }
    
    fighter = fighter * 100;
    
    while ( fighter >= grabber)
    {
    fighter = fighter - abs(b);
    muhummad++;
    }
    
    function = function + muhummad/100;
    
      return function;
    
  }
}
  
int main ()
{
int a, b;
char sign;

cout << "Please enter a problem to solve using +, -, /, or *. " << "Example: '5 + 2' "<< endl;
cout <<"(WARNING: 'a' must be greater than 'b') " << endl;
cout << "(DOUBLE WARNING: Please ensure that all numbers are poisitive)" << endl;
// thought the warnings would be funny and easy for users to catch
cin >> a >> sign >> b;

cout<< endl;

    switch (sign)
      {
        case '+':
          cout << "The result of the addition is... " << EasyAddition(a, b) <<"!"  <<endl;
          break;
        case '-':
          cout << "The result of the subtraction is... " << EasySubtraction(a, b) <<"!" << endl;
          break;
        case '*':
          cout << "The result of the multiplication is... " << EasyMultiplication(a, b) <<"!" << endl;
          break;
        case '/':
          cout << "The result of the division is... " << EasyAddition(a, b) <<"!" << endl;
         break;
        default:
        cout << "WARNING: Please use one of the operators listed above." <<endl;//just in case no/the wrong operator was used
      }
  return 0;
}
  
  