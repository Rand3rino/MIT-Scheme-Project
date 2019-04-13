


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

;;3
(define (logn n val)
    (/ (log val) (log n))
)

(logn 4 2)
(define (log2 val)
    (logn 2 val)
)

(log2 6)

;;; 4
(define list1 (list 1 2 3 4))
(define list2 (list 5 6 7 8))
(map + list1 list2 )
(map * list1 list2 )

;;;5
(define (dot-product vector1 vector2)
  (reduce-right + 0 (map * vector1 vector2))
)

(dot-product (list 1 2 3 4) (list 5 6 7 8))


;;; 6
(define (fib x) 
  (if (< x 2)
      x
      (+ (fib (- x 1)) (fib (- x 2)))
  )
)
(fib 5)
(fib 10)

;;7
(define (appendList list1 start end)
    (define start2 (+ start 1))
    (define list2 (list start2))
    (cond  ((< start end) (appendList (append list1 list2) start2 end))             
	(else list1))
)
(define (create-list start end)
    (define list1 (list start))
    (appendList list1 start end)
)

(create-list 1 10)
;;; 8
(define (fib-list x) 
	(map fib (create-list 1 x)))

;;9
(define (iterate list2 num finalNum)
     (cond ((= num finalNum) (car list2))
     (else (iterate (cdr list2) (+ num 1) finalNum)))
)

(iterate (list 1 2 3 4) 0 2)

(define (nth list1 num)
  (iterate list1 0 num)
)

(nth (list 1 2 3 4 5 6) 3)


;;; 10
(define (remainder a b) 
  (if (< a b)
      (remainder a (- b a) )
      b
  )
)

(remainder 4 13)
