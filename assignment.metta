(mary john)
(smith lisa)
(adam lily)

(mary isParentOf smith)
(mary isParentOf lisa)

(john isParentOf smith)
(john isParentOf lisa)

(lisa isParentOf lily)
(adam isParentOf lily)

(=()())

!(match &self (mary isParentOf $y) (" mary is Parent Of" $y))
!(match &self (lisa isParentOf $y) (" lisa is Parent Of" $y))
!(match &self (adam isParentOf $y) (" adam is Parent Of" $y))