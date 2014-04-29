# Emacs 24.3 config on Ubuntu 14.04
Last Update : 2014-04-21

### 1. Language Support
* None

### 2. Extensions

#### Used
- **cedet**
- **evil**
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
- **org**
- **fill-column-indicator**


#### Installed But Not Used

Although the extensions listed below are not used,
They have their own configuration in `setup` directory
so that you can refer the configurations

- **icicles** (replaced with **ido**)
- **frame-restore** (replaced with **revive**)
- **desktop** (replaced with **windows**)

### 3. Things You Should Need To Know
- ~~`caps lock` key bind with `ESC` because of **EVIL**~~

### 4. Key Bindings
- ido
  - [C-c i]: **ido-goto-symbol**
  - [C-M-i] : **ido-at-point**

- ace-jump-mode
	- [C-c SPC] : **ace-jump-mode**
	- [C-u SPC] : **ace-jump-char**

- evil
  - [capslock] : **evil-force-normal-state**

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
  - [C-c l] : **org-store-link**
  - [C-c C-l] : **org-insert-link**
  - [C-c C-o] : **org-open-at-point**

## Todo
1. semantic/ia
2. cedet contrib ctags..
3. javascript/node/HTML/CSS support


 
