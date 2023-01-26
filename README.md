# softresize

softresize give us four functions to handle the sizing of windows. The reference in all windows (except for the windows in the borders down and rigth) are the down bar and the righ column. So enlargue window will move the base bar of current buffer to up, and reduce will move it to down. Similar behavior will occur for horizontal resize.

## Optional configuration

``` emacs-lisp
(global-set-key (kbd "C-s-<up>") 'softresize-enlarge-window)
(global-set-key (kbd "C-s-<down>") 'softresize-reduce-window)
(global-set-key (kbd "C-s-<right>") 'softresize-enlarge-window-horizontally)
(global-set-key (kbd "C-s-<left>") 'softresize-window-horizontally)

```

