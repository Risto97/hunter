# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME systemc
    VERSION "3.0.1"
    URL "https://github.com/accellera-official/systemc/archive/refs/tags/3.0.1.tar.gz"
    SHA1 0bb732a7a50ac2a0cde73200a25ed3f51a9b6e58
)

hunter_cmake_args(
    systemc
    CMAKE_ARGS
        SC_WITH_PHASE_CALLBACK_TRACING=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(systemc)
hunter_download(PACKAGE_NAME systemc)

