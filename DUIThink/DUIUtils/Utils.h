#ifndef __DUTILS_H__
#define __DUTILS_H__

#pragma once
#pragma pack(1)

/////////////////////////////////////////////////////////////////////////////////////
class DUITHINK_API CDUIRenderHelp
{
public:
	static void MeasureRichText(IN HDC hDC, IN const tagDuiRichText &RichText, OUT MapLineVecDuiRichTextDraw &mapLineVecRichTextDraw, 
		OUT CDUIRect &rcMeasure, IN CDUIRect rcItem, IN bool bGdiplusRender, IN Gdiplus::TextRenderingHint RenderType, IN int nLineSpace);
	static void AdjustRichText(IN const tagDuiRichText &RichText, IN CDUIRect rcItem, OUT MapLineVecDuiRichTextDraw &mapLineVecRichTextDraw,
		IN CDUIRect rcMeasure);
	static CDUIRect GetLineRange(MapLineVecDuiRichTextDraw mapLineVecRichTextDraw, int nLine);
};

//////////////////////////////////////////////////////////////////////////
#pragma pack()
#endif