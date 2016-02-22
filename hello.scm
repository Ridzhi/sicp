#lang scheme
;sicp course

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x)(square y)))

(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

(define (>= x y)
  (not (< x y)))

(define (<= x y)
  (not (> x y)))

(define (min x y)
  (if (<= x y) x y))

(define (max x y)
  (if (>= x y) x y))

(define (average x y)
  (/ (+ x y) 2))

(define (sum-squares-of-biggest a b c)
  ((sum-of-squares (max a b)((max (min a b) c)))))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improove guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if(good-enough? guess x)
     guess
     (sqrt-iter (improove guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))  
