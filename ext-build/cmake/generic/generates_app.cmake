
string(REGEX REPLACE "([^;]+)" "@LOCAL_SRC_ROOTDIR@/\\1" UPDATED_SRC_FILES "${LOCAL_SRC_FILES}")

set(UPDATED_LIB_DEPS)

include(${BOZ_EXT_BUILD_DIR}/generic/update_lib_deps.cmake)
    
add_executable(app_${COMP_SRC_APP_NAME} ${UPDATED_SRC_FILES})
set_target_properties(app_${COMP_SRC_APP_NAME} PROPERTIES OUTPUT_NAME ${COMP_SRC_APP_NAME})
if(NOT "${UPDATED_LIB_DEPS}" STREQUAL "")
    target_link_libraries(app_${COMP_SRC_APP_NAME} PUBLIC ${UPDATED_LIB_DEPS})
endif()
