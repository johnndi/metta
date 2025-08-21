!(index-atom(1 2 3 4 5) 3)
!(size-atom())


 (= (product $list)
   (if (== $list ())
       1
       (* (car-atom $list) (product (cdr-atom $list)))
    )
 )

(=(sum (cons $head $tail)))

;;!(sum (cons 1 (cons 2 (cons 3 (cons 4 (cons 5 []))))))



(=(product (cons $head $tail))
    (* $head (product $tail))
 )



!(product(1 2 3 4 5))


(=(sum $list $n) 
(if (>= $n (size-atom $list))
0
(let*(
($nth (index-atom $list $n))
;;(nextElementIndx(+ $n 1))

($sumRest (sum $list (+ $n 1)))
)
(+ $sumRest $nth))

))

!(sum (1 2 3 4 5))