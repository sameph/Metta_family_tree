; Family tree representation
(= (Parent Bob) Ann)
(= (Parent Bob) Joe)
(= (Parent Ann) Mary)
(= (Parent Ann) John)

; Function to find children
(= (find-children $person)
   (match & (Parent $person) $child $child))

; Function to find grandchildren
(= (find-grandchildren $person)
   (let $children (find-children $person))
   (match & (Parent $children) $grandchild $grandchild))


   