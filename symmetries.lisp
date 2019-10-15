;;; commands that can be useful for typesetting Lie-symmetry-related formulas

(in-package #:clisptex)


(defun trans (var)
  (make-exponent var "*"))

(defun transeq (var)
  (concatenate 'string (trans var) " = "))

(defun tex-symmetry (name expression)
  (concatenate 'string    (if (stringp name)
                              (tex-cmd "infGen" (tex-cmd 'text name))
                              (tex-cmd "infGen" name))
               " = "
               expression))

(defun tex-simple-symmetry (name diff-var &optional mult-var)
  (tex-symmetry name
		(concatenate 'string mult-var (pd nil diff-var))))

(defun rotmat (index1 index2 &optional axis)
  (make-exponent
   (make-index "Q" (concatenate 'string (tex-to-string index1) (tex-to-string index2)))
   (wrap-brackets (if axis axis (tex-cmd 'alpha)))))
