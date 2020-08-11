;; org mode
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
;; org capture templates
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Nutstore Files/org/gtd.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/Nutstore Files/org/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")))
;; org-todo 的状态设置
(setq org-todo-keywords '(
  (sequence "TODO(t!)" "NEXT(n!)" "STARTED(a!)" "WAIT(w@/!)" "OTHERS(o!)" "|" "DONE(d)" "CANCELLED(c)")
))
;; evil-escape 启动设置
(evil-escape-mode 1)
;; evil-escape 快捷快设置
(setq-default evil-escape-key-sequence "kj")
;; evil-escape 按键间隔时间
(setq-default evil-escape-delay 0.2)
