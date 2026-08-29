#lang sicp

(define (test n)
  (if (< n 3)
      n
      (+ (test (- n 1)) (test (- n 2)) (test (- n 3))))
  )

(test 4)