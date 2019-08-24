;;;; clisptex-my-macros.asd

(asdf:defsystem #:clisptex-my-macros
  :description "Describe clisptex-my-macros here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :depends-on (#:clisptex)
  :serial t
  :components ((:file "package")
               (:file "clisptex-my-macros")
               (:file "fluid-mechanics")
               (:file "symmetries")))
