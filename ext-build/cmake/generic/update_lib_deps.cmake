
if("${COMP_SRC_DEPS_PREFFERED}" STREQUAL "static")
    list(APPEND COMP_SRC_LIB_DEPS_STATIC ${COMP_SRC_LIB_DEPS})
elseif("${COMP_SRC_DEPS_PREFFERED}" STREQUAL "shared")
    list(APPEND COMP_SRC_LIB_DEPS_SHARED ${COMP_SRC_LIB_DEPS})
endif()    

if(NOT "${COMP_SRC_LIB_DEPS_STATIC}" STREQUAL "")
    foreach(lib ${COMP_SRC_LIB_DEPS_STATIC})
        list(APPEND UPDATED_LIB_DEPS lib_${lib}_static)
    endforeach()
endif()

if(NOT "${COMP_SRC_LIB_DEPS_SHARED}" STREQUAL "")
    foreach(lib ${COMP_SRC_LIB_DEPS_SHARED})
        list(APPEND UPDATED_LIB_DEPS lib_${lib}_shared)
    endforeach()
endif()
