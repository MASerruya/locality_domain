(define (domain locality)
  (:requirements :typing :action-costs)
  (:types
        node data-block count - object
  )

(:predicates
     	(in ?b - data-block ?n - node)
	(connection ?n1 ?n2 - node)
	(sent ?n1 ?n2 - node ?c - count)
	(next ?c1 ?c2 - count)
)

(:functions (total-cost) - number
	    (last-request-point) - number
	    (request-point ?n1 ?n2 - node) - number
	    (segment-bandwidth ?n1 ?n2 - node) - number
	    (block-relative-bandwidth ?c - count) - number
	    (kilobytes-sent ?c - count) - number
)

(:action request
   :parameters (?n1 ?n2 - node ?d - data-block ?c1 ?c2 - count)
   :precondition (and (in ?d ?n2) (connection ?n1 ?n2) (sent ?n1 ?n2 ?c1) (next ?c1 ?c2))
   :effect (and (in ?d ?n1) (sent ?n1 ?n2 ?c2) (= (last-request-point) (request-point ?n1 ?n2)) (increase (total-cost) (/ (kilobytes-sent ?c2) (* (segment-bandwidth ?n1 ?n2) (block-relative-bandwidth ?c2))))))

(:action batch-request
   :parameters (?n1 ?n2 - node ?d - data-block ?c1 ?c2 - count)
   :precondition (and (in ?d ?n2) (connection ?n1 ?n2) (sent ?n1 ?n2 ?c1) (next ?c1 ?c2) (<= (last-request-point) (request-point ?n1 ?n2)) (>= (last-request-point) (request-point ?n1 ?n2)) (<= (kilobytes-sent ?c2) 16384))
   :effect (and (in ?d ?n1) (not (sent ?n1 ?n2 ?c1)) (sent ?n1 ?n2 ?c2) (decrease (total-cost) (- (/ (kilobytes-sent ?c1) (* (segment-bandwidth ?n1 ?n2) (block-relative-bandwidth ?c1))) (/ (kilobytes-sent ?c2) (* (segment-bandwidth ?n1 ?n2) (block-relative-bandwidth ?c2)))))))
)
