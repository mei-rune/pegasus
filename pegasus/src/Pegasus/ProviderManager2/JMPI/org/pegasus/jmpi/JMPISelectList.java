//%LICENSE////////////////////////////////////////////////////////////////
//
// Licensed to The Open Group (TOG) under one or more contributor license
// agreements.  Refer to the OpenPegasusNOTICE.txt file distributed with
// this work for additional information regarding copyright ownership.
// Each contributor licenses this file to you under the OpenPegasus Open
// Source License; you may not use this file except in compliance with the
// License.
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the "Software"),
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense,
// and/or sell copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
// CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
// SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//
//////////////////////////////////////////////////////////////////////////
//
// Author:      Mark Hamzy,    hamzy@us.ibm.com
//
// Modified By: Mark Hamzy,    hamzy@us.ibm.com
//
//%/////////////////////////////////////////////////////////////////////////////
package org.pegasus.jmpi;

import java.util.Enumeration;

public class JMPISelectList
             extends SelectList
{
   private long ciSelectExp;

   private native long _applyInstance (long ciSelectExp, long ciInstance);
   private native long _applyClass    (long ciSelectExp, long ciClass);

   JMPISelectList (long ciSelectExp)
   {
      this.ciSelectExp = ciSelectExp;
   }

///public void addElement (AttributeExp ae)
///{
///}

   public Enumeration elements ()
   {
      return null;
   }

   public CIMElement apply (CIMElement elm)
   {
      if (elm instanceof CIMInstance)
      {
         CIMInstance ci     = (CIMInstance)elm;
         long        ciInst = 0;

         ciInst = _applyInstance (ciSelectExp, ci.cInst ());

         if (ciInst != 0)
         {
            return new CIMInstance (ciInst);
         }
      }
      else if (elm instanceof CIMClass)
      {
         CIMClass cc      = (CIMClass)elm;
         long     ciClass = 0;

         ciClass = _applyClass (ciSelectExp, cc.cInst ());

         if (ciClass != 0)
         {
            return new CIMClass (ciClass);
         }
      }

      return null;
   }

   static {
      System.loadLibrary("JMPIProviderManager");
   }
}
