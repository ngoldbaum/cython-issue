cimport numpy as np
import numpy as np
cimport cython
from cython.parallel import prange

def fun_sum():

    cdef np.float64_t[:] result = np.zeros(1)
    cdef int j
    cdef np.float64_t a = 3.0

    with nogil:
        for j in prange(0, 10000):
            result[0] += a + j

    return np.array(result)

def fun_sum_scalar():

    cdef np.float64_t result = 0
    cdef int j
    cdef np.float64_t a = 3.0

    with nogil:
        for j in prange(0, 10000):
            result += a + j

    return result
