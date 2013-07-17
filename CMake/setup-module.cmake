# This macro is copied from ParaView/CMake/ParaViewPlugins.cmake.
# The macro is broken in ParaView, so I've copied it here and commented out
# the broken lines.  Once it's fixed in ParaView this can be removed.

macro(pv_setup_module_environment2 _name)
  # Setup enviroment to build VTK modules outside of VTK source tree.
  set (VTK_INSTALL_EXPORT_NAME "${_name}Targets")
  set (VTK_INSTALL_RUNTIME_DIR "bin")
  set (VTK_INSTALL_LIBRARY_DIR "lib")
  set (VTK_INSTALL_ARCHIVE_DIR "lib")
  set (VTK_INSTALL_INCLUDE_DIR "include")
  set (VTK_INSTALL_PACKAGE_DIR "lib/cmake/${_name}")
  set (VTK_MODULES_DIR
    "${CMAKE_CURRENT_BINARY_DIR}/${VTK_INSTALL_PACKAGE_DIR}/Modules")
  set (VTK_EXPORTS_FILE
    "${CMAKE_CURRENT_BINARY_DIR}/${_name}Targets.cmake")
  set (BUILD_SHARED_LIBS ${VTK_BUILD_SHARED_LIBS})

  include(vtkModuleMacros)
  include(vtkModuleAPI)
  include(vtkClientServerWrapping)
  # load information about existing modules.
  #foreach (mod IN LISTS VTK_MODULES_ENABLED)
  #  vtk_module_load("${mod}")
  #endforeach()
endmacro()
