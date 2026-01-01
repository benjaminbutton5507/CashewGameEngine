#pragma once

#include "../Core.h"

namespace Cashew
{

  class CASHEW_API Application
  {
  public:
    Application();
    ~Application();

    void Run();
    void Kill();

  protected:
    void SetService(bool service) { m_InService = service; }
    bool GetService() { return m_InService; }

  private:
    bool m_InService;
  };

}