//=====Automatically generated by python 3.6.4
//== working directory: /cygdrive/d/Pool/eclipse-workspace_aarch64/newspace/raspiOS/subprojects/python3_gen_engine/src
//== ../../../subprojects/python3_gen_engine/src/GenEngine.py  ../../../subprojects/python3_gen_engine/src/reg_defs/vmsa_descriptors.py  ../../../include/arch/common_aarch64/registers/vmsa_descriptors.h
#ifndef __INCLUDE_ARCH_COMMON_AARCH64_REGISTERS_VMSA_DESCRIPTORS_H__
#define __INCLUDE_ARCH_COMMON_AARCH64_REGISTERS_VMSA_DESCRIPTORS_H__
#include <def.h>
#include <io/Output.h>
#include <io/IntegerFormatter.h>

class Descriptor4KBL0 
{
public:
    using ScaleType=uint64_t;
            uint64_t  Valid:1;
            uint64_t  IsTable:1;
            uint64_t  ignored_0:10;
            uint64_t  NextLevelTableAddr:36;
            uint64_t  RES0_1:4;
            uint64_t  ignored_2:7;
            uint64_t  PXNTable:1;
            uint64_t  XNTable:1;
            uint64_t  APTable:2;
            uint64_t  NSTable:1;
    AS_MACRO uint64_t  get()const 
    {
        return *reinterpret_cast<const uint64_t*>(this);
    }
    AS_MACRO uint64_t  get()const volatile
    {
        return *reinterpret_cast<const volatile uint64_t*>(this);
    }
    
    AS_MACRO Descriptor4KBL0& set(uint64_t v)
    { 
        *reinterpret_cast<uint64_t*>(this)=v;
        return *this;
    }
    AS_MACRO volatile Descriptor4KBL0 & set(uint64_t v)volatile
    {
        *reinterpret_cast<volatile uint64_t*>(this)=v;
        return *this;
    }
    AS_MACRO Descriptor4KBL0 & setMandatoryFields()
    {
        Valid = 0;
        IsTable = 0;
        ignored_0 = 0;
        NextLevelTableAddr = 0;
        RES0_1 = 0;
        ignored_2 = 0;
        PXNTable = 0;
        XNTable = 0;
        APTable = 0;
        NSTable = 0;
        return *this;
        }
    AS_MACRO Descriptor4KBL0 copy()const volatile
    {
    	Descriptor4KBL0 res;
    	res.set(this->get());
    	return res;
    }
    AS_MACRO Descriptor4KBL0 copy()const
    {
    	Descriptor4KBL0 res;
    	res.set(this->get());
    	return res;
    }
    AS_MACRO void dump()const volatile
    {
        kout << "Descriptor4KBL0: ";
            kout
                << "Valid = " << Valid << ", "
                << "IsTable = " << IsTable << ", "
                << "ignored_0 = " << ignored_0 << ", "
                << "NextLevelTableAddr = " << Hex(NextLevelTableAddr) << ", "
                << "RES0_1 = " << RES0_1 << ", "
                << "ignored_2 = " << ignored_2 << ", "
                << "PXNTable = " << PXNTable << ", "
                << "XNTable = " << XNTable << ", "
                << "APTable = " << APTable << ", "
                << "NSTable = " << NSTable << ", "
                << "\n";
    }
    AS_MACRO void dump()const
    {
    	reinterpret_cast<volatile const Descriptor4KBL0*>(this)->dump();
    }
    AS_MACRO uint64_t & asuint64_t()
    {
    	return *reinterpret_cast<uint64_t*>(this);
    }
    AS_MACRO const uint64_t & asuint64_t()const
    {
    	return *reinterpret_cast<const uint64_t*>(this);
    }
    AS_MACRO static Descriptor4KBL0& make(void *addr,uint64_t val)
    { 
        return reinterpret_cast<Descriptor4KBL0*>(addr)->set(val);
    }
    AS_MACRO static volatile Descriptor4KBL0& make(volatile void *addr,uint64_t val)
    { 
        return reinterpret_cast<volatile Descriptor4KBL0*>(addr)->set(val);
    }
    AS_MACRO static Descriptor4KBL0& of(size_t addr)
    { 
        return *reinterpret_cast<Descriptor4KBL0*>(addr);
    }
    AS_MACRO static Descriptor4KBL0& of(void* addr)
    { 
        return *reinterpret_cast<Descriptor4KBL0*>(addr);
    }
    AS_MACRO static volatile Descriptor4KBL0& of(volatile void* addr)
    { 
        return *reinterpret_cast<volatile Descriptor4KBL0*>(addr);
    }
}__attribute__((packed));


class Descriptor4KBL1 
{
public:
    using ScaleType=uint64_t;
    union {
        struct {
            uint64_t  Valid:1;
            uint64_t  IsTable:1;
            uint64_t  AttrIndex:3;
            uint64_t  NS:1;
            uint64_t  AP:2;
            uint64_t  SH:2;
            uint64_t  AF:1;
            uint64_t  nG:1;
            uint64_t  RES0_0:18;
            uint64_t  OutputAddr:18;
            uint64_t  RES0_1:4;
            uint64_t  Contiguous:1;
            uint64_t  PXN:1;
            uint64_t  UXN:1;
            uint64_t  reserved_2:4;
            uint64_t  PBHA:4;
            uint64_t  ignored_3:1;
        }__attribute__((packed)) S0;
        struct {
            uint64_t  Valid:1;
            uint64_t  IsTable:1;
            uint64_t  ignored_0:10;
            uint64_t  NextLevelTableAddr:36;
            uint64_t  RES0_1:4;
            uint64_t  ignored_2:7;
            uint64_t  PXNTable:1;
            uint64_t  XNTable:1;
            uint64_t  APTable:2;
            uint64_t  NSTable:1;
        }__attribute__((packed)) S1;
    }; //union
    AS_MACRO uint64_t  get()const 
    {
        return *reinterpret_cast<const uint64_t*>(this);
    }
    AS_MACRO uint64_t  get()const volatile
    {
        return *reinterpret_cast<const volatile uint64_t*>(this);
    }
    
    AS_MACRO Descriptor4KBL1& set(uint64_t v)
    { 
        *reinterpret_cast<uint64_t*>(this)=v;
        return *this;
    }
    AS_MACRO volatile Descriptor4KBL1 & set(uint64_t v)volatile
    {
        *reinterpret_cast<volatile uint64_t*>(this)=v;
        return *this;
    }
    AS_MACRO Descriptor4KBL1 copy()const volatile
    {
    	Descriptor4KBL1 res;
    	res.set(this->get());
    	return res;
    }
    AS_MACRO Descriptor4KBL1 copy()const
    {
    	Descriptor4KBL1 res;
    	res.set(this->get());
    	return res;
    }
    AS_MACRO void dump()const volatile
    {
        kout << "Descriptor4KBL1: ";
        if(S0.IsTable==0)
        {
            kout
                << "S0.Valid = " << S0.Valid << ", "
                << "S0.IsTable = " << S0.IsTable << ", "
                << "S0.AttrIndex = " << S0.AttrIndex << ", "
                << "S0.NS = " << S0.NS << ", "
                << "S0.AP = " << S0.AP << ", "
                << "S0.SH = " << S0.SH << ", "
                << "S0.AF = " << S0.AF << ", "
                << "S0.nG = " << S0.nG << ", "
                << "S0.RES0_0 = " << S0.RES0_0 << ", "
                << "S0.OutputAddr = " << Hex(S0.OutputAddr) << ", "
                << "S0.RES0_1 = " << S0.RES0_1 << ", "
                << "S0.Contiguous = " << S0.Contiguous << ", "
                << "S0.PXN = " << S0.PXN << ", "
                << "S0.UXN = " << S0.UXN << ", "
                << "S0.reserved_2 = " << S0.reserved_2 << ", "
                << "S0.PBHA = " << S0.PBHA << ", "
                << "S0.ignored_3 = " << S0.ignored_3 << ", "
                << "\n";
        }
        else
        {
            kout
                << "S1.Valid = " << S1.Valid << ", "
                << "S1.IsTable = " << S1.IsTable << ", "
                << "S1.ignored_0 = " << S1.ignored_0 << ", "
                << "S1.NextLevelTableAddr = " << Hex(S1.NextLevelTableAddr) << ", "
                << "S1.RES0_1 = " << S1.RES0_1 << ", "
                << "S1.ignored_2 = " << S1.ignored_2 << ", "
                << "S1.PXNTable = " << S1.PXNTable << ", "
                << "S1.XNTable = " << S1.XNTable << ", "
                << "S1.APTable = " << S1.APTable << ", "
                << "S1.NSTable = " << S1.NSTable << ", "
                << "\n";
        }
    }
    AS_MACRO void dump()const
    {
    	reinterpret_cast<volatile const Descriptor4KBL1*>(this)->dump();
    }
    AS_MACRO uint64_t & asuint64_t()
    {
    	return *reinterpret_cast<uint64_t*>(this);
    }
    AS_MACRO const uint64_t & asuint64_t()const
    {
    	return *reinterpret_cast<const uint64_t*>(this);
    }
    AS_MACRO static Descriptor4KBL1& make(void *addr,uint64_t val)
    { 
        return reinterpret_cast<Descriptor4KBL1*>(addr)->set(val);
    }
    AS_MACRO static volatile Descriptor4KBL1& make(volatile void *addr,uint64_t val)
    { 
        return reinterpret_cast<volatile Descriptor4KBL1*>(addr)->set(val);
    }
    AS_MACRO static Descriptor4KBL1& of(size_t addr)
    { 
        return *reinterpret_cast<Descriptor4KBL1*>(addr);
    }
    AS_MACRO static Descriptor4KBL1& of(void* addr)
    { 
        return *reinterpret_cast<Descriptor4KBL1*>(addr);
    }
    AS_MACRO static volatile Descriptor4KBL1& of(volatile void* addr)
    { 
        return *reinterpret_cast<volatile Descriptor4KBL1*>(addr);
    }
}__attribute__((packed));


class Descriptor4KBL2 
{
public:
    using ScaleType=uint64_t;
    union {
        struct {
            uint64_t  Valid:1;
            uint64_t  IsTable:1;
            uint64_t  NS:1;
            uint64_t  AP:2;
            uint64_t  SH:2;
            uint64_t  AF:1;
            uint64_t  nG:1;
            uint64_t  RES0_0:9;
            uint64_t  OutputAddr:27;
            uint64_t  RES0_1:4;
            uint64_t  Contiguous:1;
            uint64_t  PXN:1;
            uint64_t  UXN:1;
            uint64_t  reserved_2:4;
            uint64_t  PBHA:4;
            uint64_t  ignored_3:1;
        }__attribute__((packed)) S0;
        struct {
            uint64_t  Valid:1;
            uint64_t  IsTable:1;
            uint64_t  ignored_0:10;
            uint64_t  NextLevelTableAddr:36;
            uint64_t  RES0_1:4;
            uint64_t  ignored_2:7;
            uint64_t  PXNTable:1;
            uint64_t  XNTable:1;
            uint64_t  APTable:2;
            uint64_t  NSTable:1;
        }__attribute__((packed)) S1;
    }; //union
    AS_MACRO uint64_t  get()const 
    {
        return *reinterpret_cast<const uint64_t*>(this);
    }
    AS_MACRO uint64_t  get()const volatile
    {
        return *reinterpret_cast<const volatile uint64_t*>(this);
    }
    
    AS_MACRO Descriptor4KBL2& set(uint64_t v)
    { 
        *reinterpret_cast<uint64_t*>(this)=v;
        return *this;
    }
    AS_MACRO volatile Descriptor4KBL2 & set(uint64_t v)volatile
    {
        *reinterpret_cast<volatile uint64_t*>(this)=v;
        return *this;
    }
    AS_MACRO Descriptor4KBL2 copy()const volatile
    {
    	Descriptor4KBL2 res;
    	res.set(this->get());
    	return res;
    }
    AS_MACRO Descriptor4KBL2 copy()const
    {
    	Descriptor4KBL2 res;
    	res.set(this->get());
    	return res;
    }
    AS_MACRO void dump()const volatile
    {
        kout << "Descriptor4KBL2: ";
        if(S0.IsTable==0)
        {
            kout
                << "S0.Valid = " << S0.Valid << ", "
                << "S0.IsTable = " << S0.IsTable << ", "
                << "S0.NS = " << S0.NS << ", "
                << "S0.AP = " << S0.AP << ", "
                << "S0.SH = " << S0.SH << ", "
                << "S0.AF = " << S0.AF << ", "
                << "S0.nG = " << S0.nG << ", "
                << "S0.RES0_0 = " << S0.RES0_0 << ", "
                << "S0.OutputAddr = " << Hex(S0.OutputAddr) << ", "
                << "S0.RES0_1 = " << S0.RES0_1 << ", "
                << "S0.Contiguous = " << S0.Contiguous << ", "
                << "S0.PXN = " << S0.PXN << ", "
                << "S0.UXN = " << S0.UXN << ", "
                << "S0.reserved_2 = " << S0.reserved_2 << ", "
                << "S0.PBHA = " << S0.PBHA << ", "
                << "S0.ignored_3 = " << S0.ignored_3 << ", "
                << "\n";
        }
        else
        {
            kout
                << "S1.Valid = " << S1.Valid << ", "
                << "S1.IsTable = " << S1.IsTable << ", "
                << "S1.ignored_0 = " << S1.ignored_0 << ", "
                << "S1.NextLevelTableAddr = " << Hex(S1.NextLevelTableAddr) << ", "
                << "S1.RES0_1 = " << S1.RES0_1 << ", "
                << "S1.ignored_2 = " << S1.ignored_2 << ", "
                << "S1.PXNTable = " << S1.PXNTable << ", "
                << "S1.XNTable = " << S1.XNTable << ", "
                << "S1.APTable = " << S1.APTable << ", "
                << "S1.NSTable = " << S1.NSTable << ", "
                << "\n";
        }
    }
    AS_MACRO void dump()const
    {
    	reinterpret_cast<volatile const Descriptor4KBL2*>(this)->dump();
    }
    AS_MACRO uint64_t & asuint64_t()
    {
    	return *reinterpret_cast<uint64_t*>(this);
    }
    AS_MACRO const uint64_t & asuint64_t()const
    {
    	return *reinterpret_cast<const uint64_t*>(this);
    }
    AS_MACRO static Descriptor4KBL2& make(void *addr,uint64_t val)
    { 
        return reinterpret_cast<Descriptor4KBL2*>(addr)->set(val);
    }
    AS_MACRO static volatile Descriptor4KBL2& make(volatile void *addr,uint64_t val)
    { 
        return reinterpret_cast<volatile Descriptor4KBL2*>(addr)->set(val);
    }
    AS_MACRO static Descriptor4KBL2& of(size_t addr)
    { 
        return *reinterpret_cast<Descriptor4KBL2*>(addr);
    }
    AS_MACRO static Descriptor4KBL2& of(void* addr)
    { 
        return *reinterpret_cast<Descriptor4KBL2*>(addr);
    }
    AS_MACRO static volatile Descriptor4KBL2& of(volatile void* addr)
    { 
        return *reinterpret_cast<volatile Descriptor4KBL2*>(addr);
    }
}__attribute__((packed));


class Descriptor4KBL3 
{
public:
    using ScaleType=uint64_t;
            uint64_t  Valid:1;
            uint64_t  RES1_0:1;
            uint64_t  AttrIndex:3;
            uint64_t  NS:1;
            uint64_t  AP:2;
            uint64_t  SH:2;
            uint64_t  AF:1;
            uint64_t  nG:1;
            uint64_t  OutputAddr:36;
            uint64_t  RES0_1:3;
            uint64_t  DBM:1;
            uint64_t  Contiguous:1;
            uint64_t  PXN:1;
            uint64_t  UXN:1;
            uint64_t  reserved_2:4;
            uint64_t  PBHA:4;
            uint64_t  Ignored:1;
    AS_MACRO uint64_t  get()const 
    {
        return *reinterpret_cast<const uint64_t*>(this);
    }
    AS_MACRO uint64_t  get()const volatile
    {
        return *reinterpret_cast<const volatile uint64_t*>(this);
    }
    
    AS_MACRO Descriptor4KBL3& set(uint64_t v)
    { 
        *reinterpret_cast<uint64_t*>(this)=v;
        return *this;
    }
    AS_MACRO volatile Descriptor4KBL3 & set(uint64_t v)volatile
    {
        *reinterpret_cast<volatile uint64_t*>(this)=v;
        return *this;
    }
    AS_MACRO Descriptor4KBL3 & setMandatoryFields()
    {
        Valid = 0;
        RES1_0 = 1;
        AttrIndex = 0;
        NS = 0;
        AP = 0;
        SH = 0;
        AF = 0;
        nG = 0;
        OutputAddr = 0;
        RES0_1 = 0;
        DBM = 0;
        Contiguous = 0;
        PXN = 0;
        UXN = 0;
        reserved_2 = 0;
        PBHA = 0;
        Ignored = 0;
        return *this;
        }
    AS_MACRO Descriptor4KBL3 copy()const volatile
    {
    	Descriptor4KBL3 res;
    	res.set(this->get());
    	return res;
    }
    AS_MACRO Descriptor4KBL3 copy()const
    {
    	Descriptor4KBL3 res;
    	res.set(this->get());
    	return res;
    }
    AS_MACRO void dump()const volatile
    {
        kout << "Descriptor4KBL3: ";
            kout
                << "Valid = " << Valid << ", "
                << "RES1_0 = " << RES1_0 << ", "
                << "AttrIndex = " << AttrIndex << ", "
                << "NS = " << NS << ", "
                << "AP = " << AP << ", "
                << "SH = " << SH << ", "
                << "AF = " << AF << ", "
                << "nG = " << nG << ", "
                << "OutputAddr = " << Hex(OutputAddr) << ", "
                << "RES0_1 = " << RES0_1 << ", "
                << "DBM = " << DBM << ", "
                << "Contiguous = " << Contiguous << ", "
                << "PXN = " << PXN << ", "
                << "UXN = " << UXN << ", "
                << "reserved_2 = " << reserved_2 << ", "
                << "PBHA = " << PBHA << ", "
                << "Ignored = " << Ignored << ", "
                << "\n";
    }
    AS_MACRO void dump()const
    {
    	reinterpret_cast<volatile const Descriptor4KBL3*>(this)->dump();
    }
    AS_MACRO uint64_t & asuint64_t()
    {
    	return *reinterpret_cast<uint64_t*>(this);
    }
    AS_MACRO const uint64_t & asuint64_t()const
    {
    	return *reinterpret_cast<const uint64_t*>(this);
    }
    AS_MACRO static Descriptor4KBL3& make(void *addr,uint64_t val)
    { 
        return reinterpret_cast<Descriptor4KBL3*>(addr)->set(val);
    }
    AS_MACRO static volatile Descriptor4KBL3& make(volatile void *addr,uint64_t val)
    { 
        return reinterpret_cast<volatile Descriptor4KBL3*>(addr)->set(val);
    }
    AS_MACRO static Descriptor4KBL3& of(size_t addr)
    { 
        return *reinterpret_cast<Descriptor4KBL3*>(addr);
    }
    AS_MACRO static Descriptor4KBL3& of(void* addr)
    { 
        return *reinterpret_cast<Descriptor4KBL3*>(addr);
    }
    AS_MACRO static volatile Descriptor4KBL3& of(volatile void* addr)
    { 
        return *reinterpret_cast<volatile Descriptor4KBL3*>(addr);
    }
}__attribute__((packed));

#endif //__INCLUDE_ARCH_COMMON_AARCH64_REGISTERS_VMSA_DESCRIPTORS_H__