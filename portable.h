/*
 * Multi-platform support.
 */

#ifndef _PATH_DEFTAPE
#define _PATH_DEFTAPE "/dev/rst0"
#endif /* !_PATH_DEFTAPE */

#ifndef timespeccmp
#define timespeccmp(tsp, usp, cmp)                                      \
        (((tsp)->tv_sec == (usp)->tv_sec) ?                             \
            ((tsp)->tv_nsec cmp (usp)->tv_nsec) :                       \
            ((tsp)->tv_sec cmp (usp)->tv_sec))
#endif /* !timespeccmp */
