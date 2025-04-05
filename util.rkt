#lang racket/base

(require ffi/unsafe
         ffi/unsafe/define)

(provide define-raylib)

(define-ffi-definer define-raylib
  (ffi-lib "libraylib"))
