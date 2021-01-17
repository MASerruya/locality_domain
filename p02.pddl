
(define (problem cube-02)
  (:domain locality)
  (:objects
   ;12 nodes conforming the network.
    node-A node-B node-C node-D node-E node-F node-G node-H node-I node-J node-K node-L - node
   ;30 data blocks to be scattered.
    block-0 block-1 block-2 block-3 block-4 block-5 block-6 block-7 block-8 block-9 - data-block
    block-10 block-11 block-12 block-13 block-14 block-15 block-16 block-17 block-18 block-19 - data-block
    block-20 block-21 block-22 block-23 block-24 block-25 block-26 block-27 block-28 block-29 - data-block
    count-0 - zero
    count-1 count-2 count-3 count-4 count-5 count-6 count-7 count-8 count-9 count-10 - non-zero
    count-11 count-12 count-13 count-14 count-15 count-16 count-17 count-18 count-19 count-20 - non-zero
    count-21 count-22 count-23 count-24 count-25 count-26 count-27 count-28 count-29 count-30 - non-zero
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
    (in block-7 node-H)
    (in block-8 node-I)
    (in block-9 node-J)
    (in block-10 node-K)
    (in block-11 node-L)
    (in block-12 node-A)
    (in block-13 node-B)
    (in block-14 node-C)
    (in block-15 node-D)
    (in block-16 node-E)
    (in block-17 node-F)
    (in block-18 node-G)
    (in block-19 node-H)
    (in block-20 node-I)
    (in block-21 node-J)
    (in block-22 node-K)
    (in block-23 node-L)
    (in block-24 node-A)
    (in block-25 node-B)
    (in block-26 node-C)
    (in block-27 node-D)
    (in block-28 node-E)
    (in block-29 node-F)
    (connection node-A node-E)
    (connection node-A node-B)
    (connection node-A node-C)
    (connection node-B node-A)
    (connection node-B node-G)
    (connection node-B node-D)
    (connection node-B node-I)
    (connection node-C node-A)
    (connection node-C node-D)
    (connection node-C node-F)
    (connection node-D node-C)
    (connection node-D node-B)
    (connection node-D node-H)
    (connection node-D node-L)
    (connection node-E node-A)
    (connection node-E node-G)
    (connection node-E node-F)
    (connection node-F node-E)
    (connection node-F node-C)
    (connection node-F node-H)
    (connection node-G node-E)
    (connection node-G node-B)
    (connection node-G node-H)
    (connection node-G node-J)
    (connection node-H node-G)
    (connection node-H node-F)
    (connection node-H node-D)
    (connection node-H node-K)
    (connection node-I node-B)
    (connection node-I node-J)
    (connection node-I node-L)
    (connection node-J node-G)
    (connection node-J node-I)
    (connection node-J node-K)
    (connection node-K node-H)
    (connection node-K node-J)
    (connection node-K node-L)
    (connection node-L node-D)
    (connection node-L node-I)
    (connection node-L node-K)
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
    (next count-20 count-21)
    (next count-21 count-22)
    (next count-22 count-23)
    (next count-23 count-24)
    (next count-24 count-25)
    (next count-25 count-26)
    (next count-26 count-27)
    (next count-27 count-28)
    (next count-28 count-29)
    (next count-29 count-30)
    (sent node-A node-E count-0)
    (sent node-A node-B count-0)
    (sent node-A node-C count-0)
    (sent node-B node-A count-0)
    (sent node-B node-G count-0)
    (sent node-B node-D count-0)
    (sent node-B node-I count-0)
    (sent node-C node-A count-0)
    (sent node-C node-D count-0)
    (sent node-C node-F count-0)
    (sent node-D node-C count-0)
    (sent node-D node-B count-0)
    (sent node-D node-H count-0)
    (sent node-D node-L count-0)
    (sent node-E node-A count-0)
    (sent node-E node-G count-0)
    (sent node-E node-F count-0)
    (sent node-F node-E count-0)
    (sent node-F node-C count-0)
    (sent node-F node-H count-0)
    (sent node-G node-E count-0)
    (sent node-G node-B count-0)
    (sent node-G node-H count-0)
    (sent node-G node-J count-0)
    (sent node-H node-G count-0)
    (sent node-H node-F count-0)
    (sent node-H node-D count-0)
    (sent node-H node-K count-0)
    (sent node-I node-B count-0)
    (sent node-I node-J count-0)
    (sent node-I node-L count-0)
    (sent node-J node-G count-0)
    (sent node-J node-I count-0)
    (sent node-J node-K count-0)
    (sent node-K node-H count-0)
    (sent node-K node-J count-0)
    (sent node-K node-L count-0)
    (sent node-L node-D count-0)
    (sent node-L node-I count-0)
    (sent node-L node-K count-0)
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
    (= (kilobytes-sent count-21) 2688)
    (= (kilobytes-sent count-22) 2816)
    (= (kilobytes-sent count-23) 2944)
    (= (kilobytes-sent count-24) 3072)
    (= (kilobytes-sent count-25) 3200)
    (= (kilobytes-sent count-26) 3328)
    (= (kilobytes-sent count-27) 3456)
    (= (kilobytes-sent count-28) 3584)
    (= (kilobytes-sent count-29) 3712)
    (= (kilobytes-sent count-30) 3840)
    (= (segment-bandwidth node-A node-E) 1000)
    (= (segment-bandwidth node-A node-B) 5000)
    (= (segment-bandwidth node-A node-C) 1000)
    (= (segment-bandwidth node-B node-A) 5000)
    (= (segment-bandwidth node-B node-G) 5000)
    (= (segment-bandwidth node-B node-D) 1000)
    (= (segment-bandwidth node-B node-I) 1000)
    (= (segment-bandwidth node-C node-A) 1000)
    (= (segment-bandwidth node-C node-D) 1000)
    (= (segment-bandwidth node-C node-F) 1000)
    (= (segment-bandwidth node-D node-C) 1000)
    (= (segment-bandwidth node-D node-B) 1000)
    (= (segment-bandwidth node-D node-H) 1000)
    (= (segment-bandwidth node-D node-L) 1000)
    (= (segment-bandwidth node-E node-A) 1000)
    (= (segment-bandwidth node-E node-G) 1000)
    (= (segment-bandwidth node-E node-F) 1000)
    (= (segment-bandwidth node-F node-E) 1000)
    (= (segment-bandwidth node-F node-C) 1000)
    (= (segment-bandwidth node-F node-H) 1000)
    (= (segment-bandwidth node-G node-E) 1000)
    (= (segment-bandwidth node-G node-B) 5000)
    (= (segment-bandwidth node-G node-H) 1000)
    (= (segment-bandwidth node-G node-J) 5000)
    (= (segment-bandwidth node-H node-G) 1000)
    (= (segment-bandwidth node-H node-F) 1000)
    (= (segment-bandwidth node-H node-D) 1000)
    (= (segment-bandwidth node-H node-K) 1000)
    (= (segment-bandwidth node-I node-B) 1000)
    (= (segment-bandwidth node-I node-J) 1000)
    (= (segment-bandwidth node-I node-L) 1000)
    (= (segment-bandwidth node-J node-G) 5000)
    (= (segment-bandwidth node-J node-I) 1000)
    (= (segment-bandwidth node-J node-K) 1000)
    (= (segment-bandwidth node-K node-H) 1000)
    (= (segment-bandwidth node-K node-J) 1000)
    (= (segment-bandwidth node-K node-L) 1000)
    (= (segment-bandwidth node-L node-D) 1000)
    (= (segment-bandwidth node-L node-I) 1000)
    (= (segment-bandwidth node-L node-K) 1000)
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
    (= (block-relative-bandwidth count-21) 0.725486)
    (= (block-relative-bandwidth count-22) 0.726694)
    (= (block-relative-bandwidth count-23) 0.727902)
    (= (block-relative-bandwidth count-24) 0.729109)
    (= (block-relative-bandwidth count-25) 0.730317)
    (= (block-relative-bandwidth count-26) 0.731525)
    (= (block-relative-bandwidth count-27) 0.732733)
    (= (block-relative-bandwidth count-28) 0.733941)
    (= (block-relative-bandwidth count-29) 0.735149)
    (= (block-relative-bandwidth count-30) 0.736356)
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
    (in block-20 node-A)
    (in block-21 node-A)
    (in block-22 node-A)
    (in block-23 node-A)
    (in block-24 node-A)
    (in block-25 node-A)
    (in block-26 node-A)
    (in block-27 node-A)
    (in block-28 node-A)
    (in block-29 node-A)
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
    (in block-20 node-B)
    (in block-21 node-B)
    (in block-22 node-B)
    (in block-23 node-B)
    (in block-24 node-B)
    (in block-25 node-B)
    (in block-26 node-B)
    (in block-27 node-B)
    (in block-28 node-B)
    (in block-29 node-B)
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
    (in block-20 node-C)
    (in block-21 node-C)
    (in block-22 node-C)
    (in block-23 node-C)
    (in block-24 node-C)
    (in block-25 node-C)
    (in block-26 node-C)
    (in block-27 node-C)
    (in block-28 node-C)
    (in block-29 node-C)
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
    (in block-20 node-D)
    (in block-21 node-D)
    (in block-22 node-D)
    (in block-23 node-D)
    (in block-24 node-D)
    (in block-25 node-D)
    (in block-26 node-D)
    (in block-27 node-D)
    (in block-28 node-D)
    (in block-29 node-D)
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
    (in block-20 node-E)
    (in block-21 node-E)
    (in block-22 node-E)
    (in block-23 node-E)
    (in block-24 node-E)
    (in block-25 node-E)
    (in block-26 node-E)
    (in block-27 node-E)
    (in block-28 node-E)
    (in block-29 node-E)
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
    (in block-20 node-F)
    (in block-21 node-F)
    (in block-22 node-F)
    (in block-23 node-F)
    (in block-24 node-F)
    (in block-25 node-F)
    (in block-26 node-F)
    (in block-27 node-F)
    (in block-28 node-F)
    (in block-29 node-F)
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
    (in block-20 node-G)
    (in block-21 node-G)
    (in block-22 node-G)
    (in block-23 node-G)
    (in block-24 node-G)
    (in block-25 node-G)
    (in block-26 node-G)
    (in block-27 node-G)
    (in block-28 node-G)
    (in block-29 node-G)
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
    (in block-15 node-H)
    (in block-16 node-H)
    (in block-17 node-H)
    (in block-18 node-H)
    (in block-19 node-H)
    (in block-20 node-H)
    (in block-21 node-H)
    (in block-22 node-H)
    (in block-23 node-H)
    (in block-24 node-H)
    (in block-25 node-H)
    (in block-26 node-H)
    (in block-27 node-H)
    (in block-28 node-H)
    (in block-29 node-H)
    (in block-0 node-I)
    (in block-1 node-I)
    (in block-2 node-I)
    (in block-3 node-I)
    (in block-4 node-I)
    (in block-5 node-I)
    (in block-6 node-I)
    (in block-7 node-I)
    (in block-8 node-I)
    (in block-9 node-I)
    (in block-10 node-I)
    (in block-11 node-I)
    (in block-12 node-I)
    (in block-13 node-I)
    (in block-14 node-I)
    (in block-15 node-I)
    (in block-16 node-I)
    (in block-17 node-I)
    (in block-18 node-I)
    (in block-19 node-I)
    (in block-20 node-I)
    (in block-21 node-I)
    (in block-22 node-I)
    (in block-23 node-I)
    (in block-24 node-I)
    (in block-25 node-I)
    (in block-26 node-I)
    (in block-27 node-I)
    (in block-28 node-I)
    (in block-29 node-I)
    (in block-0 node-J)
    (in block-1 node-J)
    (in block-2 node-J)
    (in block-3 node-J)
    (in block-4 node-J)
    (in block-5 node-J)
    (in block-6 node-J)
    (in block-7 node-J)
    (in block-8 node-J)
    (in block-9 node-J)
    (in block-10 node-J)
    (in block-11 node-J)
    (in block-12 node-J)
    (in block-13 node-J)
    (in block-14 node-J)
    (in block-15 node-J)
    (in block-16 node-J)
    (in block-17 node-J)
    (in block-18 node-J)
    (in block-19 node-J)
    (in block-20 node-J)
    (in block-21 node-J)
    (in block-22 node-J)
    (in block-23 node-J)
    (in block-24 node-J)
    (in block-25 node-J)
    (in block-26 node-J)
    (in block-27 node-J)
    (in block-28 node-J)
    (in block-29 node-J)
    (in block-0 node-K)
    (in block-1 node-K)
    (in block-2 node-K)
    (in block-3 node-K)
    (in block-4 node-K)
    (in block-5 node-K)
    (in block-6 node-K)
    (in block-7 node-K)
    (in block-8 node-K)
    (in block-9 node-K)
    (in block-10 node-K)
    (in block-11 node-K)
    (in block-12 node-K)
    (in block-13 node-K)
    (in block-14 node-K)
    (in block-15 node-K)
    (in block-16 node-K)
    (in block-17 node-K)
    (in block-18 node-K)
    (in block-19 node-K)
    (in block-20 node-K)
    (in block-21 node-K)
    (in block-22 node-K)
    (in block-23 node-K)
    (in block-24 node-K)
    (in block-25 node-K)
    (in block-26 node-K)
    (in block-27 node-K)
    (in block-28 node-K)
    (in block-29 node-K)
    (in block-0 node-L)
    (in block-1 node-L)
    (in block-2 node-L)
    (in block-3 node-L)
    (in block-4 node-L)
    (in block-5 node-L)
    (in block-6 node-L)
    (in block-7 node-L)
    (in block-8 node-L)
    (in block-9 node-L)
    (in block-10 node-L)
    (in block-11 node-L)
    (in block-12 node-L)
    (in block-13 node-L)
    (in block-14 node-L)
    (in block-15 node-L)
    (in block-16 node-L)
    (in block-17 node-L)
    (in block-18 node-L)
    (in block-19 node-L)
    (in block-20 node-L)
    (in block-21 node-L)
    (in block-22 node-L)
    (in block-23 node-L)
    (in block-24 node-L)
    (in block-25 node-L)
    (in block-26 node-L)
    (in block-27 node-L)
    (in block-28 node-L)
    (in block-29 node-L)
 ))
 (:metric minimize (total-cost))
)
