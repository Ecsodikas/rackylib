#lang racket/base
(require "util.rkt")
(require ffi/unsafe)

(provide (all-defined-out))

(define-cstruct _Image ([data _pointer]
                       [width _int]
                       [height _int]
                       [mipmaps _int]
                       [format _int]))

(define-struct image (data
                      width
                      height
                      mipmaps
                      format))
