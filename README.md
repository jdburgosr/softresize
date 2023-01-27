# softresize

softresize give us four functions to handle the sizing of windows. The reference in all windows (except for the windows in the borders down and right) are the mode-line (the base bar) and the right column. So `enlarge-window` will move the mode-line of the current buffer upwards, and `reduce-window` will move it downwards. Similar behavior will occur for horizontal resize.


## Instalation
Clone this repo in local and add the load path to Emacs init fie.


### For newcomers
I'm doing this because I remember me, when I was just starting to use emacs ;)

1. First you have to clone this repo in your local machine because it is not in MELPA or any other package archive.
2. Next, add the code in Optional configuration to your init file.

### If Doom Emacs

If you are using doom Emacs, you can paste this code to package.el file.

``` emacs-lisp
(package! softresize
 :recipe (:host github :repo "jdburgosr/softresize"))
```

And then paste the code in Optional configuration in your config.el file ☺.

## Optional configuration

``` emacs-lisp
(require 'softresize)
(global-set-key (kbd "C-s-<up>") 'softresize-enlarge-window)
(global-set-key (kbd "C-s-<down>") 'softresize-reduce-window)
(global-set-key (kbd "C-s-<right>") 'softresize-enlarge-window-horizontally)
(global-set-key (kbd "C-s-<left>") 'softresize-reduce-window-horizontally)

```

## Demonstration

![muestra](images/test.gif "Testing")
