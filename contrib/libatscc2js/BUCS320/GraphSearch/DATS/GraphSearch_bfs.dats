(* ****** ****** *)
(*
** For writing ATS code
** that translates into JavaScript
*)
(* ****** ****** *)

#define ATS_DYNLOADFLAG 0

(* ****** ****** *)
//
// HX-2014-08:
// prefix for external names
//
#define
ATS_EXTERN_PREFIX
"ats2js_bucs320_"
#define
ATS_STATIC_PREFIX
"_ats2js_bucs320_graphsearch_bfs_"
//
(* ****** ****** *)
//
#define
LIBATSCC_targetloc
"$PATSHOME/contrib/libatscc"
//
(* ****** ****** *)
//
#staload "./../../../basics_js.sats"
//
#staload "./../../../SATS/bool.sats"
#staload "./../../../SATS/integer.sats"
//
(* ****** ****** *)
//
#staload "./../../../SATS/qlistref.sats"
//
macdef
qlistref_insert = qlistref_enqueue
macdef
qlistref_takeout_opt = qlistref_dequeue_opt
//
(* ****** ****** *)
//
#include
"{$LIBATSCC}/BUCS320/GraphSearch/DATS/GraphSearch_bfs.dats"
//
(* ****** ****** *)

(* end of [GraphSearch_bfs.dats] *)
