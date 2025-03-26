(= (is-member $list $x)
   (match $list
      ( ($x . $rest) True )
      ( ($head . $rest) (is-member $rest $x) )
      ( () False )))


