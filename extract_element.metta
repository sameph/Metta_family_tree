(= (extracter $list $pred)
   (let $helper (lambda ($acc $remaining)
      (match $remaining
         ( () (reverse $acc) )
         ( ($head . $tail)
            (if ($pred $head)
                ($helper ($head . $acc) $tail)
                ($helper $acc $tail))))))
   ($helper () $list))

; Example predicate
(= (notEmpty $x)
   (match $x
      ( () False )
      ( _ True )))