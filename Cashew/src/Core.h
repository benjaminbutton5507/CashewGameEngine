#pragma once

#ifdef CASHEW_PLATFORM_WINDOWS
#ifdef CASHEW_EXPORTS
#define CASHEW_API __declspec(dllexport)
#else
#define CASHEW_API __declspec(dllimport)
#endif
namespace Cashew
{
  namespace System
  {
    constexpr bool Start = true;
    constexpr const char *OperatingSystem = "Win32";

    bool CASHEW_API CheckCompatability();
  }
}
#include "Windows/WindowsExternals.h"
#elif CASHEW_PLATORM_LINUX
#ifdef CASHEW_EXPORTS
#define CASHEW_API __declspec(dllexport)
#else
#define CASHEW_API __declspec(dllimport)
#endif
namespace Cashew
{
  namespace System
  {
    constexpr bool Start = false;
    constexpr const char *OperatingSystem = "Linux";

    bool CASHEW_API CheckCompatability();
  }
}
#elif CASHEW_PLATORM_MAC
#ifdef CASHEW_EXPORTS
#define CASHEW_API __declspec(dllexport)
#else
#define CASHEW_API __declspec(dllimport)
#endif
namespace Cashew
{
  namespace System
  {
    constexpr bool Start = false;
    constexpr const char *OperatingSystem = "Mac";

    bool CASHEW_API CheckCompatability();
  }
}
#endif