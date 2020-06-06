  (require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  (package-initialize)
  (require 'evil)
  (evil-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (evil-escape evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; org mode
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
;; org capture templates
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "E:/org/gtd.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "E:/org/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")))
;; org-todo ��״̬����
(setq org-todo-keywords '(
  (sequence "TODO(t!)" "NEXT(n!)" "STARTED(a!)" "WAIT(w@/!)" "OTHERS(o!)" "|" "DONE(d)" "CANCELLED(c)")
))
;; evil-escape ��������
(evil-escape-mode 1)
;; evil-escape ��ݿ�����
(setq-default evil-escape-key-sequence "kj")
;; evil-escape �������ʱ��
(setq-default evil-escape-delay 0.2)
