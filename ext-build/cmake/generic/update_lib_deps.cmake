
if(NOT "${COMP_SRC_LIB_DEPS}" STREQUAL "" AND "${COMP_SRC_DEPS_PREFERRED}" STREQUAL "")
    message(STATUS "No preferred library dependencies format for library ${COMP_SRC_LIB_NAME}, use static")
    set(COMP_SRC_DEPS_PREFERRED "static")
endif()

if("${COMP_SRC_DEPS_PREFERRED}" STREQUAL "static")
    list(APPEND COMP_SRC_LIB_DEPS_STATIC ${COMP_SRC_LIB_DEPS})
elseif("${COMP_SRC_DEPS_PREFERRED}" STREQUAL "shared")
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
