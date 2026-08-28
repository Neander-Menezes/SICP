#lang sicp

(define (square x) (* x x))
(define (sum-square x y) (+ (square x) (square y)))

(define (sum-square-two-biggest x y z)
  (cond
    ((and (< x y) (< x z)) (sum-square y z))
    ((and (< y x) (< y z)) (sum-square x z))
    ((and (< z x) (< z y)) (sum-square x y))
    ))

; test cases
(sum-square-two-biggest 10 11 12)
(sum-square-two-biggest 11 10 12)
(sum-square-two-biggest 11 12 10)
