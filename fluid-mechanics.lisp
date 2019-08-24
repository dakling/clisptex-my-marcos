;;; commands that can be useful in the context of fluid mechanics formulas
;;; TODO implement these functions natively


(in-package #:clisptex)

(defun avg (arg)
  (tex-cmd 'overbar arg))

(defun u (i)
  (make-index "U" i))

(defun urot (i)
  (make-index "V" i))

(defun um (&rest i)
  (cond
   ((= 1 (length i)) (make-index (tex-cmd "mean" "U") i))
   (t (make-index 'H i))))
;; (defun um (&rest i)
;;   (tex-cmd "um" i))

(defun umrot (&rest i)
  (make-index (tex-cmd "mean" "V") i))

(defun uf (&rest i)
  (tex-cmd "uf" i))

(defun ufrot (&rest i)
  (make-index "v" i))

(defun ua (&rest i)
  (tex-cmd "ua" i))

(defun uarot (&rest i)
  (make-index (tex-cmd "frak" "V") i))

(defun ud (&rest i)
  (wrap-parens (concat-space (apply #'ua i) "-" (apply #'um i))))

(defun p ()
  "the pressure"
  "P")

(defun pm ()
  (tex-cmd "pm"))

(defun x (i)
  (make-index 'x i))

(defun xi (i)
  (make-index (tex-symbol 'xi) i))

(defun xa (i)
  (make-index (tex-cmd 'frak 'x) i))

(defun xd (i)
  (wrap-parens (concat-space (xa i) "-" (x i))))

(defun angular-velocity (&optional index)
  (if index
      (make-index (tex-cmd "Omega") index)
      (tex-cmd "Omega")))

(defun mixing-length ()
  (make-index "L" "m"))
