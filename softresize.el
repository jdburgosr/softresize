;;; softresize.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2023 Gidiom Gates
;;
;; Author: Gidiom Gates <juandbrg@hotmail.com>
;; Maintainer: Gidiom Gates <juandbrg@hotmail.com>
;; Created: enero 25, 2023
;; Modified: enero 25, 2023
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/gidiom/window_resize_improved
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;  This is my first package for GNU Emacs, are a simple set of functions to improve the beavior on resizingwindows.
;;
;;  Description:
;;
;;  softresize give us four functions to handle the sizing of windows. The reference in all windows (except for the windows in the borders down and rigth) are the down bar and the righ column. So enlargue window will move the base bar of current buffer to up, and reduce will move it to down. Similar behavior will occur for horizontal resize.
;;
;;; Code:



(provide 'softresize)
;;; window_resize_improved.el ends here


(defun softresize-enlarge-window ()
  "Enlarge windows to down direction.
Except in the base."
  (interactive)
  (if (and (window-in-direction 'up) (window-in-direction 'down))
      (shrink-window 1)
    (if (window-in-direction 'up)
        (enlarge-window 1)
      (shrink-window 1))))


(defun softresize-reduce-window ()
  "Reduce windows from down direction.
Except in the base."
  (interactive)
  (if (and (window-in-direction 'up) (window-in-direction 'down))
      (enlarge-window 1)
    (if (window-in-direction 'up)
        (shrink-window 1)
      (enlarge-window 1))))



(defun softresize-enlarge-window-horizontally ()
  "Enlarge windows horizontally to right direction.
Except in the rigth side."
  (interactive)
  (if (and (window-in-direction 'left) (window-in-direction 'right))
      (enlarge-window 1 t)
    (if (window-in-direction 'right)
        (enlarge-window 1 t)
      (shrink-window 1 t))))


(defun softresize-reduce-window-horizontally ()
  "Reduce window horizontally from rigth direction.
Except in the rigth side."
  (interactive)
  (if (and (window-in-direction 'left) (window-in-direction 'right))
      (shrink-window 1 t)
    (if (window-in-direction 'right)
        (shrink-window 1 t)
      (enlarge-window 1 t))))
