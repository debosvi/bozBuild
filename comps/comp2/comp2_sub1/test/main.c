
#include "comp2s1/comp2_sub1.h"
#include <restricted/comp2_sub1_private.h>

int main(void) {
    int ret=0;
    ret=comp2_sub1_increment();
    ret=comp2_sub1_increment();
    ret=comp2_sub1_increment();
    ret=comp2_sub1_increment();
    ret=comp2_sub1_increment();
    comp2_sub1_reset();
    ret=comp2_sub1_increment();
    ret=comp2_sub1_increment();
    ret=comp2_sub1_increment();
    ret=comp2_sub1_increment();
    
    return ret;
}