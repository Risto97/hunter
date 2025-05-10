# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME systemc-components
    VERSION "2025.03.hunter"
    URL "https://github.com/Risto97/SystemC-Components/archive/refs/tags/2025.03.hunter.tar.gz"
    SHA1 1e9fb745c05cd3c4b2071d95314c1e24d60af026
)

hunter_cmake_args(
    systemc-components
    CMAKE_ARGS
        ENABLE_HUNTER=ON
        BUILD_SCC_LIB_ONLY=ON
        BUILD_SCC_DOCUMENTATION=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(systemc-components)
hunter_download(PACKAGE_NAME systemc-components)

