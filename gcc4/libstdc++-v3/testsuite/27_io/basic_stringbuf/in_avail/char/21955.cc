// 2005-06-07 Benjamin Kosnik

// Copyright (C) 2005
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 2, or (at your option)
// any later version.

// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License along
// with this library; see the file COPYING.  If not, write to the Free
// Software Foundation, 59 Temple Place - Suite 330, Boston, MA 02111-1307,
// USA.

#include <sstream>
#include <testsuite_hooks.h>
#include <stdexcept>

double  
test_stringstream()
{
  double result;
  char* source = "1918"; 
  std::stringstream s;
  s << source;

  std::string tmp = s.str();
  std::streambuf* sb = s.rdbuf();
  int i = sb->in_avail();

  if (i)
    {
      s >> result;
    }
  else
    {
      throw std::runtime_error("conversion failed");
    }
  return result;
}


int main ()
{
  test_stringstream();
  return 0;
}
