
#include "priv/comp2.h"

int comp2_int_g=0;

int comp2_increment(void) { return comp1_int_g++; }

int comp2_decrement(void) { return comp1_int_g--; }

void comp2_reset(void) { comp1_int_g=0; }