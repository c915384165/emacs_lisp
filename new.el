(+ 2 2)
(string-to-list "")
(string-to-list "ab")
(string-to-list "abcde")
(concat (reverse (string-to-list "")))
(concat (reverse (string-to-list "abc")))
(concat (reverse (string-to-list "abcde")))
(mapconcat 'number-to-string (number-sequence 1 5) "")
(mapconcat 'number-to-string (reverse (number-sequence 1 5)) "")