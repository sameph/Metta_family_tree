(= (removeDuplicates $list)
   (let $helper (lambda ($seen $remaining)
      (match $remaining
         ( () (reverse $seen) )
         ( ($head . $tail)
            (if (is-member $seen $head)
                ($helper $seen $tail)
                ($helper ($head . $seen) $tail))))))
   ($helper () $list))


