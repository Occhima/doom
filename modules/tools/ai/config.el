(use-package! copilot
  :defer t
  :bind (
         ("C-<tab>" . 'copilot-accept-completion-by-word)
         :map copilot-completion-map
         ("<tab>" . 'copilot-accept-completion)
         ("TAB" . 'copilot-accept-completion)))


(use-package! chatgpt-shell
  :defer t
  )

(use-package! khoj
  :defer t
  :if (modulep! :tools ai +khoj)
  :config
  (map!
   :localleader
   :n "k" #'khoj)
  )

(use-package! gptel
  :defer t
  ;; :if (modulep! :tools ai +khoj)
  )

(use-package! aidermacs
  :custom
  (aidermacs-use-architect-mode t)
  (aidermacs-default-model "sonnet")
  :config
  ;; Stolen from https://github.com/tninja/aider.el/blob/main/aider-doom.el
  (defun aider-doom-setup-keys ()
    (when (and (featurep 'doom-keybinds)
               (vc-backend (or (buffer-file-name) default-directory)))
      (map! :leader :n :desc "Run aidermacs" "A" #'aidermacs-transient-menu
            )
      )
    )
  (defun aider-doom-enable ()
    (interactive)
    (add-hook 'find-file-hook #'aider-doom-setup-keys)
    (add-hook 'dired-mode-hook #'aider-doom-setup-keys)
    (add-hook 'after-change-major-mode-hook #'aider-doom-setup-keys))
  (aider-doom-enable)

  )
