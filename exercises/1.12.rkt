#lang sicp

(define (pascal x y)
  (if (or (= y 0) (= x y))
      1
      (+ (pascal (- x 1) (- y 1))
         (pascal (- x 1) y))))

;pascal 4 2 = 6
(pascal 11 5)