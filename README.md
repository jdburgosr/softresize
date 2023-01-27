# softresize

softresize give us four functions to handle the sizing of windows. The reference in all windows (except for the windows in the borders down and rigth) are the down bar and the righ column. So enlargue window will move the base bar of current buffer to up, and reduce will move it to down. Similar behavior will occur for horizontal resize.


## Instalation
Clone this repo in local and add the load path to Emacs init fie.


### For newest
Im doing this because I remember me, when just was starting using emacs ;)

1. First you have to clone this repo in your local machine because is not in MELPA or similar.
2. Next add the code in Optional configuration to your init file.

### If Doom Emacs

If you are in doom Emacs, you can paste this code to package.el file

``` emacs-lisp
(package! softresize
 :recipe (:host github :repo "jdburgosr/softresize"))
```

And then paste the code in Optional configuration in your config.el file. ☺

## Optional configuration

``` emacs-lisp
(require 'softresize)
(global-set-key (kbd "C-s-<up>") 'softresize-enlarge-window)
(global-set-key (kbd "C-s-<down>") 'softresize-reduce-window)
(global-set-key (kbd "C-s-<right>") 'softresize-enlarge-window-horizontally)
(global-set-key (kbd "C-s-<left>") 'softresize-reduce-window-horizontally)

```

## Demostration

![muestra](images/test.gif "Testing")
