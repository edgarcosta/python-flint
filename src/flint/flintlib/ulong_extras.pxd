from flint.flintlib.flint cimport ulong, flint_rand_t, slong, mp_limb_t
from flint.flintlib.fmpz cimport fmpz_t

cdef extern from "flint/ulong_extras.h":
#     ulong n_gcd(ulong n, ulong k)
#     int n_is_prime(ulong n)

# from here on is parsed
    ulong n_randlimb(flint_rand_t state)
    ulong n_randbits(flint_rand_t state, unsigned int bits)
    ulong n_randtest_bits(flint_rand_t state, int bits)
    ulong n_randint(flint_rand_t state, ulong limit)
    ulong n_urandint(flint_rand_t state, ulong limit)
    ulong n_randtest(flint_rand_t state)
    ulong n_randtest_not_zero(flint_rand_t state)
    ulong n_randprime(flint_rand_t state, ulong bits, int proved)
    ulong n_randtest_prime(flint_rand_t state, int proved)
    ulong n_pow(ulong n, ulong exp)
    ulong n_flog(ulong n, ulong b)
    ulong n_clog(ulong n, ulong b)
    ulong n_clog_2exp(ulong n, ulong b)
    ulong n_revbin(ulong n, ulong b)
    int n_sizeinbase(ulong n, int base)
    ulong n_preinvert_limb(ulong n)
    double n_precompute_inverse(ulong n)
    ulong n_mod_precomp(ulong a, ulong n, double ninv)
    ulong n_mod2_precomp(ulong a, ulong n, double ninv)
    ulong n_divrem2_preinv(ulong * q, ulong a, ulong n, ulong ninv)
    ulong n_div2_preinv(ulong a, ulong n, ulong ninv)
    ulong n_mod2_preinv(ulong a, ulong n, ulong ninv)
    ulong n_divrem2_precomp(ulong * q, ulong a, ulong n, double npre)
    ulong n_ll_mod_preinv(ulong a_hi, ulong a_lo, ulong n, ulong ninv)
    ulong n_lll_mod_preinv(ulong a_hi, ulong a_mi, ulong a_lo, ulong n, ulong ninv)
    ulong n_mulmod_precomp(ulong a, ulong b, ulong n, double ninv)
    ulong n_mulmod2_preinv(ulong a, ulong b, ulong n, ulong ninv)
    ulong n_mulmod2(ulong a, ulong b, ulong n)
    ulong n_mulmod_preinv(ulong a, ulong b, ulong n, ulong ninv, ulong norm)
    ulong n_gcd(ulong x, ulong y)
    ulong n_gcdinv(ulong * a, ulong x, ulong y)
    ulong n_xgcd(ulong * a, ulong * b, ulong x, ulong y)
    # int n_jacobi(mp_limb_signed_t x, ulong y)
    int n_jacobi_unsigned(ulong x, ulong y)
    ulong n_addmod(ulong a, ulong b, ulong n)
    ulong n_submod(ulong a, ulong b, ulong n)
    ulong n_invmod(ulong x, ulong y)
    # ulong n_powmod_precomp(ulong a, mp_limb_signed_t exp, ulong n, double npre)
    ulong n_powmod_ui_precomp(ulong a, ulong exp, ulong n, double npre)
    # ulong n_powmod(ulong a, mp_limb_signed_t exp, ulong n)
    # ulong n_powmod2_preinv(ulong a, mp_limb_signed_t exp, ulong n, ulong ninv)
    # ulong n_powmod2(ulong a, mp_limb_signed_t exp, ulong n)
    ulong n_powmod2_ui_preinv(ulong a, ulong exp, ulong n, ulong ninv)
    ulong n_powmod2_fmpz_preinv(ulong a, const fmpz_t exp, ulong n, ulong ninv)
    ulong n_sqrtmod(ulong a, ulong p)
    slong n_sqrtmod_2pow(ulong ** sqrt, ulong a, slong exp)
    slong n_sqrtmod_primepow(ulong ** sqrt, ulong a, ulong p, slong exp)
    # slong n_sqrtmodn(ulong ** sqrt, ulong a, n_factor_t * fac)
    mp_limb_t n_mulmod_shoup(mp_limb_t w, mp_limb_t t, mp_limb_t w_precomp, mp_limb_t p)
    mp_limb_t n_mulmod_precomp_shoup(mp_limb_t w, mp_limb_t p)
    int n_divides(mp_limb_t * q, mp_limb_t n, mp_limb_t p)
    # void n_primes_init(n_primes_t iter)
    # void n_primes_clear(n_primes_t iter)
    # ulong n_primes_next(n_primes_t iter)
    # void n_primes_jump_after(n_primes_t iter, ulong n)
    # void n_primes_extend_small(n_primes_t iter, ulong bound)
    # void n_primes_sieve_range(n_primes_t iter, ulong a, ulong b)
    void n_compute_primes(ulong num_primes)
    const ulong * n_primes_arr_readonly(ulong num_primes)
    const double * n_prime_inverses_arr_readonly(ulong n)
    void n_cleanup_primes()
    ulong n_nextprime(ulong n, int proved)
    ulong n_prime_pi(ulong n)
    void n_prime_pi_bounds(ulong *lo, ulong *hi, ulong n)
    ulong n_nth_prime(ulong n)
    void n_nth_prime_bounds(ulong *lo, ulong *hi, ulong n)
    int n_is_oddprime_small(ulong n)
    int n_is_oddprime_binary(ulong n)
    int n_is_prime_pocklington(ulong n, ulong iterations)
    int n_is_prime_pseudosquare(ulong n)
    int n_is_prime(ulong n)
    int n_is_strong_probabprime_precomp(ulong n, double npre, ulong a, ulong d)
    int n_is_strong_probabprime2_preinv(ulong n, ulong ninv, ulong a, ulong d)
    int n_is_probabprime_fermat(ulong n, ulong i)
    int n_is_probabprime_fibonacci(ulong n)
    int n_is_probabprime_BPSW(ulong n)
    int n_is_probabprime_lucas(ulong n)
    int n_is_probabprime(ulong n)
    ulong n_CRT(ulong r1, ulong m1, ulong r2, ulong m2)
    ulong n_sqrt(ulong a)
    ulong n_sqrtrem(ulong * r, ulong a)
    int n_is_square(ulong x)
    int n_is_perfect_power235(ulong n)
    int n_is_perfect_power(ulong * root, ulong n)
    ulong n_rootrem(ulong* remainder, ulong n, ulong root)
    ulong n_cbrt(ulong n)
    ulong n_cbrt_newton_iteration(ulong n)
    ulong n_cbrt_binary_search(ulong n)
    ulong n_cbrt_chebyshev_approx(ulong n)
    ulong n_cbrtrem(ulong* remainder, ulong n)
    int n_remove(ulong * n, ulong p)
    int n_remove2_precomp(ulong * n, ulong p, double ppre)
    # void n_factor_insert(n_factor_t * factors, ulong p, ulong exp)
    # ulong n_factor_trial_range(n_factor_t * factors, ulong n, ulong start, ulong num_primes)
    # ulong n_factor_trial(n_factor_t * factors, ulong n, ulong num_primes)
    ulong n_factor_power235(ulong *exp, ulong n)
    ulong n_factor_one_line(ulong n, ulong iters)
    ulong n_factor_lehman(ulong n)
    ulong n_factor_SQUFOF(ulong n, ulong iters)
    # void n_factor(n_factor_t * factors, ulong n, int proved)
    # ulong n_factor_trial_partial(n_factor_t * factors, ulong n, ulong * prod, ulong num_primes, ulong limit)
    # ulong n_factor_partial(n_factor_t * factors, ulong n, ulong limit, int proved)
    ulong n_factor_pp1(ulong n, ulong B1, ulong c)
    ulong n_factor_pp1_wrapper(ulong n)
    int n_factor_pollard_brent_single(mp_limb_t *factor, mp_limb_t n, mp_limb_t ninv, mp_limb_t ai, mp_limb_t xi, mp_limb_t normbits, mp_limb_t max_iters)
    int n_factor_pollard_brent(mp_limb_t *factor, flint_rand_t state, mp_limb_t n_in, mp_limb_t max_tries, mp_limb_t max_iters)
    int n_moebius_mu(ulong n)
    void n_moebius_mu_vec(int * mu, ulong len)
    int n_is_squarefree(ulong n)
    ulong n_euler_phi(ulong n)
    ulong n_factorial_fast_mod2_preinv(ulong n, ulong p, ulong pinv)
    ulong n_factorial_mod2_preinv(ulong n, ulong p, ulong pinv)
    # ulong n_primitive_root_prime_prefactor(ulong p, n_factor_t * factors)
    ulong n_primitive_root_prime(ulong p)
    ulong n_discrete_log_bsgs(ulong b, ulong a, ulong n)
    # void n_factor_ecm_double(mp_limb_t *x, mp_limb_t *z, mp_limb_t x0, mp_limb_t z0, mp_limb_t n, n_ecm_t n_ecm_inf)
    # void n_factor_ecm_add(mp_limb_t *x, mp_limb_t *z, mp_limb_t x1, mp_limb_t z1, mp_limb_t x2, mp_limb_t z2, mp_limb_t x0, mp_limb_t z0, mp_limb_t n, n_ecm_t n_ecm_inf)
    # void n_factor_ecm_mul_montgomery_ladder(mp_limb_t *x, mp_limb_t *z, mp_limb_t x0, mp_limb_t z0, mp_limb_t k, mp_limb_t n, n_ecm_t n_ecm_inf)
    # int n_factor_ecm_select_curve(mp_limb_t *f, mp_limb_t sigma, mp_limb_t n, n_ecm_t n_ecm_inf)
    # int n_factor_ecm_stage_I(mp_limb_t *f, const mp_limb_t *prime_array, mp_limb_t num, mp_limb_t B1, mp_limb_t n, n_ecm_t n_ecm_inf)
    # int n_factor_ecm_stage_II(mp_limb_t *f, mp_limb_t B1, mp_limb_t B2, mp_limb_t P, mp_limb_t n, n_ecm_t n_ecm_inf)
    # int n_factor_ecm(mp_limb_t *f, mp_limb_t curves, mp_limb_t B1, mp_limb_t B2, flint_rand_t state, mp_limb_t n)