cimport numpy as np
cimport cython
from cython.parallel import prange

@cython.initializedcheck(False)
@cython.boundscheck(True)
@cython.wraparound(False)
@cython.cdivision(True)
def fun_sum(np.float64_t[:] result):

    cdef int j
    cdef np.float64_t a = 3.0

    with nogil:
        for j in prange(0, 10):
            result[0] = result[0] + a
