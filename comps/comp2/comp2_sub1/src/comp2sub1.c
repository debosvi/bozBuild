
#include "priv/comp2_sub1.h"

int comp2_sub1_int_g=0;

int comp2_sub1_increment(void) { return comp1_int_g+comp2_sub1_int_g++; }

int comp2_sub1_decrement(void) { return comp1_int_g+comp2_sub1_int_g--; }

void comp2_sub1_reset(void) { comp2_sub1_int_g=0; comp1_reset(); }