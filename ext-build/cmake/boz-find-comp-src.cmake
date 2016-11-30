
macro(COMP_SRC_CHECK_VARS)
    if("${COMP_SRC_PROFILE}" STREQUAL "")
        message(SEND_ERROR "Unable to retreive component profile (variable COMP_SRC_PROFILE)")
    endif()
    
    if(NOT "${COMP_SRC_PROFILE}" STREQUAL "library")
        message(SEND_ERROR "variable COMP_SRC_PROFILE is not yet managed!)")
    endif()

    if("${COMP_SRC_PROFILE}" STREQUAL "library")
        COMP_SRC_CHECK_VARS_LIBRARY()
    endif()
    
endmacro()

macro(COMP_SRC_CHECK_VARS_LIBRARY)
    if("${COMP_SRC_LIB_TYPE}" STREQUAL "")
        message(SEND_ERROR "Unable to retreive library type (variable COMP_SRC_LIB_TYPE)")
    endif()
    
    if(NOT "${COMP_SRC_LIB_TYPE}" STREQUAL "both" AND NOT "${COMP_SRC_LIB_TYPE}" STREQUAL "static" AND NOT "${COMP_SRC_LIB_TYPE}" STREQUAL "shared")
        message(SEND_ERROR "Library type (must set to either 'static', 'shared' or 'both'")
    endif()
    
    if("${COMP_SRC_LIB_NAME}" STREQUAL "")
        message(SEND_ERROR "Unable to retreive library name (variable COMP_SRC_LIB_NAME)")
    endif()
    
    if("${LOCAL_SRC_FILES}" STREQUAL "")
        message(SEND_ERROR "Not any source files to build with (variable LOCAL_SRC_FILES)")
    endif()
endmacro()

