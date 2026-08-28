#lang sicp

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 5 -5)

; the if expression handles whether the operator will be "+" or "-"