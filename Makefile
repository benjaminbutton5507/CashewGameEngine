########################## CXX
CXX = C:\\msys64\\ucrt64\\bin\\g++.exe
##########################

########################## MACROS
CASHEW_PLATFORM_WINDOWS = -DCASHEW_PLATFORM_WINDOWS
CASHEW_PLATFORM_LINUX = -DCASHEW_PLATFORM_LINUX
CASHEW_PLATFORM_MAC = -DCASHEW_PLATFORM_MAC

CASHEW_EXPORTS = -DCASHEW_EXPORTS
##########################

########################## FLAGS
X64 = -m64
X86 = -m86
CXX_FLAGS = -c
dll_FLAGS = -shared
RELEASE_FLAGS = -O2
DEBUG_FLAGS = -g -O0
##########################

########################## dir
RELEASE_x64 = Build/Release/x64
RELEASElib_x64 = Build/Release/x64/lib
RELEASEobj_x64 = Build/Release/x64/obj
DEBUG_x64 = Build/Debug/x64
DEBUGlib_x64 = Build/Debug/x64/lib
DEBUGobj_x64 = Build/Debug/x64/obj

RELEASE_x86 = Build/Release/x86
RELEASElib_x86 = Build/Release/x86/lib
RELEASEobj_x86 = Build/Release/x86/obj
DEBUG_x86 = Build/Debug/x86
DEBUGlib_x86 = Build/Debug/x86/lib
DEBUGobj_x86 = Build/Debug/x86/obj

CASHEW = Cashew
CASHEW_APPLICATION = Cashew/Application
##########################

########################## Building
Release_x64_Win32_Sandbox: Release_x64_Win32_Cashew_dll

Debug_x64_Win32_Sandbox: Debug_x64_Win32_Cashew_dll

Release_x64_Win32_Cashew_dll:
	$(CXX) $(RELEASE_FLAGS) $(CXX_FLAGS) $(CASHEW)/Core.cpp -o $(RELEASEobj_x64)/Core.o
	$(CXX) $(RELEASE_FLAGS) $(CXX_FLAGS) $(CASHEW_APPLICATION)/Application.cpp -o $(RELEASEobj_x64)/Application.o

	$(CXX) $(X64) $(dll_FLAGS) $(CASHEW_PLATFORM_WINDOWS) $(CASHEW_EXPORTS) -o $(RELEASE_x64)/Cashew.dll $(RELEASEobj_x64)/Core.o $(RELEASEobj_x64)/Application.o -Wl,--out-implib $(RELEASElib_x64)/Cashew.lib

Debug_x64_Win32_Cashew_dll:


Release_x86_Win32_Sandbox: Release_x86_Win32_Cashew_dll

Debug_86_Win32_Sandbox: Debug_x86_Win32_Cashew_dll

Release_x86_Win32_Cashew_dll:

Debug_x86_Win32_Cashew_dll:
##########################

clean:
	rm -f $(RELEASElib_x64)/Cashew.lib
	rm -f $(RELEASEobj_x64)/Core.o
	rm -f $(RELEASEobj_x64)/Application.o
	rm -f $(RELEASE_x64)/Cashew.dll
	rm -f $(RELEASE_x64)/sandbox.exe

	rm -f $(DEBUGlib_x64)/Cashew.lib
	rm -f $(DEBUG_x64)/Cashew.dll
	rm -f $(DEBUG_x64)/sandbox.exe

	rm -f $(RELEASElib_x86)/Cashew.lib
	rm -f $(RELEASE_x86)/Cashew.dll
	rm -f $(RELEASE_x86)/sandbox.exe

	rm -f $(DEBUGlib_x86)/Cashew.lib
	rm -f $(DEBUG_x86)/Cashew.dll
	rm -f $(DEBUG_x86)/sandbox.exe


.PHONY: clean Release_x64_Win32_Sandbox Debug_x64_Win32_Sandbox Release_x64_Win32_Cashew_dll Debug_x64_Win32_Cashew_dll Release_x86_Win32_Sandbox Debug_86_Win32_Sandbox Release_x86_Win32_Cashew_dll Debug_x86_Win32_Cashew_dll