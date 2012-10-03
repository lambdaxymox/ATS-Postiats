(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Postiats - Unleashing the Potential of Types!
** Copyright (C) 2011-20?? Hongwei Xi, ATS Trustful Software, Inc.
** All rights reserved
**
** ATS is free software;  you can  redistribute it and/or modify it under
** the terms of  the GNU GENERAL PUBLIC LICENSE (GPL) as published by the
** Free Software Foundation; either version 3, or (at  your  option)  any
** later version.
** 
** ATS is distributed in the hope that it will be useful, but WITHOUT ANY
** WARRANTY; without  even  the  implied  warranty  of MERCHANTABILITY or
** FITNESS FOR A PARTICULAR PURPOSE.  See the  GNU General Public License
** for more details.
** 
** You  should  have  received  a  copy of the GNU General Public License
** along  with  ATS;  see the  file COPYING.  If not, please write to the
** Free Software Foundation,  51 Franklin Street, Fifth Floor, Boston, MA
** 02110-1301, USA.
*)

(* ****** ****** *)
//
// Author: Hongwei Xi (gmhwxi AT gmail DOT com)
// Start Time: October, 2012
//
(* ****** ****** *)

staload UT = "pats_utils.sats"
staload _ (*anon*) = "pats_utils.dats"

(* ****** ****** *)

staload
LAB = "pats_label.sats"

(* ****** ****** *)

staload "pats_dynexp2.sats"

(* ****** ****** *)

staload "pats_ccomp.sats"

(* ****** ****** *)

implement
fprint_primdec
  (out, x) = let
  macdef prstr (s) = fprint_string (out, ,(s))
in
//
case+ x.primdec_node of
| PMDnone () => prstr "PMDnone()"
| PMDimpdec () => {
    val () = prstr "PMDimpdec("
    val () = fprint_string (out, "...")
    val () = prstr ")"
  }
| PMDfundecs () => {
    val () = prstr "PMDfundecs("
    val () = fprint_string (out, "...")
    val () = prstr ")"
  }
| PMDvaldecs () => {
    val () = prstr "PMDvaldecs("
    val () = fprint_string (out, "...")
    val () = prstr ")"
  }
| PMDvardecs (d2vs) => {
    val () = prstr "PMDvardecs("
    val () = fprint_d2varlst (out, d2vs)
    val () = prstr ")"
  }
| PMDlocal (
    pmds_head, pmds_body
  ) => {
    val () = prstr "PMDlocal("
    val () = fprint_string (out, "...")
    val () = prstr ")"
  } // end of [PMDlocal]
//
end // end of [fprint_primdec]

implement
fprint_primdeclst
  (out, pmds) = $UT.fprintlst (out, pmds, "\n", fprint_primdec)
// end of [fprint_primdeclst]

(* ****** ****** *)

implement
fprint_primval (out, x) = let
//
  macdef prstr (s) = fprint_string (out, ,(s))
//
in
//
case+ x.primval_node of
//
| PMVtmp (tmp) => {
    val () = prstr "PMVtmp("
    val () = fprint_tmpvar (out, tmp)
    val () = prstr ")"
  }
| PMVtmpref (tmp) => {
    val () = prstr "PMVtmpref("
    val () = fprint_tmpvar (out, tmp)
    val () = prstr ")"
  }
//
| PMVint (i) => {
    val () = prstr "PMVint("
    val () = fprint_int (out, i)
    val () = prstr ")"
  }
| PMVbool (b) => {
    val () = prstr "PMVbool("
    val () = fprint_bool (out, b)
    val () = prstr ")"
  }
| PMVchar (c) => {
    val () = prstr "PMVchar("
    val () = fprint_char (out, c)
    val () = prstr ")"
  }
| PMVstring (str) => {
    val () = prstr "PMVstring("
    val () = fprint_string (out, str)
    val () = prstr ")"
  }
| PMVvoid () => prstr "PMVvoid()"
//
| PMVarg (n) => {
    val () = prstr "PMVarg("
    val () = fprint_int (out, n)
    val () = prstr ")"
  }
| PMVargref (n) => {
    val () = prstr "PMVargref("
    val () = fprint_int (out, n)
    val () = prstr ")"
  }
//
| PMVcastfn (d2c, pmv) => {
    val () = prstr "PMVcastfn("
    val () = fprint_d2cst (out, d2c)
    val () = prstr "; "
    val () = fprint_primval (out, pmv)
    val () = prstr ")"
  }
//
| _ => {
    val () = prstr "PMV...(...)"
  }
//
end // end of [fprint_primval]

(* ****** ****** *)

implement
fprint_primvalist
  (out, xs) = $UT.fprintlst (out, xs, ", ", fprint_primval)
// end of [fprint_primvalist]

(* ****** ****** *)

implement
fprint_primlab
  (out, x) = let
//
macdef prstr (s) = fprint_string (out, ,(s))
//
in
//
case+ x.primlab_node of
//
| PMLlab (l) => {
    val () = prstr "PMLlab("
    val () = $LAB.fprint_label (out, l)
    val () = prstr ")"
  }
| PMLind (pmvs) => {
    val () = prstr "PMLind("
    val () = fprint_primvalist (out, pmvs)
    val () = prstr ")"
  }
//
end // end of [fprint_primlab]

(* ****** ****** *)

(* end of [pats_ccomp_print.dats] *)
