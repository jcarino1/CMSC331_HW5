		  ;3a Shift-left and shift-right (15 Points)
(define (shift-left l)
  (if (null? l)
      '()
      (append (cdr l)
              (cons (car l)
                    '()))
      )
  )

(define (shift-right l)
 (if (null? l)
     '()
     (append (shift-right (cdr l)) (list (car l)))
  )
)

		  ;3b Frequency Counter (15 Points)
(define (count mem l)
  (if (null? l)
      0
      (if (equal? mem (car l))
	  (+ 1 (count mem (cdr l)))
	  (count mem (cdr l))
	  )
      )
  )

		  ;4a (15 Points)
(define (formatDate l ls lst)
  (map
   string?
   (list l ls lst)
)
)

		  ;4b (15 Points)
(define (divideAll l)
  (apply /
     (filter (lambda (x) (> x 0)) l)

     )
  )

