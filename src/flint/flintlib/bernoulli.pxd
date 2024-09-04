from flint.flintlib.types.flint cimport ulong, slong
from flint.flintlib.fmpq cimport fmpq_t, fmpq_struct
from flint.flintlib.fmpz cimport fmpz_t

cdef extern from "flint/bernoulli.h":
# from here on is parsed
    # void bernoulli_rev_init(bernoulli_rev_t iter, ulong n)
    # void bernoulli_rev_next(fmpz_t numer, fmpz_t denom, bernoulli_rev_t iter)
    # void bernoulli_rev_clear(bernoulli_rev_t iter)
    void bernoulli_fmpq_vec_no_cache(fmpq_struct * res, ulong a, slong num)
    void bernoulli_cache_compute(slong n)
    slong bernoulli_bound_2exp_si(ulong n)
    ulong bernoulli_mod_p_harvey(ulong n, ulong p)
    void _bernoulli_fmpq_ui_zeta(fmpz_t num, fmpz_t den, ulong n)
    void _bernoulli_fmpq_ui_multi_mod(fmpz_t num, fmpz_t den, ulong n, double alpha)
    void _bernoulli_fmpq_ui(fmpz_t num, fmpz_t den, ulong n)
    void bernoulli_fmpq_ui(fmpq_t b, ulong n)

