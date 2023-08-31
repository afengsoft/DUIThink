#include "stdafx.h"
#include "MMHash.h"

//////////////////////////////////////////////////////////////////////////
uint32_t CMMHash::GetHash(CMMString &str) noexcept
{
	return MM_Fnv1a_append_bytes(MM_FNV_offset_basis, (const unsigned char*)str.GetBuffer(), sizeof(TCHAR) * str.GetLength());
}

uint32_t CMMHash::GetHash(LPCSTR lpszStr) noexcept
{
	return MM_Fnv1a_append_bytes(MM_FNV_offset_basis, (const unsigned char*)lpszStr, sizeof(CHAR) * strlen(lpszStr));
}

uint32_t CMMHash::GetHash(LPCTSTR lpszStr) noexcept
{
	return MM_Fnv1a_append_bytes(MM_FNV_offset_basis, (const unsigned char*)lpszStr, sizeof(TCHAR) * lstrlen(lpszStr));
}

uint32_t CMMHash::GetHash(const std::vector<CMMString> &vecStr) noexcept
{
	CMMString strText;
	for (auto &strResName : vecStr)
	{
		strText += strResName;
		strText += _T(';');
	}

	return CMMHash::GetHash(strText);
}