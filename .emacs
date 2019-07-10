(defvar init-file-one (concat (expand-file-name user-emacs-directory) "init_1.el")
  "The absolute path to my init file # 1.")

(defvar init-file-two (concat (expand-file-name user-emacs-directory) "init_2.el")
  "The absolute path to my init file # 2.")

(defvar init-file-three (concat (expand-file-name user-emacs-directory) "init_3.el")
  "The absolute path to my init file # 3.")

(defface init-alpha-num-choice-face
  '((t (:foreground "red")))
  "Face for `init-alpha-num-choice-face`."
  :group 'lawlist-init)

(defface init-text-choice-face
  '((t (:foreground "forestgreen")))
  "Face for `init-text-choice-face`."
  :group 'lawlist-init)

(defface init-default-face
  '((t (:foreground "blue")))
  "Face for `init-text-choice-face`."
  :group 'lawlist-init)

(defface init-countdown-face
  '((t (:foreground "magenta")))
  "Face for `init-text-choice-face`."
  :group 'lawlist-init)

(defun countdown-read (fnx &optional prompt inherit-input-method seconds)
"Doc-string."
  (let ((seconds (or seconds 5))
        (message-log-max nil)
        choice)
    (while (>= seconds 0)
      (message (concat
        prompt
        (propertize ".  (" 'face 'init-default-face)
        (propertize (format "%d" seconds) 'face 'init-countdown-face)
        (propertize ") seconds" 'face 'init-default-face)))
      (setq seconds (if (setq choice
                              (funcall fnx nil inherit-input-method 1))
                      -1
                      (1- seconds))))
    choice))

(let* ((path-setup-one (concat (expand-file-name user-emacs-directory) "elpa_1"))
       (path-setup-two (concat (expand-file-name user-emacs-directory) "elpa_2"))
       (path-setup-three (concat (expand-file-name user-emacs-directory) "elpa_3"))
       (prompt (concat
                 (propertize "Emacs -" 'face 'init-text-choice-face)
                 (propertize "[" 'face 'init-default-face)
                 (propertize "q" 'face 'init-alpha-num-choice-face)
                 " / "
                 (propertize "Q" 'face 'init-alpha-num-choice-face)
                 (propertize "]" 'face 'init-default-face)
                 " | "
                 (propertize "Setup # " 'face 'init-text-choice-face)
                 (propertize "[" 'face 'init-default-face)
                 (propertize "1" 'face 'init-alpha-num-choice-face)
                 ", "
                 (propertize "2" 'face 'init-alpha-num-choice-face)
                 ", or "
                 (propertize "3" 'face 'init-alpha-num-choice-face)
                 (propertize "]" 'face 'init-default-face)))
       (choice (countdown-read #'read-char-exclusive prompt nil 3)))
  (cond
    ((eq choice ?1)
      (unless (and (file-exists-p path-setup-one)
                   (file-directory-p path-setup-one))
        (make-directory path-setup-one))
      (if (file-exists-p init-file-one)
        (load init-file-one nil t t nil)
        (message "Sorry, Emacs could not locate init-file-one:  %s" init-file-one))
      (setq package-user-dir path-setup-one))
    ((eq choice ?2)
      (unless (and (file-exists-p path-setup-two)
                   (file-directory-p path-setup-two))
        (make-directory path-setup-two))
      (if (file-exists-p init-file-two)
        (load init-file-two nil t t nil)
        (message "Sorry, Emacs could not locate init-file-two:  %s" init-file-two))
      (setq package-user-dir path-setup-two))
    ((eq choice ?3)
      (unless (and (file-exists-p path-setup-three)
                   (file-directory-p path-setup-three))
        (make-directory path-setup-three))
      (if (file-exists-p init-file-three)
        (load init-file-three nil t t nil)
        (message "Sorry, Emacs could not locate init-file-three:  %s" init-file-three))
      (setq package-user-dir path-setup-three))
    ((or (eq choice ?q)
         (eq choice ?Q))
      (message "Q/q:  No additional user init file has been selected.")
      nil)
    (t
      (message "Default -- no choice was made.")
      nil)))
