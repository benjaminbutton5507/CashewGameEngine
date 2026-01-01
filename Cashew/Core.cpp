#include "Core.h"
#include <iostream>

#ifdef CASHEW_PLATFORM_WINDOWS
namespace Cashew
{
  namespace System
  {
    bool CheckCompatability()
    {
      if (strcmp(OperatingSystem, "Win32"))
        return true;
      return false;
    }
  }
}
#elif CASHEW_PLATORM_LINUX
namespace Cashew
{
  namespace System
  {
    bool CheckCompatability()
    {
      if (strcmp(OperatingSystem, "Linux"))
        return true;
      return false;
    }
  }
}
#elif CASHEW_PLATORM_MAC
namespace Cashew
{
  namespace System
  {
    bool CheckCompatability()
    {
      if (strcmp(OperatingSystem, "Mac"))
        return true;
      return false;
    }
  }
}
#endif