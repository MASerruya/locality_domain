
(define (problem locality-01)
  (:domain locality)
  (:objects
   ;8 nodes conforming the network.
    node-E node-F node-G node-H - node
   ;50 data blocks to be scattered.
    block-0 block-1 block-2 block-3 block-4 block-5 block-6 block-7 block-8 block-9 block-10 block-11 block-12 block-13 block-14 - data-block
    count-0 count-1 count-2 count-3 count-4 count-5 count-6 count-7 count-8 count-9 count-10 count-11 count-12 count-13 count-14 count-15 - count
)
(:init
    (= (total-cost) 0)
    (= (last-request-point) 0)
    (sent node-E node-F count-0)
    (sent node-E node-H count-0)
    (sent node-F node-E count-0)
    (sent node-F node-H count-0)
    (sent node-G node-H count-0)
    (sent node-H node-E count-0)
    (sent node-H node-F count-0)
    (sent node-H node-G count-0)
    (connection node-E node-F)
    (connection node-E node-H)
    (connection node-F node-E)
    (connection node-F node-H)
    (connection node-G node-H)
    (connection node-H node-E)
    (connection node-H node-F)
    (connection node-H node-G)
    (next count-0 count-1)
    (next count-1 count-2)
    (next count-2 count-3)
    (next count-3 count-4)
    (next count-4 count-5)
    (next count-5 count-6)
    (next count-6 count-7)
    (next count-7 count-8)
    (next count-8 count-9)
    (next count-9 count-10)
    (next count-10 count-11)
    (next count-11 count-12)
    (next count-12 count-13)
    (next count-13 count-14)
    (next count-14 count-15)
    (= (request-point node-E node-F) 12)
    (= (request-point node-E node-H) 13)
    (= (request-point node-F node-E) 15)
    (= (request-point node-F node-H) 16)
    (= (request-point node-G node-H) 18)
    (= (request-point node-H node-E) 20)
    (= (request-point node-H node-F) 21)
    (= (request-point node-H node-G) 22)
    (= (segment-bandwidth node-E node-F) 12)
    (= (segment-bandwidth node-E node-H) 10)
    (= (segment-bandwidth node-F node-E) 12)
    (= (segment-bandwidth node-F node-H) 12)
    (= (segment-bandwidth node-G node-H) 20)
    (= (segment-bandwidth node-H node-E) 10)
    (= (segment-bandwidth node-H node-F) 12)
    (= (segment-bandwidth node-H node-G) 20)
    (= (block-relative-bandwidth count-1) 0.3)
    (= (block-relative-bandwidth count-2) 0.31)
    (= (block-relative-bandwidth count-3) 0.32)
    (= (block-relative-bandwidth count-4) 0.33)
    (= (block-relative-bandwidth count-5) 0.34)
    (= (block-relative-bandwidth count-6) 0.35)
    (= (block-relative-bandwidth count-7) 0.36)
    (= (block-relative-bandwidth count-8) 0.37)
    (= (block-relative-bandwidth count-9) 0.38)
    (= (block-relative-bandwidth count-10) 0.39)
    (= (block-relative-bandwidth count-11) 0.40)
    (= (block-relative-bandwidth count-12) 0.41)
    (= (block-relative-bandwidth count-13) 0.42)
    (= (block-relative-bandwidth count-14) 0.43)
    (= (block-relative-bandwidth count-15) 0.44)
    (= (kilobytes-sent count-1) 128)
    (= (kilobytes-sent count-2) 256)
    (= (kilobytes-sent count-3) 384)
    (= (kilobytes-sent count-4) 512)
    (= (kilobytes-sent count-5) 640)
    (= (kilobytes-sent count-6) 768)
    (= (kilobytes-sent count-7) 896)
    (= (kilobytes-sent count-8) 1024)
    (= (kilobytes-sent count-9) 1152)
    (= (kilobytes-sent count-10) 1280)
    (= (kilobytes-sent count-11) 1408)
    (= (kilobytes-sent count-12) 1536)
    (= (kilobytes-sent count-13) 1664)
    (= (kilobytes-sent count-14) 1792)
    (= (kilobytes-sent count-15) 1920)
    (in block-0 node-F)
    (in block-1 node-F)
    (in block-2 node-F)
    (in block-3 node-E)
    (in block-4 node-E)
    (in block-5 node-E)
    (in block-6 node-E)
    (in block-7 node-G)
    (in block-8 node-G)
    (in block-9 node-G)
    (in block-10 node-G)
    (in block-11 node-G)
    (in block-12 node-G)
    (in block-13 node-F)
    (in block-14 node-F)
)
 (:goal (and
    (in block-0 node-E)
    (in block-1 node-E)
    (in block-2 node-E)
    (in block-3 node-E)
    (in block-4 node-E)
    (in block-5 node-E)
    (in block-6 node-E)
    (in block-7 node-E)
    (in block-8 node-E)
    (in block-9 node-E)
    (in block-10 node-E)
    (in block-11 node-E)
    (in block-12 node-E)
    (in block-13 node-E)
    (in block-14 node-E)
    (in block-0 node-F)
    (in block-1 node-F)
    (in block-2 node-F)
    (in block-3 node-F)
    (in block-4 node-F)
    (in block-5 node-F)
    (in block-6 node-F)
    (in block-7 node-F)
    (in block-8 node-F)
    (in block-9 node-F)
    (in block-10 node-F)
    (in block-11 node-F)
    (in block-12 node-F)
    (in block-13 node-F)
    (in block-14 node-F)
    (in block-0 node-G)
    (in block-1 node-G)
    (in block-2 node-G)
    (in block-3 node-G)
    (in block-4 node-G)
    (in block-5 node-G)
    (in block-6 node-G)
    (in block-7 node-G)
    (in block-8 node-G)
    (in block-9 node-G)
    (in block-10 node-G)
    (in block-11 node-G)
    (in block-12 node-G)
    (in block-13 node-G)
    (in block-14 node-G)
    (in block-0 node-H)
    (in block-1 node-H)
    (in block-2 node-H)
    (in block-3 node-H)
    (in block-4 node-H)
    (in block-5 node-H)
    (in block-6 node-H)
    (in block-7 node-H)
    (in block-8 node-H)
    (in block-9 node-H)
    (in block-10 node-H)
    (in block-11 node-H)
    (in block-12 node-H)
    (in block-13 node-H)
    (in block-14 node-H)
 ))
 (:metric minimize (total-cost))
)
