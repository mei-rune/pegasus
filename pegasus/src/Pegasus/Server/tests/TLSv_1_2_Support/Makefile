#//%LICENSE////////////////////////////////////////////////////////////////
#//
#// Licensed to The Open Group (TOG) under one or more contributor license
#// agreements.  Refer to the OpenPegasusNOTICE.txt file distributed with
#// this work for additional information regarding copyright ownership.
#// Each contributor licenses this file to you under the OpenPegasus Open
#// Source License; you may not use this file except in compliance with the
#// License.
#//
#// Permission is hereby granted, free of charge, to any person obtaining a
#// copy of this software and associated documentation files (the "Software"),
#// to deal in the Software without restriction, including without limitation
#// the rights to use, copy, modify, merge, publish, distribute, sublicense,
#// and/or sell copies of the Software, and to permit persons to whom the
#// Software is furnished to do so, subject to the following conditions:
#//
#// The above copyright notice and this permission notice shall be included
#// in all copies or substantial portions of the Software.
#//
#// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
#// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
#// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
#// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
#// CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
#// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
#// SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#//
#//////////////////////////////////////////////////////////////////////////
ROOT = ../../../../..

DIR = Pegasus/Server/tests/TLSv_1_2_Support

include $(ROOT)/mak/config.mak

include ../libraries.mak

ifdef PEGASUS_HAS_SSL
    ifdef OPENSSL_HOME
        SYS_INCLUDES += -I$(OPENSSL_HOME)/include
    endif
endif

LOCAL_DEFINES = -DPEGASUS_INTERNALONLY

PROGRAM = TestTLSv1_2_Support

SOURCES = TestTLSv1_2_Support.cpp

ifdef PEGASUS_HAS_SSL
    ifeq ($(OS_TYPE),windows)
        SYS_LIBS += $(OPENSSL_HOME)\lib\libeay32.lib $(OPENSSL_HOME)\lib\ssleay32.lib
    else
        ifeq ($(OS_TYPE), vms)
            EXTRA_LIBRARIES += -L$(OPENSSL_LIB) \
                -lssl$$libssl_shr32 -lssl$$libcrypto_shr32
        else
            ifdef OPENSSL_HOME
                EXTRA_LIBRARIES += -L$(OPENSSL_HOME)/lib
            endif
            EXTRA_LIBRARIES += -lssl -lcrypto
        endif
    endif
endif

include $(ROOT)/mak/program.mak


tests:

test_TLSv1_2:
	$(PROGRAM)

poststarttests: 

