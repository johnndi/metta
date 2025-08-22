
;;!(map-atom (1  2 3 4) $x (+ $x 1))

;;!(foldl-atom (1 2 3 4 5) 1 $acc $first (* $acc $first ))





; (= (map $function $list) ;; (2 3), (3), ()
; (if (== $list ())
; ()
;     (let*
;         (
;         ;; ($first (car-atom $list))
;         ;; ($rest (cdr-atom $list))
;         (($first $rest) (decons-atom $list)) ;; 2
;         ($newFirst ($function $first)) ;; 4
;         ($newRest (map $function $rest)) ;; (3): (4)
;         )
;     (cons-atom $newFirst $newRest);; 4 -> () => (4), 3 -> (4) => (3 4)
;     )
; )
; )


; !(foldl-atom (1 2 3 4 5) 1 $acc $first (+ $acc $first))
;;!(foldr-atom (1 2 3 4 5) 1 $acc $first (+ $acc $first))



(= (count $target $list)
    (if (== $list ())
        0
        (let*
            (
                (($first $rest) (decons-atom $list))
                ($countRest (count $target $rest))
                ($newCount (if (== $first $target)
                                (+ 1 $countRest)
                                $countRest))
            )
            $newCount
        )
    )
)
!(count 2 (1 2 3 2 4 2))
!(count 5 (1 2 3 4))


(= (filter $pred $list)
    (if (== $list ())
        ()
        (let*
            (
                (($first $rest) (decons-atom $list))
                ($filteredRest (filter $pred $rest))
                ($filteredList (if ($pred $first)
                                      (cons-atom $first $filteredRest)
                                      $filteredRest))
            )
            $filteredList
        )
    )
)
(= (is-even $x) (== (% $x 2) 0))
!(filter is-even (1 2 3 4 5  ))




(= (foldl $f $acc $list)
    (if (== $list ())
        $acc
        (let*
            (
                (($first $rest) (decons-atom $list))
                ($newAcc ($f $acc $first))
            )
            (foldl $f $newAcc $rest)
        )
    )
)
!(foldl + 6 (1 2 3 4 5))