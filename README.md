# Emacs 24.3 config on Ubuntu 14.04
Last Update : 2014-05-04

### 1. Installation Guide

```
$ git clone --recursive git://github.com/ansterd/emacs-linux ~/.emacs.d/
$ cd ~/.emacs.d/site-lisp/cedet
$ make clean-all && make
$ cd ~/.emacs.d/site-lisp/cedet/contrib
$ make
```

### 2. Language Support

#### C/C++ (see `setup/language-c++.el`)
- **auto-complete-c-headers**
- **flycheck** (requires `cppcheck`)

### 3. Extensions

#### Used
- **cedet** (requires `GNU Global`, `ectags`)
- **auto-complete**
- **yasnippet**
- **evil** (surround, numbers, matchit)
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
- **windows**
- **revive**
- **frame-restore**
- **org** (org-ac)
- **fill-column-indicator**
- **iedit**
- **smartparens**
- **multiple-cursors**

#### Installed But Not Used

Although the extensions listed below are not used,
They have their own configuration in `setup` directory
so that you can refer the configurations

- **icicles** (replaced with **ido**)
- **desktop** (replaced with **windows**)

### 4. Things You Should Need To Know
- ~~`caps lock` key bind with `ESC` because of **EVIL**~~

### 5. Key Bindings

- evil/surround
  - [ds \<textobject\>]: **delete surrounding things**
  - [cs \<textobject\>]: **change surrounding things**
  - [ys \<textobject\>]: **insert surrounding things**
  - [cd(ys)]\[\[i\]wWs][bBrt or a special character\]

- evil/evil-matchit
  - [%]: **evilmi-jump-item**
  - [,si]: **evilmi-slsect-item**
  - [,di]: **evilmi-delete-item**
  
- evil/evil-numbers
  - [C-c +]: **evil-numbers/inc-at-pt**
  - [C-c -]: **evil-numbers/dec-at-pt**

- yasnippet
  - [C-c s n]: **custom/create-new-snippet**
  - [C-c s r]: **yas-reload-all**

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
  
