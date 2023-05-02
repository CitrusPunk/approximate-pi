; REQUIREMENTS
; Some web browser
; USAGE
; Go to https://onecompiler.com/commonlisp/
; Copy paste the code below into editor
; Don't copy paste the comments because the website won't run if URLs are included in the code
; Hit run in the editor

(defun approximate-pi ()
  (let ((in-circle 0))
  (let ((iterations 100000000))
    (dotimes (n iterations)
      (let ((x (random 1.0)))
        (let ((y (random 1.0)))
          (let ((dist (sqrt (+ (* x x) (* y y)))))
            (if (< dist 1.0)
                (setf in-circle (+ in-circle 1)))))))
    (let ((approximation (* 4 (/ (float in-circle) (float iterations)))))
      (format t "Pi approximation: ~a~%" approximation)))))

(approximate-pi)
