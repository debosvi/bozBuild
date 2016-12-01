    
add_executable(app_${COMP_SRC_APP_NAME} ${UPDATED_SRC_FILES})
set_target_properties(app_${COMP_SRC_APP_NAME} PROPERTIES OUTPUT_NAME ${COMP_SRC_APP_NAME})
if(NOT "${UPDATED_LIB_DEPS}" STREQUAL "")
    target_link_libraries(app_${COMP_SRC_APP_NAME} PUBLIC ${UPDATED_LIB_DEPS})
endif()
