cimport numpy as np
import numpy as np
cimport cython
from cython.parallel import prange
from libc.stdlib cimport malloc

@cython.boundscheck(False)
@cython.wraparound(False)
def sum():
    cdef np.float64_t * result
    result = <np.float64_t *> malloc(sizeof(np.float64_t))
    cdef int j

    with nogil:
        for j in prange(0, 10000000):
            result[0] += j

    return result[0]

@cython.boundscheck(False)
@cython.wraparound(False)
def sum_scalar():

    cdef np.float64_t result = 0
    cdef int j

    with nogil:
        for j in prange(0, 10000000):
            result += j

    return result
