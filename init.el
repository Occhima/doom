;;; init:wq.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load
;; in. Remember to run 'doom sync' after modifying it!

;; NOTE Press 'SPC h d h' (or 'C-h d h' for non-vim users) to access Doom's
;;      documentation. There you'll find a "Module Index" link where you'll find
;;      a comprehensive list of Doom's modules and what flags they support.

;; NOTE Move your cursor over a module's name (or its flags) and press 'K' (or
;;      'C-c c k' for non-vim users) to view its documentation. This works on
;;      flags as well (those symbols that start with a plus).
;;
;;      Alternatively, press 'gd' (or 'C-c c d') on a module to browse its
;;      directory (for easy access to its source code).

(doom! :input
       ;;chinese
       ;;japanese
       ;;layout                        ; auie,ctsrnm is the superior home row

       :completion
       ;; (company
       ;; +childframe
       ;;   )       ; the ultimate code completion backend
       ;;  helm ; the *other* search engine for love and life
       ;;ido                           ; the other *other* search engine...
       ;; (ivy +icons +fuzzy +prescient +childframe) ; a search engine for love and life
       (corfu  +orderless +icons +dabbrev)
       (vertico
        +icons
        +childframe
        )


       :ui
       ;; deft   ; notational velocity for Emacs
       doom   ; what makes DOOM look the way it does
       doom-dashboard                 ; a nifty splas screen for Emacs
       doom-quit                 ; DOOM quit-message prompts when you quit Emacs

       (emoji
        +ascii
        +unicode
        +github
        )
                                        ; (
       ;;                                  ; emoji
       ;;                                  ; +github         ; Displays and inserts emojis (ASCII, Github style, unicode)

       ;;                                  ; )

       ;;fill-column                   ; a `fill-column' indicator
       hl-todo                ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       ;;hydra
       ;;indent-guides                    ; highlighted indent columns

       (ligatures
        )

       ;;  minimap                        ; show a map of the code on the side
       ;;
       (modeline)
       ;;nav-flash                     ; blink cursor line after big motions
       ;; neotree                         ; a project drawer, like NERDTree for vim
       ;;ophints                  ; highlight the region an operation acts on
       (popup +defaults)     ; tame sudden yet inevitable temporary windows

       ;; tabs
                                        ; a tab bar for Emacs

       ;;treemacs                   ; a project drawer, like neotree but cooler

       ;;                                  ; unicode                       ; extended unicode support for various languages
       vc-gutter
                                        ; vcs diff in the fringe
       ;;vi-tilde-fringe               ; fringe tildes to mark beyond EOB
       ;; window-select          ; visually switch windows
       workspaces             ; tab emulation, persistence & separate workspaces
       zen                         ; distraction-free coding or writing

       :editor
       (evil +everywhere)               ; come to the dark side, we have cookies
       ;;file-templates                   ; auto-snippets for empty files
       fold                             ; (nigh) universal code folding

       (format +onsave)                 ; automated prettiness
       ;;god                           ; run Emacs commands without modifier keys
                                        ; pretty-code
       ;; lispy                       ; vim for lisp, for people who don't like vim
                                        ;multiple-cursors
                                        ; editing in many places at once
       ;;objed                         ; text object editing for the innocent
       ;;parinfer                      ; turn lisp into python, sort of
       ;;rotate-text                   ; cycle region at point between text candidates
                                        ;snippets                       ; my elves. They type so I don't have to
       word-wrap                      ; soft wrapping with language-aware indent

       :emacs
       (dired 
	+dirvish
        +icons
	)    ; making dired pretty [functional]
       electric          ; smarter, keyword-based electric-indent
       eww
       (ibuffer +icons)  ; interactive buffer management
       undo              ; persistent, smarter undo for your inevitable mistakes
       vc                ; version-control and Emacs, sitting in a tree

       :term
       eshell                         ; the elisp shell that works everywhere
       ;; shell     ; simple shell REPL for Emacs
       ;; term                          ; basic terminal emulator for Emacs
       vterm                            ; the best terminal emulation in Emacs
       eat

       :checkers
       (syntax
        ;; +childframe
        +flymake
        +icons
        )               ; tasing you for every semicolon you forget
       ;; spell                          ; tasing you for misspelling mispelling
       grammar                       ; tasing grammar mistake every you make
       ;; grammarly

       :tools
       biblio
       github
       ai
       dape
       ;;ansible
       ;; (debugger
       ;;  +lsp
       ;;  )                    ; FIXME stepping through code, to help you add bugs

       direnv
       (docker +lsp)
       ;; editorconfig                     ; let someone else argue about tabs vs spaces
       ;; ;; ein                              ; tame Jupyter notebooks with emacs
       (eval +overlay)
                                        ; run code, run (also, repls)
       ;; gist                           ; interacting with github gists
       ;;
       (lookup +docsets +dictionary)
       tree-sitter
                                        ; navigate your code and its documentation
       (lsp +eglot +peek)
       (magit +forge)                   ; a git porcelain for Emacs
       make                             ; run make tasks from Emacs
       (pass +auth)                     ; password manager for nerds
       pdf                              ; pdf enhancements
       ;;prodigy                       ; FIXME managing external services & code builders
       ;;rgb ; creating color strings
       ;; taskrunner                     ; taskrunner for all your projects
       ;; ;;  terraform                      ; infrastructure as code
       tmux                             ; an API for interacting with tmux
       upload
       ;;                                  ; map local to remote projects via ssh/ftp

       :os
                                        ; (:if IS-MAC macos)              ; improve compatibility with macOS
       tty                              ; improve the terminal Emacs experience

       :lang
       ;;agda                          ; types of types of types of types...
       ;; (cc +tree-sitter)      ; C/C++/Obj-C madness
       ;;clojure                       ; java with a lisp
       (beancount
        +lsp)
       common-lisp                   ; if you've seen one lisp, you've seen them all
       ;;coq                           ; proofs-as-programs
       ;;crystal                       ; ruby at the speed of c
       ;; (csharp
       ;;   +dotnet
       ;;   +lsp)
       data         ; config/data formats
       ;;elixir                        ; erlang done right
       ;;(dart +flutter)               ; paint ui and not much else
       ;;elm                           ; care for a cup of TEA?
       emacs-lisp                       ; drown in parentheses
       ;;erlang                        ; an elegant language for a more civilized ge
       (ess +lsp +tree-sitter) ; emacs speaks statistics
       quarto
       ;;faust                         ; dsp, but you get to keep your soul
       ;;fsharp                        ; ML stands for Microsoft's Language
       ;;fstar                         ; (dependent) types and (monadic) effects and Z3
       ;;gdscript                      ; the language you waited for
       (go +lsp +tree-sitter)                        ; the hipster dialect
       (haskell +lsp +tree-sitter) ; a language that's lazier than I am
       ;;hy                            ; readability of scheme w/ speed of python
       ;;idris                         ;
                                        ;
       (json +lsp +tree-sitter)                      ; At least it ain't XML
       ;;  (java
       ;;   +lsp
       ;;   ;; +meghanada
       ;;   )             ; the poster child for carpal tunnel syndrome
       (javascript
        +lsp
        +tree-sitter)                         ; all(hope(abandon(ye(who(enter(here))))))

       (julia
        +tree-sitter
        +lsp
        +snail
        )

                                        ; a better, faster MATLAB
       ;;kotlin                        ; a better, slicker Java(Script)
       (latex
        +cdlatex
        +lsp
        +fold
        )                    ; writing papers in Emacs has never been so fun
       ;;lean
       ;;factor
       ;;ledger                           ; an accounting system in Emacs
       ;;(lua +lsp)                       ; one-based indices? one-based indices
       (markdown)
                                        ; writing docs for people to ignore
       ;;nim                           ; python + lisp at the speed of c
       (nix +lsp +tree-sitter)                           ; I hereby declare "nix geht mehr!"
       ;;ocaml                         ; an objective camel
       ( org                            ; organize your plain life in plain text
         +roam2
         +pandoc
         +noter
         +hugo
         +jupyter
         +crypt
         +pomodoro
         +brain
         +pretty
         )

       ;; +dragndrop
       (php +tree-sitter)                           ; perl's insecure younger brother
       ;;plantuml                      ; diagrams for confusing people more
       ;;purescript                    ; javascript, but functional
       (python
        +lsp
        ;; +pyright
        +pyenv
        +tree-sitter
        ;;+poetry
        ;; +conda
        )   ; beautiful is better than ugly
       ;;qt                            ; the 'cutest' gui framework ever
       ;;racket                        ; a DSL for DSLs
       ;;raku                          ; the artist formerly known as perl6
       (rest
        +jq)               ; Emacs as a REST client
       ;;rst                           ; ReST in peace
       ;; (ruby +rails)     ; 1.step {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       (rust +lsp +tree-sitter)              ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       (scala +tree-sitter +lsp)                         ; java, but good
       ;;scheme                        ; a fully conniving family of lisps
       (sh +tree-sitter +lsp +powershell)              ; she sells {ba,z,fi}sh shells on the C xor
       ;;sml
       ;;  solidity                      ; do you need a blockchain? No.
       ;;swift                         ; who asked for emoji variables?
       ;;terra                         ; Earth and Moon in alignment for performance.
       (web +lsp +tree-sitter)                       ; the tubes
       (yaml +tree-sitter)                             ; JSON, but readable

       :email
       (mu4e +gmail +org +consult)
       ;;  notmuch
       ;;(wanderlust +gmail)

       :app
       calendar
       irc                          ; how neckbeards socialize
       (rss +org)                   ; emacs as an RSS reader
       ;; twitter                      ; twitter client https://twitter.com/vnought
       ;; everywhere
       ereader
       nyxt
       weather


       :config
       (default +bindings +smartparens)
       )
