project(My)
cmake_minimum_required(VERSION 2.8.8)


option(BUILD_TESTING "Build plugin with tests enabled." ON)
option(BUILD_SHARED_LIBS "Build shared libraries" ON)

if(BUILD_TESTING)
  include(CTest)
endif()

set(EXECUTABLE_OUTPUT_PATH "${CMAKE_BINARY_DIR}/bin")
set(LIBRARY_OUTPUT_PATH "${CMAKE_BINARY_DIR}/lib")




find_package(ParaView REQUIRED)
include(${PARAVIEW_USE_FILE})
include(ParaViewPlugins)


set(VTK_BUILD_SHARED_LIBS ${BUILD_SHARED_LIBS})

include_directories(${VTK_INCLUDE_DIRS})
include_directories(${VTK_PYTHON_INCLUDE_DIR})
include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${CMAKE_CURRENT_BINARY_DIR})

include(vtkPythonWrapping)
include(CMake/setup-module.cmake)

add_subdirectory(Module)


set(MODULES_PATH "${CMAKE_CURRENT_BINARY_DIR}/Module/lib/cmake/My/Modules")
include("${MODULES_PATH}/vtkMyFilters.cmake")

add_subdirectory(Plugin)


if(BUILD_TESTING)
  add_subdirectory(Testing)
endif()
