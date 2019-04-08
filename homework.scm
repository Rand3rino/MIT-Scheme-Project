;;; 1
(define pi 3.14159)
(define e 2.71828)
pi
e

;;; 2
(define (circle-specs radius) 
  (let (
	(pi_times_r
	  (* pi radius) ) )
       (list (* 2 pi_times_r)
	     (* radius pi_times_r)
       )
  )
)
(circle-specs 10)

;;; 4
(define list1 (list 1 2 3 4))
(define list2 (list 5 6 7 8))
(map + list1 list2 )
(map * list1 list2 )

;;; 6
(define (fib x) 
  (if (< x 2)
      x
      (+ (fib (- x 1)) (fib (- x 2)))
  )
)
(fib 5)
(fib 10)

;;; 8
;(define (fib-list x) 


;;; 10
(define (remainder a b) 
  (if (< a b)
      (remainder a (- b a) )
      b
  )
)

(remainder 4 13)
