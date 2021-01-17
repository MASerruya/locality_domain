
(define (problem tree-01)
  (:domain locality)
  (:objects
   ;7 nodes conforming the network.
    node-A node-B node-C node-D node-E node-F node-G - node
   ;20 data blocks to be scattered.
    block-0 block-1 block-2 block-3 block-4 block-5 block-6 block-7 block-8 block-9 - data-block
    block-10 block-11 block-12 block-13 block-14 block-15 block-16 block-17 block-18 block-19 - data-block
    count-0 - zero
    count-1 count-2 count-3 count-4 count-5 count-6 count-7 count-8 count-9 count-10 - non-zero
    count-11 count-12 count-13 count-14 count-15 count-16 count-17 count-18 count-19 count-20 - non-zero
)
(:init
    (= (total-cost) 0)
    (in block-0 node-A)
    (in block-1 node-B)
    (in block-2 node-C)
    (in block-3 node-D)
    (in block-4 node-E)
    (in block-5 node-F)
    (in block-6 node-G)
    (in block-7 node-A)
    (in block-8 node-B)
    (in block-9 node-C)
    (in block-10 node-D)
    (in block-11 node-E)
    (in block-12 node-F)
    (in block-13 node-G)
    (in block-14 node-A)
    (in block-15 node-B)
    (in block-16 node-C)
    (in block-17 node-D)
    (in block-18 node-E)
    (in block-19 node-F)
    (connection node-A node-B)
    (connection node-A node-C)
    (connection node-B node-A)
    (connection node-B node-D)
    (connection node-B node-E)
    (connection node-C node-A)
    (connection node-C node-F)
    (connection node-C node-G)
    (connection node-D node-B)
    (connection node-E node-B)
    (connection node-F node-C)
    (connection node-G node-C)
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
    (next count-15 count-16)
    (next count-16 count-17)
    (next count-17 count-18)
    (next count-18 count-19)
    (next count-19 count-20)
    (sent node-A node-B count-0)
    (sent node-A node-C count-0)
    (sent node-B node-A count-0)
    (sent node-B node-D count-0)
    (sent node-B node-E count-0)
    (sent node-C node-A count-0)
    (sent node-C node-F count-0)
    (sent node-C node-G count-0)
    (sent node-D node-B count-0)
    (sent node-E node-B count-0)
    (sent node-F node-C count-0)
    (sent node-G node-C count-0)
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
    (= (kilobytes-sent count-16) 2048)
    (= (kilobytes-sent count-17) 2176)
    (= (kilobytes-sent count-18) 2304)
    (= (kilobytes-sent count-19) 2432)
    (= (kilobytes-sent count-20) 2560)
    (= (segment-bandwidth node-A node-B) 100)
    (= (segment-bandwidth node-A node-C) 100)
    (= (segment-bandwidth node-B node-A) 100)
    (= (segment-bandwidth node-B node-D) 75)
    (= (segment-bandwidth node-B node-E) 75)
    (= (segment-bandwidth node-C node-A) 100)
    (= (segment-bandwidth node-C node-F) 75)
    (= (segment-bandwidth node-C node-G) 75)
    (= (segment-bandwidth node-D node-B) 75)
    (= (segment-bandwidth node-E node-B) 75)
    (= (segment-bandwidth node-F node-C) 75)
    (= (segment-bandwidth node-G node-C) 75)
    (= (block-relative-bandwidth count-1) 0.394767)
    (= (block-relative-bandwidth count-2) 0.456849)
    (= (block-relative-bandwidth count-3) 0.518932)
    (= (block-relative-bandwidth count-4) 0.581014)
    (= (block-relative-bandwidth count-5) 0.592550)
    (= (block-relative-bandwidth count-6) 0.604086)
    (= (block-relative-bandwidth count-7) 0.615622)
    (= (block-relative-bandwidth count-8) 0.627158)
    (= (block-relative-bandwidth count-9) 0.638694)
    (= (block-relative-bandwidth count-10) 0.650230)
    (= (block-relative-bandwidth count-11) 0.661766)
    (= (block-relative-bandwidth count-12) 0.673303)
    (= (block-relative-bandwidth count-13) 0.684839)
    (= (block-relative-bandwidth count-14) 0.696375)
    (= (block-relative-bandwidth count-15) 0.707911)
    (= (block-relative-bandwidth count-16) 0.719447)
    (= (block-relative-bandwidth count-17) 0.720655)
    (= (block-relative-bandwidth count-18) 0.721863)
    (= (block-relative-bandwidth count-19) 0.723070)
    (= (block-relative-bandwidth count-20) 0.724278)
)
 (:goal (and
    (in block-0 node-A)
    (in block-1 node-A)
    (in block-2 node-A)
    (in block-3 node-A)
    (in block-4 node-A)
    (in block-5 node-A)
    (in block-6 node-A)
    (in block-7 node-A)
    (in block-8 node-A)
    (in block-9 node-A)
    (in block-10 node-A)
    (in block-11 node-A)
    (in block-12 node-A)
    (in block-13 node-A)
    (in block-14 node-A)
    (in block-15 node-A)
    (in block-16 node-A)
    (in block-17 node-A)
    (in block-18 node-A)
    (in block-19 node-A)
    (in block-0 node-B)
    (in block-1 node-B)
    (in block-2 node-B)
    (in block-3 node-B)
    (in block-4 node-B)
    (in block-5 node-B)
    (in block-6 node-B)
    (in block-7 node-B)
    (in block-8 node-B)
    (in block-9 node-B)
    (in block-10 node-B)
    (in block-11 node-B)
    (in block-12 node-B)
    (in block-13 node-B)
    (in block-14 node-B)
    (in block-15 node-B)
    (in block-16 node-B)
    (in block-17 node-B)
    (in block-18 node-B)
    (in block-19 node-B)
    (in block-0 node-C)
    (in block-1 node-C)
    (in block-2 node-C)
    (in block-3 node-C)
    (in block-4 node-C)
    (in block-5 node-C)
    (in block-6 node-C)
    (in block-7 node-C)
    (in block-8 node-C)
    (in block-9 node-C)
    (in block-10 node-C)
    (in block-11 node-C)
    (in block-12 node-C)
    (in block-13 node-C)
    (in block-14 node-C)
    (in block-15 node-C)
    (in block-16 node-C)
    (in block-17 node-C)
    (in block-18 node-C)
    (in block-19 node-C)
    (in block-0 node-D)
    (in block-1 node-D)
    (in block-2 node-D)
    (in block-3 node-D)
    (in block-4 node-D)
    (in block-5 node-D)
    (in block-6 node-D)
    (in block-7 node-D)
    (in block-8 node-D)
    (in block-9 node-D)
    (in block-10 node-D)
    (in block-11 node-D)
    (in block-12 node-D)
    (in block-13 node-D)
    (in block-14 node-D)
    (in block-15 node-D)
    (in block-16 node-D)
    (in block-17 node-D)
    (in block-18 node-D)
    (in block-19 node-D)
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
    (in block-15 node-E)
    (in block-16 node-E)
    (in block-17 node-E)
    (in block-18 node-E)
    (in block-19 node-E)
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
    (in block-15 node-F)
    (in block-16 node-F)
    (in block-17 node-F)
    (in block-18 node-F)
    (in block-19 node-F)
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
    (in block-15 node-G)
    (in block-16 node-G)
    (in block-17 node-G)
    (in block-18 node-G)
    (in block-19 node-G)
 ))
 (:metric minimize (total-cost))
)
