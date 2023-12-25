(in-package :coding-math-cl)

(defsketch test ()
  (rect 100 100 200 200))
(make-instance 'test)

(defsketch trig ()
  (defun create-angles (a)
    (if (> a (* pi 2))
        (* pi 2)
        (progn
          (princ (sin a))
          (create-angles (+ a 0.1))))))

(create-angles 0)
