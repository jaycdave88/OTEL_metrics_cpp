add_subdirectory(common)
add_subdirectory(trace)
if(WITH_METRICS_PREVIEW)
  add_subdirectory(_metrics)
else()
  add_subdirectory(metrics)
endif()
if(WITH_LOGS_PREVIEW)
  add_subdirectory(logs)
endif()
add_subdirectory(version)
add_subdirectory(resource)
