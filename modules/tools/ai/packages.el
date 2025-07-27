
(package! chatgpt-shell
  :recipe  (:host github :repo "xenodium/chatgpt-shell")
  )

(package! gptel
  :disable t
  )

(package! aidermacs :recipe (:host github :repo "MatthewZMD/aidermacs" :files ("*.el")))


(package! copilot
  :disable t
  :recipe (:host github :repo "zerolfx/copilot.el" :files ("*.el" "dist")))

(package! khoj
  :disable t
  )
