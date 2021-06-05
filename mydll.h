#pragma once

#if defined _WIN32 || defined __CYGWIN__
# define API __declspec(dllexport)
#elif defined __GNUC__
# define API  __attribute__((__visibility__("default")))
#else
# define API
#endif

#ifdef __cplusplus
# define EXTERN extern "C"
#else
# define EXTERN extern
#endif

#define MYDLL_API EXTERN API

typedef struct
{
    float x, y;
} Vec2;

typedef struct
{
    Vec2 tl;
    Vec2 br;
} Rect;

MYDLL_API void SetVec2(Vec2* v);
MYDLL_API void SetRect(Rect* r);
MYDLL_API void PrintVec2(Vec2 v);
MYDLL_API void PrintRect(Rect r);
