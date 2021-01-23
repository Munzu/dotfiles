# EurKEY-Colemak-DPGHK

* Combination of Colemak-DPG and Colemak-DHk
* EurKEY as base layout

## Analysis
Done with [Keyboard Analysis Tool](https://colemakmods.github.io/mod-dh/analyze.html)

* Analysis English:

![analysis_english](./analysis_english.png)

---

* Analysis German:

![analysis_german](./analysis_german.png)

## Install

```bash
sudo install.sh
```

## Enable

```bash
setxkbmap eu eurkey-cmk-dpghk-ansi -option caps:escape
```
* Temporarily: Paste in shell
* Persistently: Paste into `~/.profile`
