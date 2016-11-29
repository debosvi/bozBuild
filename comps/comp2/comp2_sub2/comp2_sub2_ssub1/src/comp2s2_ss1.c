
#include "priv/comp2s2ss1.h"

int comp2s2ss1_print_msg(const char * const s) {
    return fprintf(stderr, "%s: %s\n", __FUNCTION__, s);
}