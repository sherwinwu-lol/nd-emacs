
(fset '<s
   (kmacro-lambda-form [?\C-a ?# ?+ ?B ?E ?I backspace ?G ?I ?N ?_ ?S ?R ?C return ?# ?+ ?E ?N ?D ?_ ?S ?R ?C ?\C-p ?\C-e ? ] 0 "%d"))
(fset 'sc
   (kmacro-lambda-form [?\C-x ?o ?\C-x ?b ?* ?s ?c ?h ?e ?m ?e ?* return ?\C-x ?o] 0 "%d"))
(fset 'init-scm
   (kmacro-lambda-form [?\( ?l ?o ?a ?d ?  ?\" ?~ ?/ ?l ?o ?c ?a ?l ?c ?o ?d ?e ?s ?/ ?s ?i ?c ?p ?/ ?i ?n ?i ?t ?. ?s ?c ?m ?\" ?\) ?x backspace ?\C-x ?\C-e] 0 "%d"))
;; macro
(fset 'wusd/complete-pronounce
   (kmacro-lambda-form [?  ?o ?y ?$ ?  ?o ?p] 0 "%d"))
(fset 'wusd/ivy-push-view
   (kmacro-lambda-form [?\M-x ?i ?v ?y ?- ?p ?u ?s ?h ?- ?v ?i ?e ?w return return] 0 "%d"))
(fset 'wusd/ivy-pop-view
      (kmacro-lambda-form [?\M-x ?i ?v ?y ?- ?p ?o ?p ?- ?v ?i ?e ?w return return] 0 "%d"))


(defun macros-file()
  (interactive)
  (find-file "~/.emacs.d/lisp/init-kbd-macros.el"))


(provide 'init-kbd-macros)
