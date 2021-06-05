#include "mydll.h"

int main(int argc, char**argv)
{
    Vec2 v;
    SetVec2(&v);
    PrintVec2(v);

    Rect r;
    SetRect(&r);
    PrintRect(r);

    return 0;
}
