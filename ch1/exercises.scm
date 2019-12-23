; 1.2 
(define answer1.1 (/ (+ 5 
      4 
      (- 2 
         (- 3 
            (+ 6 
              (/ 4 5)
            )
         )
      )
    )
    (* 3
       (- 6 2)
       (- 2 7)
    )
))
; 1.3
; define a procedure that takes three number as arguments and return the sum of squares of the 
; two largest.

(define (square x) (* x x))

(define (max a b c)(
    cond ((and (> a b) (> a c)) a)
         ((and (> b a) (> b c)) b)
    (else c)
    )
)

(define (second-max a b c) (
    cond ((or
            (and (> a b) (< a c))
            (and (< a b) (> a c))
           ) a)
         ((or 
             (and (> b a) (< b c))
             (and (< b a) (> b c))
          ) b)
    (else c)
    )
)

(define (sum-highest-squares a b c) 
    (+ (square (max a b c))
       (square (second-max a b c))
    )
)

; 1.7 
; Define sqrt

(define (good-enough? previous-guess guess x)
    (< (if 
            (< (- previous-guess guess) 0)
            (/ (- guess previous-guess) x)
            (/ (- previous-guess guess ) x)
        ) 
        0.01 
    )
)

(define (average a b) (
    / (+ a b) 
      2    
    )
)

(define (next-guess guess x) (
    ; Newton and Heron's Method
    ; Average guess and x
    average guess (/ x guess)
    )
)

(define (sqrt-iter previous-guess guess x)(
    if (good-enough? previous-guess guess x) 
        guess
        (sqrt-iter 
            guess 
            (next-guess guess x) 
            x
        )
     )
)

(define (sqrt x) (sqrt-iter 1 x x))

; 1.8
; Define Cube Root

(define (next-cb-guess guess x)(
    / (+ (/ x 
           (* guess guess))
         (* 2 guess))
      3    
    )
)

(define (cbrt-iter previous-guess guess x) (
    if (good-enough? previous-guess guess x) 
        guess
        (cbrt-iter 
            guess 
            (next-cb-guess guess x) 
            x
        )
     )
)


(define (cbrt x) (cbrt-iter 1 x x))

;Scratch

(define (factorial a)
    (if (= a 1) 
         1 
        ( * a
            (factorial (- a 1))
        )
    )
)

; Exercise 1.9
; Ackerman's

(define (ack x y) (
    cond 
        ((= y 0) 
            0)
        ((= x 0) 
            (* 2 y))
        ((= y 1) 
            2)
        (else 
            (ack 
                (- x 1) 
                (ack x (- y 1))
                )
            )
        )
    )
; Exercise 1.11

(define (recursive-f n) 
    (cond 
        ((< n 3) n)
        (#t 
            (+
                (recursive-f (- n 1))
                (* 3 (recursive-f (- n 3)))
            )
        )
    )
)

 ;; ex 1.11. Iterative implementation 
  
;  (define (f n) 
;    (define (iter a b c count) 
;      (if (= count 0) 
;        a 
;        (iter b c (+ c (* 2 b) (* 3 a)) (- count 1)))) 
;    (iter 0 1 2 n)) 

