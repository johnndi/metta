;;union-atom contains function ->(12345) 1

;; impliment union-atom -> eqivalent to set union function

;;impliment function to find unique sibling using subtract-atom

 
 (person mary 64 female)
(person smith 20 female)
(person lisa 27 female)
(person adam 30 male)
(person lily 10 female)

(smith isParentOf lisa)
(smith isParentOf adam)

(=(getPerson $name)(match &self (person $name $age $gender)  (person $name $age $gender)))

;;!(union-atom (11 12 34 56 78) (40 45 84 12))

(=(union($x) ($y)) (union-atom ($x $y)) )

;;!(union (lisa) (smith))

;;(= (isSibling $x $y) (match &self ($n isParentOf $x) (match &self ($n isParentOf $y) (subtraction-atom($x $y) () ))))

;;!(isSibling lisa adam)

(=(contains $x $list) (let $result (intersection-atom 4list ($x))
(if (==$result ())

False
True)
))

$list -> (1234), $x ->1

;;!(let ($a $b) (A B C) ($a $b)
;;(let $ (getPerson male)))


!(unique-atom (union-atom (1234) (1567)))

!(let $result (union-atom $setA $setB) (unique-atom $result))




(=(SetUnion $seta $setb) (let $result (union-atom $setA $setB)(unique-atom $result)))




!("hello world")