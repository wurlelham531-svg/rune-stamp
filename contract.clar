;; rune-stamp -- mint sequential runes (24 types) to users
;; Clarity 4

(define-data-var next-id uint u1)
(define-map runes uint { owner: principal, rune: uint, minted-at: uint })
(define-map user-rune-count principal uint)

(define-public (stamp (rune uint))
  (begin
    (asserts! (and (>= rune u1) (<= rune u24)) (err u100))
    (let ((id (var-get next-id))
          (cur (default-to u0 (map-get? user-rune-count tx-sender))))
      (map-set runes id { owner: tx-sender, rune: rune, minted-at: stacks-block-height })
      (map-set user-rune-count tx-sender (+ cur u1))
      (var-set next-id (+ id u1))
      (print { event: "stamp", id: id, rune: rune, owner: tx-sender })
      (ok id))))

(define-read-only (get-rune (id uint))
  (map-get? runes id))

(define-read-only (get-user-count (user principal))
  (default-to u0 (map-get? user-rune-count user)))

(define-read-only (total-stamps)
  (- (var-get next-id) u1))
