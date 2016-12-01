
#include "private/comp1_p.h"

int comp1_int_g=0;

int comp1_increment(void) { return comp1_int_g++; }

int comp1_decrement(void) { return comp1_int_g--; }

void comp1_reset(void) { comp1_int_g=0; }