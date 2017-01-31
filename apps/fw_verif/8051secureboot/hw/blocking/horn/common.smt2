; shared definition for the mapping
;; variables
(declare-var XRAM_nxt (Array Int Int))
(declare-var XRAM_1 (Array Int Int))
(declare-var XRAM_2 (Array Int Int))
(declare-var XRAM_3 (Array Int Int))
(declare-var sha_state_nxt Int)
(declare-var sha_state_1 Int)
(declare-var sha_state_2 Int)
(declare-var sha_state_3 Int)
(declare-var sha_rdaddr_nxt Int)
(declare-var sha_rdaddr_1 Int)
(declare-var sha_rdaddr_2 Int)
(declare-var sha_rdaddr_3 Int)
(declare-var sha_wraddr_nxt Int)
(declare-var sha_wraddr_1 Int)
(declare-var sha_wraddr_2 Int)
(declare-var sha_wraddr_3 Int)
(declare-var sha_len_nxt Int)
(declare-var sha_len_1 Int)
(declare-var sha_len_2 Int)
(declare-var sha_len_3 Int)
(declare-var sha_hs_data_nxt Int)
(declare-var sha_hs_data_1 Int)
(declare-var sha_hs_data_2 Int)
(declare-var sha_hs_data_3 Int)
(declare-var sha_bytes_read_nxt Int)
(declare-var sha_bytes_read_1 Int)
(declare-var sha_bytes_read_2 Int)
(declare-var sha_bytes_read_3 Int)
;
(declare-var XRAM_state (Array Int Int))
(declare-var XRAM_rdaddr (Array Int Int))
(declare-var XRAM_wraddr (Array Int Int))
(declare-var XRAM_len (Array Int Int))
(declare-var XRAM_bytes (Array Int Int))
;
(declare-var addr_state Int)
(declare-var addr_rdaddr Int)
(declare-var addr_wraddr Int)
(declare-var addr_len Int)
(declare-var addr_bytes Int)

;; relations
(declare-rel mmio_sha_fe00_A (Int Int Int (Array Int Int) Int Int Int Int Int Int
                                          (Array Int Int) Int Int Int Int Int Int))
(declare-rel mmio_sha_fe00_B (Int Int Int (Array Int Int) Int Int Int Int Int Int
                                          (Array Int Int) Int Int Int Int Int Int))
(declare-rel mmio_sha_fe00_C (Int Int Int (Array Int Int) Int Int Int Int Int Int
                                          (Array Int Int) Int Int Int Int Int Int))
(declare-rel mmio_sha_fe00 (Int Int Int (Array Int Int) Int Int Int Int Int Int
                                        (Array Int Int) Int Int Int Int Int Int))
(declare-rel mmio_sha_fe01 (Int Int Int (Array Int Int) Int Int Int Int Int Int 
                                        (Array Int Int) Int Int Int Int Int Int))
