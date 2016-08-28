
;; arrays 
(make-array '(4 1 3)
            :initial-contents
            '(((a b c) (1 2 3))
              ((d e f) (3 1 2))
              ((g h i) (2 3 1))
              ((j k l) (0 0 0))))

(make-array 5)
(make-array '(2 2))
(make-array '(2 3) :element-type '(mod 16))

(make-array 5 :element-type 'single-float)
(make-array (1+ 5) :initial-element 0 :element-type `(integer 0 ,(length '(1 2 3))))

;; maps
(map 'string #'(lambda (x y)
                 (char "01234567890ABCDEF" (mod (+ x y) 16)))
     '(1 2 3 4 5)
     '(10 9 8 7))

(setq seq '("lower" "UPPER" "" "123"))
(map nil #'nstring-upcase seq) ;; => nil but seq will contain ("LOWER" "UPPER" "" "123")

(map 'list #'- '(1 2 3 4))
(map 'string #'(lambda (x) (if (oddp x) #\1 #\0))
     '(1 2 3 4 5))

;; (map '(vector * 4) #'cons "abc" "de") => error since type cant be obtained

(setq alpha (make-array 4))
(aref alpha 3)
(setf (aref alpha 3) 'sirens)

;; map-into
(setq a (list 1 2 3) b (list 10 10 10))
(map-into a #'+ a b)

(setq k '(one two three))
(map-into a #'cons k a)

(map-into a #'gensym)

;; do

(do ((temp-one 1 (1+ temp-one))
     (temp-two 0 (1- temp-two)))
    ((> (- temp-one temp-two) 5) temp-one))

;; plusp
(minusp -1)
(plusp 0)
(plusp least-positive-single-float)
(plusp 1)

