;; Product Lifecycle Contract

;; Data Variables
(define-map products
  { product-id: uint }
  {
    name: (string-ascii 50),
    creation-date: uint,
    material-id: uint,
    manufacturing-process-id: uint,
    recycled: bool
  }
)

(define-data-var product-counter uint u0)

;; Public Functions
(define-public (create-product (name (string-ascii 50)) (material-id uint) (manufacturing-process-id uint))
  (let
    (
      (new-id (+ (var-get product-counter) u1))
    )
    (map-set products { product-id: new-id }
      {
        name: name,
        creation-date: block-height,
        material-id: material-id,
        manufacturing-process-id: manufacturing-process-id,
        recycled: false
      }
    )
    (var-set product-counter new-id)
    (ok new-id)
  )
)

(define-public (mark-as-recycled (product-id uint))
  (match (map-get? products { product-id: product-id })
    product (begin
      (map-set products { product-id: product-id }
        (merge product { recycled: true })
      )
      (ok true)
    )
    (err false)
  )
)

(define-read-only (get-product (product-id uint))
  (map-get? products { product-id: product-id })
)

