;; Material Sourcing Contract

;; Data Variables
(define-map materials
  { material-id: uint }
  {
    name: (string-ascii 50),
    origin: (string-ascii 100),
    sustainability-score: uint,
    certification: (string-ascii 50)
  }
)

(define-data-var material-counter uint u0)

;; Public Functions
(define-public (add-material (name (string-ascii 50)) (origin (string-ascii 100)) (sustainability-score uint) (certification (string-ascii 50)))
  (let
    (
      (new-id (+ (var-get material-counter) u1))
    )
    (map-set materials { material-id: new-id }
      {
        name: name,
        origin: origin,
        sustainability-score: sustainability-score,
        certification: certification
      }
    )
    (var-set material-counter new-id)
    (ok new-id)
  )
)

(define-read-only (get-material (material-id uint))
  (map-get? materials { material-id: material-id })
)

(define-read-only (get-sustainability-score (material-id uint))
  (match (map-get? materials { material-id: material-id })
    material (ok (get sustainability-score material))
    (err u0)
  )
)

