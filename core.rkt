#lang racket/base
(require "util.rkt"
         "structs.rkt")
(require ffi/unsafe)

(provide (all-defined-out))

(define-raylib InitWindow (_fun _int _int _string -> _void))
(define (init-window w h name) (InitWindow w h name))

(define-raylib CloseWindow (_fun -> _void))
(define (close-window) (CloseWindow))

(define-raylib WindowShouldClose (_fun -> _bool))
(define (window-should-close) (WindowShouldClose))

(define-raylib IsWindowReady (_fun -> _bool))
(define (window-ready?) (IsWindowReady))

(define-raylib IsWindowFullscreen (_fun -> _bool))
(define (window-fullscreen?) (IsWindowFullscreen))

(define-raylib IsWindowHidden (_fun -> _bool))
(define (window-hidden?) (IsWindowHidden))

(define-raylib IsWindowMinimized (_fun -> _bool))
(define (window-minimized?) (IsWindowMinimized))

(define-raylib IsWindowMaximized (_fun -> _bool))
(define (window-maximized?) (IsWindowMaximized))

(define-raylib IsWindowFocused (_fun -> _bool))
(define (window-focused?) (IsWindowFocused))

(define-raylib IsWindowResized (_fun -> _bool))
(define (window-resized?) (IsWindowResized))

(define-raylib IsWindowState (_fun _uint -> _bool))
(define (window-state? flag) (IsWindowState flag))

(define-raylib SetWindowState (_fun _uint -> _void))
(define (set-window-state flags) (SetWindowState flags))

(define-raylib ClearWindowState (_fun _uint -> _void))
(define (clear-window-state flags) (ClearWindowState flags))

(define-raylib ToggleFullscreen (_fun -> _void))
(define (toggle-fullscreen) (ToggleFullscreen))

(define-raylib ToggleBorderlessWindowed (_fun -> _void))
(define (toggle-borderless-windowed) (ToggleBorderlessWindowed))

(define-raylib MaximizeWindow (_fun -> _void))
(define (maximize-window) (MaximizeWindow))

(define-raylib MinimizeWindow (_fun -> _void))
(define (minimize-window) (MinimizeWindow))

(define-raylib RestoreWindow (_fun -> _void))
(define (restore-window) (RestoreWindow))

(define-raylib SetWindowIcon (_fun _Image -> _void))
(define (set-window-icon image) (SetWindowIcon image))

(define-raylib SetWindowIcons (_fun _array _Image -> _void))
(define (set-window-icons images) (SetWindowIcons images (length images)))


