/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkMyFilter.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
// .NAME vtkMyFilter
// .SECTION Description
//

#ifndef __vtkMyFilter_h
#define __vtkMyFilter_h

#include <vtkPolyDataAlgorithm.h>
#include <vtkMyFiltersModule.h>

class VTKMYFILTERS_EXPORT vtkMyFilter : public vtkPolyDataAlgorithm
{
public:

  vtkTypeMacro(vtkMyFilter, vtkPolyDataAlgorithm);
  void PrintSelf(ostream& os, vtkIndent indent);

  static vtkMyFilter *New();

protected:

  virtual int RequestData(vtkInformation *request,
                          vtkInformationVector **inputVector,
                          vtkInformationVector *outputVector);

  vtkMyFilter();
  virtual ~vtkMyFilter();

private:
  vtkMyFilter(const vtkMyFilter&);  // Not implemented.
  void operator=(const vtkMyFilter&);  // Not implemented.
};

#endif


