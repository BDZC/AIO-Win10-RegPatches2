#include <SDKDDKVer.h>
#include <Windows.h>
#include <iostream>
#include <sstream>

union UINT32u
{
  UINT32 u32;
  UINT16 u16[2];
  UINT8 u8[4];
};

union UINT64u
{
  UINT64 u64;
  UINT32 u32[2];
  UINT16 u16[4];
  UINT8 u8[8];
};

union UINT128u
{
  UINT64 u64[2];
  UINT32 u32[4];
  UINT16 u16[8];
  UINT8 u8[16];
};

void PrintArgs();
int KeyDecode(WCHAR* key0);
int KeyEncode(WCHAR* groupid,WCHAR* keyid,WCHAR* unk);

UINT32 Hash(const UINT128u& key);

bool ConvertChars(const WCHAR key0[29],UINT8 key1[25]);
bool Decode(const UINT8 key1[25],UINT128u& key2);
bool CheckHash(const UINT128u& key2,UINT128u& key3,UINT32u& check);
bool GetInfo(const UINT128u& key3,UINT32u& groupid,UINT32u& keyid,UINT64u& secret);

void SetInfo(const UINT32u groupid,const UINT32u keyid,const UINT64u secret,UINT128u& key3);
void SetHash(const UINT128u& key3,UINT128u& key2,UINT32u& check);
void Encode(const UINT128u& key2,UINT8 key1[25]);
void UnconvertChars(const UINT8 key1[25],WCHAR key0[29]);

static const UINT g_hash_table[256]={
0x00000000,0x04c11db7,0x09823b6e,0x0d4326d9,0x130476dc,0x17c56b6b,0x1a864db2,0x1e475005,
0x2608edb8,0x22c9f00f,0x2f8ad6d6,0x2b4bcb61,0x350c9b64,0x31cd86d3,0x3c8ea00a,0x384fbdbd,
0x4c11db70,0x48d0c6c7,0x4593e01e,0x4152fda9,0x5f15adac,0x5bd4b01b,0x569796c2,0x52568b75,
0x6a1936c8,0x6ed82b7f,0x639b0da6,0x675a1011,0x791d4014,0x7ddc5da3,0x709f7b7a,0x745e66cd,
0x9823b6e0,0x9ce2ab57,0x91a18d8e,0x95609039,0x8b27c03c,0x8fe6dd8b,0x82a5fb52,0x8664e6e5,
0xbe2b5b58,0xbaea46ef,0xb7a96036,0xb3687d81,0xad2f2d84,0xa9ee3033,0xa4ad16ea,0xa06c0b5d,
0xd4326d90,0xd0f37027,0xddb056fe,0xd9714b49,0xc7361b4c,0xc3f706fb,0xceb42022,0xca753d95,
0xf23a8028,0xf6fb9d9f,0xfbb8bb46,0xff79a6f1,0xe13ef6f4,0xe5ffeb43,0xe8bccd9a,0xec7dd02d,
0x34867077,0x30476dc0,0x3d044b19,0x39c556ae,0x278206ab,0x23431b1c,0x2e003dc5,0x2ac12072,
0x128e9dcf,0x164f8078,0x1b0ca6a1,0x1fcdbb16,0x018aeb13,0x054bf6a4,0x0808d07d,0x0cc9cdca,
0x7897ab07,0x7c56b6b0,0x71159069,0x75d48dde,0x6b93dddb,0x6f52c06c,0x6211e6b5,0x66d0fb02,
0x5e9f46bf,0x5a5e5b08,0x571d7dd1,0x53dc6066,0x4d9b3063,0x495a2dd4,0x44190b0d,0x40d816ba,
0xaca5c697,0xa864db20,0xa527fdf9,0xa1e6e04e,0xbfa1b04b,0xbb60adfc,0xb6238b25,0xb2e29692,
0x8aad2b2f,0x8e6c3698,0x832f1041,0x87ee0df6,0x99a95df3,0x9d684044,0x902b669d,0x94ea7b2a,
0xe0b41de7,0xe4750050,0xe9362689,0xedf73b3e,0xf3b06b3b,0xf771768c,0xfa325055,0xfef34de2,
0xc6bcf05f,0xc27dede8,0xcf3ecb31,0xcbffd686,0xd5b88683,0xd1799b34,0xdc3abded,0xd8fba05a,
0x690ce0ee,0x6dcdfd59,0x608edb80,0x644fc637,0x7a089632,0x7ec98b85,0x738aad5c,0x774bb0eb,
0x4f040d56,0x4bc510e1,0x46863638,0x42472b8f,0x5c007b8a,0x58c1663d,0x558240e4,0x51435d53,
0x251d3b9e,0x21dc2629,0x2c9f00f0,0x285e1d47,0x36194d42,0x32d850f5,0x3f9b762c,0x3b5a6b9b,
0x0315d626,0x07d4cb91,0x0a97ed48,0x0e56f0ff,0x1011a0fa,0x14d0bd4d,0x19939b94,0x1d528623,
0xf12f560e,0xf5ee4bb9,0xf8ad6d60,0xfc6c70d7,0xe22b20d2,0xe6ea3d65,0xeba91bbc,0xef68060b,
0xd727bbb6,0xd3e6a601,0xdea580d8,0xda649d6f,0xc423cd6a,0xc0e2d0dd,0xcda1f604,0xc960ebb3,
0xbd3e8d7e,0xb9ff90c9,0xb4bcb610,0xb07daba7,0xae3afba2,0xaafbe615,0xa7b8c0cc,0xa379dd7b,
0x9b3660c6,0x9ff77d71,0x92b45ba8,0x9675461f,0x8832161a,0x8cf30bad,0x81b02d74,0x857130c3,
0x5d8a9099,0x594b8d2e,0x5408abf7,0x50c9b640,0x4e8ee645,0x4a4ffbf2,0x470cdd2b,0x43cdc09c,
0x7b827d21,0x7f436096,0x7200464f,0x76c15bf8,0x68860bfd,0x6c47164a,0x61043093,0x65c52d24,
0x119b4be9,0x155a565e,0x18197087,0x1cd86d30,0x029f3d35,0x065e2082,0x0b1d065b,0x0fdc1bec,
0x3793a651,0x3352bbe6,0x3e119d3f,0x3ad08088,0x2497d08d,0x2056cd3a,0x2d15ebe3,0x29d4f654,
0xc5a92679,0xc1683bce,0xcc2b1d17,0xc8ea00a0,0xd6ad50a5,0xd26c4d12,0xdf2f6bcb,0xdbee767c,
0xe3a1cbc1,0xe760d676,0xea23f0af,0xeee2ed18,0xf0a5bd1d,0xf464a0aa,0xf9278673,0xfde69bc4,
0x89b8fd09,0x8d79e0be,0x803ac667,0x84fbdbd0,0x9abc8bd5,0x9e7d9662,0x933eb0bb,0x97ffad0c,
0xafb010b1,0xab710d06,0xa6322bdf,0xa2f33668,0xbcb4666d,0xb8757bda,0xb5365d03,0xb1f740b4};

UINT32 Hash(const UINT128u& key)
{
  UINT32 hash=-1;
  UINT32 index;
  for(UINT i=0;i<16;++i)
  {
    index=((hash >> 24) ^ key.u8[i]) & 0xff;
    hash=(hash << 8) ^ g_hash_table[index];
  }
  return ~hash & 0x3ff;
}

int wmain(int argc,WCHAR* argv[])
{
  switch(argc)
  {
  case 2:
    return KeyDecode(argv[1]);
    break;
  case 4:
    return KeyEncode(argv[1],argv[2],argv[3]);
  default:
    PrintArgs();
    break;
  }
	return -1;
}

void PrintArgs()
{
  std::wcout << L"Key Encoding:" << std::endl;
  std::wcout << L"  KeyInfo.exe <GroupId> <KeyId> <Secret>" << std::endl;
  std::wcout << L"    <GroupId> 0-ffffff" << std::endl;
  std::wcout << L"    <KeyId>   0-3fffffff" << std::endl;
  std::wcout << L"    <Secret>  0-1fffffffffffff" << std::endl;
  std::wcout << L"Key Decoding:" << std::endl;
  std::wcout << L"  KeyInfo.exe XXXXX-XXXXX-XXXXX-XXXXX-XXXXX" << std::endl;
}

int KeyDecode(WCHAR* key0)
{
  UINT8 key1[25];
  if(!ConvertChars(key0,key1))
    return -1;
  UINT128u key2;
  if(!Decode(key1,key2))
    return -1;
  UINT128u key3;
  UINT32u hash;
  if(!CheckHash(key2,key3,hash))
    return -1;
  UINT32u groupid;
  UINT32u keyid;
  UINT64u secret;
  if(!GetInfo(key3,groupid,keyid,secret))
    return -1;
  std::wcout << L"GroupId = " << std::hex << groupid.u32 << std::endl << L"          " << std::dec << groupid.u32 << std::endl;
  std::wcout << L"KeyId   = " << std::hex << keyid.u32  << std::endl << L"          " << std::dec << keyid.u32 << std::endl;
  std::wcout << L"Secret  = " << std::hex << secret.u64 << std::endl << L"          " << std::dec << secret.u64 << std::endl;
  std::wcout << L"Hash    = " << std::hex << hash.u32 << std::endl << L"          " << std::dec << hash.u32 << std::endl;
  return 0;
}

bool ConvertChars(const WCHAR key0[29],UINT8 key1[25])
{
  if(wcsnlen_s(key0,30)!=29)
  {
    std::wcout << L"Your key must be 29 characters long." << std::endl;
    return false;
  }
  if(key0[5]!=L'-' || key0[11]!=L'-' || key0[17]!=L'-' || key0[23]!=L'-')
  {
    std::wcout << L"Incorrect hyphens." << std::endl;
    return false;
  }
  if(key0[28]==L'N')
  {
    std::wcout << L"The last character must not be an N.";
    return false;
  }

  bool n=false;
  UINT j=1;
  UINT i=0;
  while(j<25)
  {
    switch(key0[i++])
    {
    case L'N':
      if(n)
      {
        std::wcout << L"There may only be one N in a key." << std::endl;
        return false;
      }
      n=true;
      key1[0]=j-1;
      break;
    case L'B':
      key1[j++]=0x00;
      break;
    case L'C':
      key1[j++]=0x01;
      break;
    case L'D':
      key1[j++]=0x02;
      break;
    case L'F':
      key1[j++]=0x03;
      break;
    case L'G':
      key1[j++]=0x04;
      break;
    case L'H':
      key1[j++]=0x05;
      break;
    case L'J':
      key1[j++]=0x06;
      break;
    case L'K':
      key1[j++]=0x07;
      break;
    case L'M':
      key1[j++]=0x08;
      break;
    case L'P':
      key1[j++]=0x09;
      break;
    case L'Q':
      key1[j++]=0x0a;
      break;
    case L'R':
      key1[j++]=0x0b;
      break;
    case L'T':
      key1[j++]=0x0c;
      break;
    case L'V':
      key1[j++]=0x0d;
      break;
    case L'W':
      key1[j++]=0x0e;
      break;
    case L'X':
      key1[j++]=0x0f;
      break;
    case L'Y':
      key1[j++]=0x10;
      break;
    case L'2':
      key1[j++]=0x11;
      break;
    case L'3':
      key1[j++]=0x12;
      break;
    case L'4':
      key1[j++]=0x13;
      break;
    case L'6':
      key1[j++]=0x14;
      break;
    case L'7':
      key1[j++]=0x15;
      break;
    case L'8':
      key1[j++]=0x16;
      break;
    case L'9':
      key1[j++]=0x17;
      break;
    case L'-':
      break;
    default:
      std::wcout << L"Invalid character in key." << std::endl;
      return false;
    }
  }
  if(!n)
  {
    std::wcout << L"The character N must be in the product key." << std::endl;
    return false;
  }
  return true;
}

bool Decode(const UINT8 key1[25],UINT128u& key2)
{
  key2.u64[0]=0;
  key2.u64[1]=0;

  UINT64u res;
  for(UINT ikey=0;ikey<25;++ikey)
  {
    res.u64=24ULL*key2.u32[0]+key1[ikey];
    key2.u32[0]=res.u32[0];
    res.u64>>=32;

    res.u64+=24ULL*key2.u32[1];
    key2.u32[1]=res.u32[0];
    res.u64>>=32;

    res.u64+=24ULL*key2.u32[2];
    key2.u32[2]=res.u32[0];
    res.u64>>=32;

    res.u64+=24ULL*key2.u32[3];
    key2.u32[3]=res.u32[0];
    res.u64>>=32;
  }
  return true;
}

bool CheckHash(const UINT128u& key2,UINT128u& key3,UINT32u& check)
{
  check.u32=0;
  memcpy_s(&key3,16,&key2,16);

  key3.u8[12]&=0x7f;
  key3.u8[13]=0;
  key3.u8[14]&=0xfe;

  check.u8[0]=(key2.u8[13] << 1) | (key2.u8[12] >> 7);
  check.u8[1]=((key2.u8[14] << 1) | (key2.u8[13] >> 7)) & 3;

  UINT32 hash=Hash(key3);

  if(hash!=check.u32)
  {
    std::wcout << L"Invalid key. The hash is incorrect." << std::endl;
    return false;
  }

  return true;
}

bool GetInfo(const UINT128u& key3,UINT32u& groupid,UINT32u& keyid,UINT64u& secret)
{
  groupid.u32=0;
  keyid.u32=0;
  secret.u64=0;

  groupid.u8[0]=key3.u8[0];
  groupid.u8[1]=key3.u8[1];
  groupid.u8[2]=key3.u8[2] & 0x0f;

  keyid.u8[0]=(key3.u8[2] >> 4) | (key3.u8[3] << 4);
  keyid.u8[1]=(key3.u8[3] >> 4) | (key3.u8[4] << 4);
  keyid.u8[2]=(key3.u8[4] >> 4) | (key3.u8[5] << 4);
  keyid.u8[3]=((key3.u8[5] >> 4) | (key3.u8[6] << 4)) & 0x3f;

  secret.u8[0]=(key3.u8[6] >> 2) | (key3.u8[7] << 6);
  secret.u8[1]=(key3.u8[7] >> 2) | (key3.u8[8] << 6);
  secret.u8[2]=(key3.u8[8] >> 2) | (key3.u8[9] << 6);
  secret.u8[3]=(key3.u8[9] >> 2) | (key3.u8[10] << 6);
  secret.u8[4]=(key3.u8[10] >> 2) | (key3.u8[11] << 6);
  secret.u8[5]=(key3.u8[11] >> 2) | (key3.u8[12] << 6);
  secret.u8[6]=(key3.u8[12] >> 2) & 0x1f;

  return true;
}

int KeyEncode(WCHAR* sgroupid,WCHAR* skeyid,WCHAR* sunk)
{
  UINT32u groupid;
  UINT32u keyid;
  UINT64u secret;

  std::wstringstream ss;
  ss << std::hex << sgroupid;
  ss >> groupid.u32;
  ss.clear();
  ss << std::hex << skeyid;
  ss >> keyid.u32;
  ss.clear();
  ss << std::hex << sunk;
  ss >> secret.u64;

  if(groupid.u32>0xffffff)
  {
    std::wcout << L"GroupId must be in the range 0-ffffff" << std::endl;
    return -1;
  }
  if(keyid.u32>0x3fffffff)
  {
    std::wcout << L"KeyId must be in the range 0-3fffffff" << std::endl;
    return -1;
  }
  if(secret.u64>0x1fffffffffffff)
  {
    std::wcout << L"Secret must be in the range 0-1fffffffffffff" << std::endl;
    return -1;
  }

  UINT128u key3;
  SetInfo(groupid,keyid,secret,key3);
  UINT128u key2;
  UINT32u hash;
  SetHash(key3,key2,hash);
  UINT8 key1[25];
  Encode(key2,key1);
  WCHAR key0[30]={0};
  UnconvertChars(key1,key0);

  std::wcout << key0 << std::endl;
  return 0;
}

void SetInfo(const UINT32u groupid,const UINT32u keyid,const UINT64u secret,UINT128u& key3)
{
  key3.u64[0]=0;
  key3.u64[1]=0;

  key3.u8[0]=groupid.u8[0];
  key3.u8[1]=groupid.u8[1];
  key3.u8[2]|=groupid.u8[2] & 0x0f;

  key3.u8[2]|=keyid.u8[0] << 4;
  key3.u8[3]=(keyid.u8[1] << 4) | (keyid.u8[0] >> 4);
  key3.u8[4]=(keyid.u8[2] << 4) | (keyid.u8[1] >> 4);
  key3.u8[5]=(keyid.u8[3] << 4) | (keyid.u8[2] >> 4);
  key3.u8[6]|=(keyid.u8[3] >> 4) & 0x3;

  key3.u8[6]|=secret.u8[0] << 2;
  key3.u8[7]=(secret.u8[1] << 2) | (secret.u8[0] >> 6);
  key3.u8[8]=(secret.u8[2] << 2) | (secret.u8[1] >> 6);
  key3.u8[9]=(secret.u8[3] << 2) | (secret.u8[2] >> 6);
  key3.u8[10]=(secret.u8[4] << 2) | (secret.u8[3] >> 6);
  key3.u8[11]=(secret.u8[5] << 2) | (secret.u8[4] >> 6);
  key3.u8[12]|=((secret.u8[6] << 2) | (secret.u8[5] >> 6)) & 0x7f;
}

void SetHash(const UINT128u& key3,UINT128u& key2,UINT32u& check)
{
  memcpy_s(&key2,16,&key3,16);

  check.u32=Hash(key2);

  key2.u8[12]|=check.u8[0] << 7;
  key2.u8[13]=(check.u8[0] >> 1) | (check.u8[1] << 7);
  key2.u8[14]|=(check.u8[1] >> 1) & 0x1;
}

void Encode(const UINT128u& key2,UINT8 key1[25])
{
  UINT128u cur=key2;
  UINT64u res;
  UINT32u rem;

  UINT i=25;
  do
  {
    res.u64=cur.u32[3];
    cur.u32[3]=static_cast<UINT32>(res.u64/24);
    rem.u32=res.u64 % 24;

    res.u32[0]=cur.u32[2];
    res.u32[1]=rem.u32;
    cur.u32[2]=static_cast<UINT32>(res.u64/24);
    rem.u32=res.u64 % 24;

    res.u32[0]=cur.u32[1];
    res.u32[1]=rem.u32;
    cur.u32[1]=static_cast<UINT32>(res.u64/24);
    rem.u32=res.u64 % 24;

    res.u32[0]=cur.u32[0];
    res.u32[1]=rem.u32;
    cur.u32[0]=static_cast<UINT32>(res.u64/24);
    rem.u32=res.u64 % 24;

    key1[--i]=rem.u8[0];
  }
  while(i>0);
}

void UnconvertChars(const UINT8 key1[25],WCHAR key0[29])
{
  UINT n=key1[0];
  n+=n/5;

  UINT j=1;
  for(UINT i=0;i<29;i++)
  {
    if(i==n)
      key0[i]=L'N';
    else if(i==5 || i==11 || i==17 || i==23)
      key0[i]=L'-';
    else
    {
      switch(key1[j++])
      {
      case 0x00:
        key0[i]=L'B';
        break;
      case 0x01:
        key0[i]=L'C';
        break;
      case 0x02:
        key0[i]=L'D';
        break;
      case 0x03:
        key0[i]=L'F';
        break;
      case 0x04:
        key0[i]=L'G';
        break;
      case 0x05:
        key0[i]=L'H';
        break;
      case 0x06:
        key0[i]=L'J';
        break;
      case 0x07:
        key0[i]=L'K';
        break;
      case 0x08:
        key0[i]=L'M';
        break;
      case 0x09:
        key0[i]=L'P';
        break;
      case 0x0a:
        key0[i]=L'Q';
        break;
      case 0x0b:
        key0[i]=L'R';
        break;
      case 0x0c:
        key0[i]=L'T';
        break;
      case 0x0d:
        key0[i]=L'V';
        break;
      case 0x0e:
        key0[i]=L'W';
        break;
      case 0x0f:
        key0[i]=L'X';
        break;
      case 0x10:
        key0[i]=L'Y';
        break;
      case 0x11:
        key0[i]=L'2';
        break;
      case 0x12:
        key0[i]=L'3';
        break;
      case 0x13:
        key0[i]=L'4';
        break;
      case 0x14:
        key0[i]=L'6';
        break;
      case 0x15:
        key0[i]=L'7';
        break;
      case 0x16:
        key0[i]=L'8';
        break;
      case 0x17:
        key0[i]=L'9';
        break;
      default:
        key0[i]=L'?';
      }
    }
  }
}
