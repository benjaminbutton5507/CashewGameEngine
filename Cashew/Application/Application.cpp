#include "Application.h"
#include <iostream>

namespace Cashew
{

  Application::Application()
  {
    if (System::CheckCompatability())
    {
      std::cout << "Operating System is Compatable!\n";
      SetService(true);
    }
    else
    {
      std::cout << "Operating System is not Compatable!\n";
      SetService(false);
    }
  }

  Application::~Application()
  {
    Kill();
  }

  void Application::Run()
  {
    if (!GetService())
      return;

    while (1)
    {
    }
  }

  void Application::Kill()
  {
    SetService(false);
  }

}He