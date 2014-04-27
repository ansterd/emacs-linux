# Emacs 24.3 config on Ubuntu 14.04
Last Update : 2014-04-21

### 1. Language Support
* None

### 2. Extensions
- **cedet**
- **evil**
- **ido** (vertical, at-point, ubiquitous, flx-ido)
- **icomplete-mode**
- **icicles**
- **ace-jump-mode**
- **smex**
- **expand-region**
- **helm**
- **thingatpt**
- **powerline**
- **uniquify**
- **recentf** (with ido)
- **desktop**
- **frame-restore**
- **bookmark+** (with ido)
- **windmove** 
- **windcycle**
- **buffcycle**

### 3. Things You Should Need To Know
- `caps lock` key bind with`ESC` because of **EVIL**

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
  - [M-left] : **windmove-left**
  - [M-right] : **windmove-right**
  - [M-up] : **windmove-up**
  - [M-down] : **windmove-down**

- windcycle
  - [M-S-\<arrow\>] : **swap buffer**
  - [S-C-\<arrow\>] : **shrink, enlarge window**
  - [C-x x] : **delete-window**
  - [C-x |] : **split-window-horizontally**
  - [C-x -] : **split-window-vertically**

- buffcycle
  - [C-q] : **kill-this-buffer-if-not-scratch**
  - [C-Tab] : **next-buffer-cycle**

## Todo
1. semantic/ia
2. cedet contrib ctags..
3. javascript/node/HTML/CSS support


 
