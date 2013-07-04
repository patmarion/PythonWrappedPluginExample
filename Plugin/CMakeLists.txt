
set(gui_sources)
set(gui_interfaces)
set(gui_xml)
set(gui_deps)
set(servermanager_sources)
set(servermanager_xml)
set(server_deps)




list(APPEND servermanager_xml
  xml/vtkMyFilter.xml
  )


list(APPEND gui_xml
  xml/MyFiltersGUI.xml
  )

list(APPEND server_deps
  vtkMyFilters
  vtkMyFiltersCS
  )


set(library_name MyPlugin)

add_paraview_plugin(${library_name} "1.1"
  #GUI_INTERFACES ${gui_interfaces}
  #GUI_SOURCES ${gui_sources}
  GUI_RESOURCE_FILES ${gui_xml}
  SERVER_MANAGER_XML ${servermanager_xml}
  SERVER_MANAGER_SOURCES ${servermanager_sources}
  CS_KITS vtkMyFilters
  )

target_link_libraries(${library_name} ${gui_deps} ${server_deps})


