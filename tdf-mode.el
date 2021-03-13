;;; tdf-mode.el --- Major mode for TDF -*- lexical-binding: t -*-
;; This file is not part of GNU Emacs.

;;; Commentary:
;; Provides syntax highlighting

;;; Code:
(defvar tdf-font-lock-keywords)
(setq tdf-font-lock-keywords
      (let* (
             ;; Words
             (x-constants '("true" "false"))
             ;; Regular expressions
             (x-constants-regexp (regexp-opt x-constants 'words)))
        `(
          (,x-constants-regexp . font-lock-constant-face))))

(define-derived-mode tdf-mode fundamental-mode "tdf"
  "major mode for editing tdf code"
  (setq font-lock-defaults '((tdf-font-lock-keywords))))


;;; Provide:

(provide 'tdf-mode)

;;; tdf-mode.el ends here
