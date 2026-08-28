#lang sicp

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.01))

(define (average x y)
  (/ (+ x y) 2))

(define (improve-guess guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (display guess)
  (newline)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve-guess guess x) x)))

(sqrt-iter 1.0 2)
; guess x iterations
;