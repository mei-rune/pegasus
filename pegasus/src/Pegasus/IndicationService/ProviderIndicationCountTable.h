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
//%/////////////////////////////////////////////////////////////////////////////

#ifndef Pegasus_ProviderIndicationCountTable_h
#define Pegasus_ProviderIndicationCountTable_h

#include <Pegasus/Common/Config.h>
#include <Pegasus/Server/Linkage.h>
#include <Pegasus/Common/String.h>
#include <Pegasus/Common/Array.h>
#include <Pegasus/Common/CIMInstance.h>
#include <Pegasus/Common/CIMObjectPath.h>
#include <Pegasus/Common/HashTable.h>
#include <Pegasus/Common/ReadWriteSem.h>

PEGASUS_NAMESPACE_BEGIN

/**
    The ProviderIndicationCountTable is used to track the number of indications
    generated by each active indication provider.  Each entry consists of a
    provider module name, provider name, the number of indications generated by
    the provider, and the number of "orphan" indications (which do not match
    any subscriptions) generated by the provider.
*/
class PEGASUS_SERVER_LINKAGE ProviderIndicationCountTable
{
public:

    /**
        Constructs a ProviderIndicationCountTable instance.
    */
    ProviderIndicationCountTable();

    /**
        Destructs a ProviderIndicationCountTable instance.
    */
    ~ProviderIndicationCountTable();

    /**
        Inserts an entry for the specified provider. If the entry
        already exists, this method has no effect.

        @param providerInstance A PG_Provider instance representing the
            provider for which to insert
    */
    void insertEntry(const CIMInstance& providerInstance);

    /**
        Updates the indication count for a specified provider if the provider
        entry exists.  Updates the orphan indication count also, if applicable.

        @param providerInstance A PG_Provider instance representing the
            provider for which to update the counts.
        @param isOrphan A Boolean indicating whether the indication did not
            match any active subscriptions
    */
    void incrementEntry(
        const CIMInstance& providerInstance,
        Boolean isOrphan);

    /**
        Removes the entry for the specified provider from the table.

        @param providerInstance A PG_Provider instance specifying the provider
            for which to remove the entry.
    */
    void removeEntry(const CIMInstance& providerInstance);

    /**
        Removes all provider entries for the specified provider module from
        the table.

        @param providerModuleName The name of the provider module for which to
            remove the provider entries.
    */
    void removeModuleEntries(const String& providerModuleName);

    /**
        Gets the provider module name and provider name from a PG_Provider
        instance.

        @param providerInstance A PG_Provider instance for which to retrieve
            the provider module name and the provider name.
        @param providerModuleName Output String containing the provider module
            name.
        @param providerName Output String containing the provider name.
    */
    static void getProviderKeys(
        const CIMInstance& providerInstance,
        String& providerModuleName,
        String& providerName);

    Array<CIMInstance> enumerateProviderIndicationDataInstances();

    /**
        Enumerates PG_ProviderIndicationData instance names using the data
        stored in the Provider Indication Count table.

        @return All the PG_ProviderIndicationData instanceName.
    */
    Array<CIMObjectPath> enumerateProviderIndicationDataInstanceNames();

    /**
        Gets the Provider Indication Data instance for the specified CIM
        object path.

        @param instanceName CIMObjectPath specifies a CIM instance to be
            returned
        @return The specified PG_ProviderIndicationData instance.
        @exception CIMObjectNotFoundException If the specified instance does
            not exist
    */
    CIMInstance getProviderIndicationDataInstance(
        const CIMObjectPath& instanceName);

    /**
        Removes all entries from the ProviderIndicationCountTable.
     */
    void clear ();

private:

    ProviderIndicationCountTable(const ProviderIndicationCountTable&);
    ProviderIndicationCountTable& operator=(
        const ProviderIndicationCountTable&);

    /**
        Generates a unique String key for a ProviderIndicationCountTableEntry.
        The key is generated by concatenating the provider name, the provider
        module name, colon, and the length of the provider name.

        @param providerModuleName The provider module name used to generate
            the key.
        @param providerName The provider name used to generate the key.
        @return A String containing the generated key.
    */
    static String _generateKey(
        const String& providerModuleName,
        const String& providerName);

    struct _ProviderIndicationCountTableEntry
    {
        String providerModuleName;
        String providerName;
        Uint32 indicationCount;
        Uint32 orphanIndicationCount;
    };

    /**
        Returns all the table entries.
        @return A complete list of ProviderIndicationCountTableEntry objects.
    */
    Array<_ProviderIndicationCountTableEntry> _getAllEntries();

    /**
        Builds the provider indication data instance object path by using the
            specified provider indication count table entry.

        @param providerIndCountTableEntry The provider indication count table
            entry used to build the provider indication data instance name.
        @return The created provider indication data instance object path.
    */
    CIMObjectPath _buildProviderIndDataInstanceName(
        const _ProviderIndicationCountTableEntry& providerIndCountTableEntry);

    /**
        Builds the provider indication data instance by using the
            specified provider indication count table entry.

        @param providerIndCountTableEntry The provider indication count table
            entry used to build the provider indication data instance.
        @return The created provider indication data instance
    */
    CIMInstance _buildProviderIndDataInstance(
        const _ProviderIndicationCountTableEntry& providerIndCountTableEntry);

    /**
        Hash function used in _ProviderIndicationCountTable.  The algorithm is
        optimized for the key format and the hash table size (32 by default).
    */
    struct _ProviderIndicationCountHashFunc
    {
        static Uint32 hash(const String& key);
    };

    /**
        Table of generated indications counts.  Access to this table
        is controlled by the _tableLock.
    */
    typedef HashTable<
        String,
        _ProviderIndicationCountTableEntry,
        EqualNoCaseFunc,
        _ProviderIndicationCountHashFunc> _ProviderIndicationCountTable;
    _ProviderIndicationCountTable _table;

    /**
        A lock to control access to the _table.  Before accessing the _table,
        one must first lock this for read access.  Before updating the _table,
        one must first lock this for write access.
    */
    mutable ReadWriteSem _tableLock;
};

PEGASUS_NAMESPACE_END

#endif  /* Pegasus_ProviderIndicationCountTable_h */