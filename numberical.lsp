;; Numerical.lsp 
;;
;; A collection of functions for factoring, primality testing and a
;; function to construct powersets
;;
;; Author: John DeSanto, john@johndesanto.com
;;
;;


;; function: powerset
;; Return the power set of a list

(define (powerset x)
  (if (empty? x)
      (list '())
      (let ( (element (first x))
             (p (powerset (rest x))))
           (append (map (fn (subset) (cons element subset)) p) p) )))


;; function: factor-group
;; A different factoring algorithm uses "factor" but groups the results
;; e.g. (factor-group 45) --> ((3 2) (5 1))

(define (factor-group num)
  (let (factorlist (factor num) factorlist-grouped '())
    (dolist (y (unique factorlist))
       (push (append (list y) (count (list y) factorlist)) factorlist-grouped -1))
    factorlist-grouped))


;; function: isprime?
;; This is the slow but sure method to determining if a number is prime.

(define (isprime? n)
  (if (divides? 2 n)
      nil
      (= 1 (length (factor n)))))


;; function: divides?
;; Sometimes written "small | large"

(define (divides? small large)
  (= 0 (mod large small)))


;; function: nextprime
;;  

(define (nextprime n) 
  (do-until (isprime? n) 
    (inc n)) 
    n)


;; function: nextprime2 
;; Marginally faster.  Doesn't test even numbers, but the extra conditional
;; slows it down.

(define (nextprime2 n)
  (inc n)
  (if (divides? 2 n)
      (nextprime2 n)
      (if (isprime? n) n (nextprime2 (inc n)))))


;; function: isprime?-v2 (incomplete)
;;
;; Another primality checker.  This may be faster if the function is sent a list of known primes.
;; For very large primes, perhaps even those larger than can be represented as integers, it is 
;; common practice to test the prime by dividing by the first 10000 or so primes.  This routine
;; could also be improved by replacing "factor" with an algorithm that is optimized for larger
;; numbers.

(define (isprime?-v2 n known_primes)
   (if (find 0 (map mod (series n 1 (length known_primes)) known_primes))
       nil
       (= 1 (length (factor n)))))