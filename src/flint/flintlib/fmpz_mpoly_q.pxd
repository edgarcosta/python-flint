from flint.flintlib.types.flint cimport mp_limb_t, flint_rand_t, slong
from flint.flintlib.fmpq cimport fmpq_t
from flint.flintlib.fmpz cimport fmpz_t
from flint.flintlib.fmpz_mpoly cimport fmpz_mpoly_ctx_t, fmpz_mpoly_t, fmpz_mpoly_struct

cdef extern from "flint/fmpz_mpoly_q.h":
    ctypedef struct fmpz_mpoly_q_struct:
        fmpz_mpoly_struct num
        fmpz_mpoly_struct den
    ctypedef fmpz_mpoly_q_struct fmpz_mpoly_q_t[1]

    fmpz_mpoly_struct * fmpz_mpoly_q_numref(fmpz_mpoly_q_t x)
    fmpz_mpoly_struct * fmpz_mpoly_q_denref(fmpz_mpoly_q_t x)
    void fmpz_mpoly_q_init(fmpz_mpoly_q_t res, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_clear(fmpz_mpoly_q_t res, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_swap(fmpz_mpoly_q_t x, fmpz_mpoly_q_t y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_set(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_set_fmpq(fmpz_mpoly_q_t res, const fmpq_t x, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_set_fmpz(fmpz_mpoly_q_t res, const fmpz_t x, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_set_si(fmpz_mpoly_q_t res, slong x, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_canonicalise(fmpz_mpoly_q_t x, const fmpz_mpoly_ctx_t ctx)
    int fmpz_mpoly_q_is_canonical(const fmpz_mpoly_q_t x, const fmpz_mpoly_ctx_t ctx)
    int fmpz_mpoly_q_is_zero(const fmpz_mpoly_q_t x, const fmpz_mpoly_ctx_t ctx)
    int fmpz_mpoly_q_is_one(const fmpz_mpoly_q_t x, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_used_vars(int * used, const fmpz_mpoly_q_t f, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_used_vars_num(int * used, const fmpz_mpoly_q_t f, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_used_vars_den(int * used, const fmpz_mpoly_q_t f, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_zero(fmpz_mpoly_q_t res, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_one(fmpz_mpoly_q_t res, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_gen(fmpz_mpoly_q_t res, slong i, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_print_pretty(const fmpz_mpoly_q_t f, const char ** x, fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_randtest(fmpz_mpoly_q_t res, flint_rand_t state, slong length, mp_limb_t coeff_bits, slong exp_bound, const fmpz_mpoly_ctx_t ctx)
    int fmpz_mpoly_q_equal(const fmpz_mpoly_q_t x, const fmpz_mpoly_q_t y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_neg(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_add(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, const fmpz_mpoly_q_t y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_add_fmpq(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, const fmpq_t y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_add_fmpz(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, const fmpz_t y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_add_si(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, slong y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_sub(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, const fmpz_mpoly_q_t y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_sub_fmpq(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, const fmpq_t y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_sub_fmpz(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, const fmpz_t y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_sub_si(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, slong y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_mul(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, const fmpz_mpoly_q_t y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_mul_fmpq(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, const fmpq_t y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_mul_fmpz(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, const fmpz_t y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_mul_si(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, slong y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_div(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, const fmpz_mpoly_q_t y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_div_fmpq(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, const fmpq_t y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_div_fmpz(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, const fmpz_t y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_div_si(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, slong y, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_inv(fmpz_mpoly_q_t res, const fmpz_mpoly_q_t x, const fmpz_mpoly_ctx_t ctx)
    void _fmpz_mpoly_q_content(fmpz_t num, fmpz_t den, const fmpz_mpoly_t xnum, const fmpz_mpoly_t xden, const fmpz_mpoly_ctx_t ctx)
    void fmpz_mpoly_q_content(fmpq_t res, const fmpz_mpoly_q_t x, const fmpz_mpoly_ctx_t ctx)
