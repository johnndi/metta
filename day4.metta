; Define the map function
(= (map $function $list)
   (if (== $list ())
       ()  ; Base case: empty list
       (let*
           (
            (($first $rest) (decons-atom $list))       ; Split the list into head and tail
            (newFirst ($function $first))              ; Apply the function to the head
            (newList (map $function $rest))            ; Recursively map over the tail
           )
         (cons-atom $newFirst $newList)                ; Combine result
       )
   )
)

; Define inc function (adds 1)
(= (inc $a)
   (+ 1 $a)
)

; Define double function (multiplies by 2)
(= (double $a)
   (* 2 $a)
)

; Test cases
!(map inc (1 3 4 5))       ; Expected: (2 4 5 6)
!(map double (1 2 3 4))    ; Expected: (2 4 6 8)
