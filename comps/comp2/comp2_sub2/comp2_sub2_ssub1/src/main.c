
#include "comp2s1/comp2_sub1.h"
#include "comp2s2ss1/comp2s2ss1.h"
#include <restricted/comp2_sub1_private.h>

int main(void) {
    int ret=0;
    
    comp2s2ss1_print_msg("application");
    
    ret=comp2_sub1_increment();
    ret=comp2_sub1_increment();
    comp2_sub1_reset();
    ret=comp2_sub1_increment();
    ret=comp2_sub1_increment();
    
    return ret;
}