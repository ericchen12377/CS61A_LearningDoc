;; Scheme ;;

(define (over-or-under a b)
  'YOUR-CODE-HERE
  (cond
    ((< a b) -1)
    ((= a b) 0)
    (else 1))
)

;;; Tests
(over-or-under 1 2)
; expect -1
(over-or-under 2 1)
; expect 1
(over-or-under 1 1)
; expect 0

(define (filter-lst fn lst)
  'YOUR-CODE-HERE
  (cond ((null? lst) '())
        ((fn (car lst)) (cons (car lst) (filter-lst fn (cdr lst))))
        (else (filter-lst fn (cdr lst))))
)

;;; Tests
(define (even? x)
  (= (modulo x 2) 0))
(filter-lst even? '(0 1 1 2 3 5 8))
; expect (0 2 8)

(define (make-adder n)
  'YOUR-CODE-HERE
  (lambda (x) (+ x n))
)

;;; Tests
(define adder (make-adder 5))
(adder 8)
; expect 13

;; Extra questions

(define lst
  'YOUR-CODE-HERE
  (cons (cons 1 nil)
        (cons 2
              (cons (cons 3 (cons 4 nil))
                    (cons 5 nil))))
)

(define (composed f g)
  'YOUR-CODE-HERE
  (lambda (x) (f (g x)))
)

(define (remove item lst)
  'YOUR-CODE-HERE
  (cond ((null? lst) '())
        ((equal? item (car lst)) (remove item (cdr lst)))
        (else (cons (car lst) (remove item (cdr lst)))))
)


;;; Tests
(remove 3 nil)
; expect ()
(remove 3 '(1 3 5))
; expect (1 5)
(remove 5 '(5 3 5 5 1 4 5 4))
; expect (3 1 4 4)

(define (no-repeats s)
  'YOUR-CODE-HERE
  (if (null? s) s
    (cons (car s)
      (no-repeats (filter (lambda (x) (not (= (car s) x))) (cdr s)))))
)

(define (substitute s old new)
  'YOUR-CODE-HERE
  (cond ((null? s) nil)
        ((pair? (car s)) (cons (substitute (car s) old new)
                               (substitute (cdr s) old new)))
        ((equal? (car s) old) (cons new
                                    (substitute (cdr s) old new)))
        (else (cons (car s) (substitute (cdr s) old new))))
)


(define (sub-all s olds news)
  'YOUR-CODE-HERE
  (if (null? olds)
    s
    (sub-all (substitute s (car olds) (car news))
             (cdr olds)
             (cdr news)))
)