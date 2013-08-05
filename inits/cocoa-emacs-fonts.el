;; You need to install Ricty(font for programming) use this setting.
;;
;; $ brew install fontforge
;; $ git clone https://github.com/yascentur/Ricty.git
;; $ cd Ricty
;; $ wget http://levien.com/type/myfonts/Inconsolata.otf
;; $ wget 'http://sourceforge.jp/frs/redir.php?m=osdn&f=%2Fmix-mplus-ipa%2F59022%2Fmigu-1m-20130617.zip' -O Migu-1M.zip
;; $ unzip Migu-1M.zip 
;; $ mv migu-1m-20130617/*.ttf ./
;; $ ./ricty_generator.sh Inconsolata.otf migu-1m-regular.ttf migu-1m-bold.ttf
;;
;; $ mkdir ~/.emacs.d/fonts
;; $ mv Ricty*.ttf ~/.emacs.d/fonts
;; $ cp --f /PATH/TO/RICTY/fonts/Ricty*.ttf ~/Library/Fonts/
;; $ fc-cache -vf


(set-face-attribute 'default nil
                   :family "Ricty"
                   :height 160)
(set-fontset-font
 nil 'japanese-jisx0208
 (font-spec :family "Ricty"))
