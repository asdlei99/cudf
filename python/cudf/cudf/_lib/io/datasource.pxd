# Copyright (c) 2020-2023, NVIDIA CORPORATION.

from libcpp.memory cimport shared_ptr

from cudf._lib.cpp.io.arrow_io_source cimport arrow_io_source
from cudf._lib.cpp.io.datasource cimport datasource


cdef class Datasource:
    cdef datasource* get_datasource(self) nogil except *


cdef class NativeFileDatasource(Datasource):
    cdef shared_ptr[arrow_io_source] c_datasource
    cdef datasource* get_datasource(self) nogil
