ParaView python wrapped plugin example
--------------------------------------

Goals:

  * compile a vtk library that contains a vtk filter
  * wrap the vtk library so it can be imported and used in Python
  * create a ParaView plugin that makes the filter available in ParaView

The standard way to create a ParaView plugin is to compile all the filters
and gui resources into a single library.  This example project shows how
to put the filters into a standalone vtk library using the vtk cmake
module macros, how to wrap the vtk library for python, and then create
a paraview plugin that links against the vtk library.

Build instructions
------------------

This project was tested using MacOSX 10.8.  I think it should work fine on Linux.
It should work on Windows, but some relative paths listed in the CMake code might
need to be adjusted.

This project was tested against ParaView 4.0 using ParaView git revision 4f8111e1ad.
This project should be compiled against a ParaView build directory.  Set ParaView_DIR=/path/to/paraview-build.
