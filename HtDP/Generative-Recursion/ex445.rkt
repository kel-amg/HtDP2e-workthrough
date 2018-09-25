;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname ex445) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define ε 0)

; check within ε find-root helper
(define (within? n)
  (<= (abs (poly n)) ε))

; [Number -> Number] Number Number -> Number
; determines R such that f has a root in [R,(+ R ε)]
; assume f is continuous 
; assume (or (<= (f left) 0 (f right)) (<= (f right) 0 (f left)))
; generative divides interval in half, the root is in one of the two
; halves, picks according to assumption
(check-satisfied (find-root poly 3 6) within?)

(define (find-root f left right)
  0)

; Number -> Number
(check-expect (poly 2)  0)
(check-expect (poly 3) -1)
(check-expect (poly 4)  0)
(check-expect (poly 6)  8)

(define (poly x)
  (* (- x 2) (- x 4)))