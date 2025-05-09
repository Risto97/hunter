# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME systemc-cci
    VERSION "1.0.1.hunter"
    URL "https://github.com/Risto97/cci/archive/refs/tags/v1.0.1.hunter.tar.gz"
    SHA1 1ca5399520005738298e49bd3cf3074f7fbe95fc
)

hunter_cmake_args(
    systemc-cci
    CMAKE_ARGS
        SYSTEMC_HOME=${SYSTEMC_ROOT}
        RapidJSON_DIR=${RAPIDJSON_ROOT}/lib/cmake/RapidJSON/
        BUILD_SOURCE_DOCUMENTATION=FALSE
        SYSTEMCCCI_BUILD_TESTS=FALSE
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(systemc-cci)
hunter_download(PACKAGE_NAME systemc-cci)


