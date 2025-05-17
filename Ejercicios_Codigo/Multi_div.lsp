;; multi con sumas
;; Division con restas

(
    defun multi(a b)
        (if (= b 0)
            0
            (
                + a (multi a (- b 1))
            )
        )
)


(
    defun divi(a b)
    (if (< a b)
        0
        (
            + 1 (divi (- a b) b)
        )
    )

)
