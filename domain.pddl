(define (domain locality)
  (:requirements :typing :action-costs)
  (:types
        node data-block count - object
	zero non-zero - count
  )

  (:predicates
  	(has-requested ?n - node)
  	(has-requested-to ?n1 ?n2 - node)
       	(in ?d - data-block ?n - node)
  	(connection ?n1 ?n2 - node)
  	(next ?c1 ?c2 - count)
  	(sent ?n1 ?n2 - node ?c - count)
  )
  
  (:functions (total-cost) - number
  	    (kilobytes-sent ?nz - non-zero) - number
  	    (segment-bandwidth ?n1 ?n2 - node) - number
  	    (block-relative-bandwidth ?non-zero - count) - number
  )
  
  (:action request
     :parameters (?n1 ?n2 - node ?d - data-block ?z - zero ?nz - non-zero)
     :precondition (and
  	(not (has-requested ?n1))
  	(in ?d ?n2)
  	(connection ?n1 ?n2)
  	(next ?z ?nz)
  	(sent ?n1 ?n2 ?z)
     )
     :effect (and
  	(in ?d ?n1)
  	(sent ?n1 ?n2 ?nz)
  	(has-requested ?n1)
  	(has-requested-to ?n1 ?n2)
  	(increase (total-cost) (/ (kilobytes-sent ?nz) (* (segment-bandwidth ?n1 ?n2) (block-relative-bandwidth ?nz))))
     )
  )
  
  (:action batch-request
     :parameters (?n1 ?n2 - node ?d - data-block ?nz1 ?nz2 - non-zero)
     :precondition (and
  	(has-requested ?n1)
  	(has-requested-to ?n1 ?n2)
  	(in ?d ?n2)
  	(connection ?n1 ?n2)
  	(sent ?n1 ?n2 ?nz1)
  	(next ?nz1 ?nz2)
     )
     :effect (and
  	(in ?d ?n1)
  	(not (sent ?n1 ?n2 ?nz1))
  	(sent ?n1 ?n2 ?nz2)
  	(decrease (total-cost) (- (/ (kilobytes-sent ?nz1) (* (segment-bandwidth ?n1 ?n2) (block-relative-bandwidth ?nz1)))
  				  (/ (kilobytes-sent ?nz2) (* (segment-bandwidth ?n1 ?n2) (block-relative-bandwidth ?nz2)))))
     )
  )
  
  (:action clear-request
     :parameters (?n1 ?n2 - node ?nz - non-zero)
     :precondition (and
  	(has-requested ?n1)
  	(has-requested-to ?n1 ?n2)
	(sent ?n1 ?n2 ?nz)
     )
     :effect (and
  	(not (sent ?n1 ?n2 ?nz))
  	(not (has-requested ?n1))
  	(not (has-requested-to ?n1 ?n2))
     )
  )
)
