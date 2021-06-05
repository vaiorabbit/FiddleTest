#include "mydll.h"
#include <stdio.h>

MYDLL_API void SetVec2(Vec2* v)
{
    v->x = 12.3f;
    v->y = 23.4f;
}

MYDLL_API void SetRect(Rect* r)
{
    r->tl.x = 1.0f;
    r->tl.y = 2.0f;
    r->br.x = 3.0f;
    r->br.y = 4.0f;
}

MYDLL_API void PrintVec2(Vec2 v)
{
    printf("x = %f, y = %f\n", v.x, v.y);
}

MYDLL_API void PrintRect(Rect r)
{
    printf("r.tl = (%f, %f)\n", r.tl.x, r.tl.y);
    printf("r.br = (%f, %f)\n", r.br.x, r.br.y);
}
