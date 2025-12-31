#include "Cashew.h"
#include <iostream>

bool CheckComp()
{
  if (Cashew::System::CheckCompatability())
  {
    std::cout << "Operating System is Compatable!\n";
    return true;
  }
  std::cout << "Operating System is Compatable!\n";
  return false;
}

int main()
{
  if (CheckComp())
    return 0;
  return -1;
}