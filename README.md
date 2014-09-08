# Emacs 24.3 config on Ubuntu 14.04
Last Update : 2014-09-07

### 1. Installation Guide

#### C++ Development
```
$ sudo apt-get install cppcheck
$ sudo apt-get install ruby
$ sudo gem install plist trollop
$ sudo apt-get install rake
$ sudo apt-get install cscope
$ sudo apt-get install ctags
$ # sudo apt-get install libncurses5-dev
$ # install GNU Global without apt-get (see https://github.com/leoliu/ggtags)
```

#### Web Development

```
$ sudo npm install tern -g
$ sudo npm install jshint -g
$ sudo npm install jsonlint -g
$ # install tidy-html5 without apt-get (see https://github.com/w3c/tidy-html5)
```

#### Coffeescript development
```
$ sudo npm install coffeelint -g
```

#### Lisp Development
```
$ # install sbcl
$ # install slime using quicklisp
```

#### Scala Developement

install **Scala** and **SBT**

```
$ wget www.scala-lang.org/files/archive/scala-2.11.2.deb
$ sudo dpkg -i scala-2.11.2.deb

$ wget http://dl.bintray.com/sbt/debian/sbt-0.13.5.deb
$ sudo dpkg -i sbt-0.13.5.deb
```

#### Get Emacs Configuration
```
$ git clone --recursive git://github.com/ansterd/emacs-linux ~/.emacs.d/
$ cd ~/.emacs.d/
$ git submodule update --init --recursive
$
$ sudo apt-get install texinfo
$ cd ~/.emacs.d/site-lisp/cedet
$ make clean-all && make
$ cd ~/.emacs.d/site-lisp/cedet/contrib
$ make
$
$ cd ~/.emacs.d/site-lisp/yasnippet/yasmate
$ rake convert_bundles
$
$ cp ~/.emacs.d/config/.ctags  ~/.ctags
```

<br/>
### 2. Language Support

#### C/C++ (see `setup/language-c++.el`)
- **auto-complete-c-headers**
- **flycheck** (requires `cppcheck`)
- **ggtags** (requires `GNU Global`, `ctags`, `cscope`)

#### XHTML (see `setup/language-html.el`)
- **web-mode**
- **flycheck** (requires `tidy`)
- **emmet**
- **rainbow-mode**

#### Javasript, Node.js (see `setup/language-javascript.el`)
- **js2-mode**
- **flycheck** (requires `jshint`)
- **js2-refactor**
- **tern** (with tern-auto-complete, requires `tern`)
- **json-mode**
- **ectags** 
- **ac-js2**
- **skerew-mode**

#### Coffeescript (see `setup/language-coffee.el`)
 - **coffee-mode**
 - **flycheck** (require `coffeelint`)

#### Lisp (see `setup/language-lisp.el`)
- **ac-slime**

#### Scala (see `setup/language-scala.el`)
- **scala-mode2**
- **ensime**

<br>
### 3. Extensions

#### Used
- **cedet** (sr-speedbar)
- **auto-complete**
- **yasnippet**
- **evil** (surround, numbers, matchit, leader, exchange, nerd-commenter)
- **ido** (vertical, at-point, ubiquitous, flx-ido)
- **icomplete-mode**
- **ace-jump-mode**
- **smex**
- **expand-region**
- **helm**
- **thingatpt**
- **powerline**
- **uniquify**
- **recentf** (with ido)
- **bookmark+** (with ido)
- **windmove** 
- **windcycle**
- **buffcycle**
- **revive** (revive+)
- **frame-restore**
- **org** (org-ac)
- **fill-column-indicator**
- **iedit**
- **smartparens**
- **multiple-cursors**
- **ecb**
- **smart-forward**
- **etags** (etags-select, etags-table, helm-etags+-select)
- **projectile** 
- **perspective** (persp-projectile)

#### Installed But Not Used

Although the extensions listed below are not used,
They have their own configuration in `setup` directory
so that you can refer the configurations

- **icicles** (replaced with **ido**)
- **windows** (replaced with **revive+**)

<br>
### 4. Things You Should Need To Know
- ~~`caps lock` key bind with `ESC` because of **EVIL**~~

<br>
### 5. Key Bindings

- perspective
  - [C-x x n] : **persp-next**
  - [C-x x s] : **persp-switch**

- projectile
  - [C-c p] : prefix for projectile
  - [C-c p f] : find project file
  - [C-c p i] : invalidate cache
  - [C-c p d] : find project directory
  - [C-c p s] : switch porject

- etags/helm-etags+-select
  - [C-c t h] : **helm-etags-history**
  - [C-c t f] : **helm-etags-history-go-forward**
  - [C-c t b] : **helm-etags-history-go-back**
  - [C-c t r] : Reset tags table
  - [C-c t m] : etags TAGS file in current directory
  - [M-\]] : Set TAGS file and Find tag using `helm` 

- smart-forward
  - [M--] : **smart-up**
  - [M-=] : **smart-down**

- tern
  - [C-c j] : **tern-find-definition**
  - [M-.] : **tern-find-definition**
  - [M-,] : **tern-pop-find-definition**

- web-mode
  - [C-c C-f] : Fold and unfold code
  - [C-c C-s] : Insert web-mode snippet
  - [C-c C-w] : detect suspicious whitespaces
  - [C-c /] : **web-mode-element-close**
  - [C-c C-d d] : Show tag mismatch

- flycheck
  - [M-g n] : Goto next error
  - [M-g p] : Goto previous error

- ecb
  - [C-c w t] : **ecb-toggle-ecb-windows**
  - [C-c w c] : **ecb-toggle-ecb-compile**
  - [C-c w d] : **ecb-goto-window-directories**
  - [C-c w s] : **ecb-goto-window-sources**
  - [C-c w m] : **ecb-goto-window-methods**
  - [C-c w h] : **ecb-goto-window-history**

- sr-speedbar
  - [C-c C-w] : **sr-speedbar-toggle**

- ggtags
  - [M-\[] : Find references
  - [M-.] : Find tag
  - [M-,] : Continue find tag
  - [C-t] : Pop tag mark
  - [C-c M-j] : Visit project ROOT (**dired mode**)

- ggtags/navigation-mode
  - [M-n] : Move to the next match
  - [M-p] : Move to the previous match
  - [RET] : Exit navigation mode

- evil/evil-nerd-commenter
  - [,,j] : **evilnc-comment-or-uncomment-lines**
  - [2,ci] : **evilnc-comment-or-uncomment-lines**
  - [2,cc] : **evilnc-copy-and-comment-lines**

- evil/evil-exchange
  - [gx \<textobject\>] : **evil-exchange-key**
  - [gX] : **evil-exchange-cancle-key**
  - [gxx] : **evil-exchange-current-line-key**

- evil/evil-leader
  - [\\ k] : **kill-other-buffer**

- evil/surround
  - [ds \<textobject\>]: **delete surrounding things**
  - [cs \<texobject\>]: **change surrounding things**
  - [ys \<textobject\>]: **insert surrounding things**
  - [cd(ys)]\[\[i\]wWs][bBrt or a special character\]

- evil/evil-matchit
  - [%]: **evilmi-jump-item**
  - [,si]: **evilmi-select-item**
  - [,di]: **evilmi-delete-item**
  
- evil/evil-numbers
  - [C-c +]: **evil-numbers/inc-at-pt**
  - [C-c -]: **evil-numbers/dec-at-pt**

- yasnippet
  - [C-c s n]: **custom/create-new-snippet**
  - [C-c s r]: **yas-reload-all**
  - [S-TAB] : **yas-expand**

- ido
  - [C-c i]: **ido-goto-symbol**
  - [C-M-i] : **ido-at-point**

- ace-jump-mode
	- [C-c SPC] : **ace-jump-mode**
	- [C-u SPC] : **ace-jump-char**

- expand-region
  - [C-=] : **er/expand-region**

- helm
  - [C-c h] : **helm-mini**

- recentf
  - [C-c f] : **recent-ido-find-file**

- windmove
  - [M-\<arrow\>] : **switch window**
  - [C-x \<arrow\>] : **switch window**

- windcycle
  - [M-S-\<arrow\>] : **swap buffer**
  - [S-C-\<arrow\>] : **shrink, enlarge window**
  - [C-x x] : **delete-window**
  - [C-x |] : **split-window-horizontally**
  - [C-x -] : **split-window-vertically**

- buffcycle
  - [C-q] : **kill-this-buffer-if-not-scratch**
  - [C-Tab] : **next-buffer-cycle**

- windows
  - [C-c C-w 1~9] : **Switch to window 1~9**
  - [C-c C-w SPC] : **Switch to window previously shown**
  - [C-c C-w C-n] : **Switch to next window**
  - [C-c C-w C-p] : **Switch to previous window**
  - [C-c C-w !] : **Delete current window**

- org
  - [C-c a] : **org-agenda**
  - [C-c o] : **org-iswitch**
  - [C-c l] : **org-store-link**
  - [C-c C-l] : **org-insert-link**
  - [C-c C-o] : **org-open-at-point**

- iedit
  - [C-;] : **iedit-mode**

- multiple-cursors
  - [C-c m n] : **mc/mark-next-like-this**
  - [C-c m p] : **mc/mark-previous-like-this**
  - [C-c m a] : **mc/mark-all-like-this**
  - [C-c m s] : **mc/mark-all-symbols-like-this**
  - [C-c m t] : **mc/mark-sgml-tag-pair**

- bookmark
  - [C-c b] : **ido-jump-bookmark**

- cedet/semantic
  - [C-\<return\>] : **semantic-ia-complete-symbol-menu**
  - [C-c j] : **semantic-ia-fase-jump**
  - [C-c y] : **semantic-decoration-include-visit**
  - [C-c Y] : **semantic-decoration-unparsed-include-parse-all-includes**
  - [C-c p] : **semantic-analyze-proto-impl-toggle**
  - [C-c r] : **semantic-symref**
  
- cedet/senator
  - [C-c u] : **senator-fold-tag-toggle**
  - [C-c , n] : **senator-next-tag**
  - [C-c , p] : **senator-prev-tag**
  - [C-c , u] : **senator-go-to-up-reference**

- cedet/eassist
  - [C-c e] : **eassist-list-methods**
  - [C-c t] : **eassist-switch-h-cpp** (in **c-mode-common-hook** only)
  
