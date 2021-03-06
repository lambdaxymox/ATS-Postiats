/*
******
*
* HX-2014-08:
* for JavaScript code
* translated from ATS
*
******
*/

/*
******
* beg of [JSdate_cats.js]
******
*/

/* ****** ****** */
//
function
ats2js_libc_Date_new_0
  () { return new Date(); }
function
ats2js_libc_Date_new_1_int
  (msec) { return new Date(msec); }
function
ats2js_libc_Date_new_1_string
  (date) { return new Date(date); }
function
ats2js_libc_Date_new_7_all
  (year, mon, day, hour, min, sec, ms)
{
  return new Date(year, mon, day, hour, min, sec, ms);
}
//
/* ****** ****** */
//
function
ats2js_libc_getTime
  (date) { return date.getTime(); }
function
ats2js_libc_getTimezoneOffset
  (date) { return date.getTimezoneOffset(); }
//
/* ****** ****** */
//
function
ats2js_libc_getDay(date) { return date.getDay(); }
function
ats2js_libc_getDate(date) { return date.getDate(); }
function
ats2js_libc_getMonth(date) { return date.getMonth(); }
function
ats2js_libc_getFullYear(date) { return date.getFullYear(); }
//
function
ats2js_libc_getHours(date) { return date.getHours(); }
function
ats2js_libc_getMinutes(date) { return date.getMinutes(); }
function
ats2js_libc_getSeconds(date) { return date.getSeconds(); }
function
ats2js_libc_getMilliseconds(date) { return date.getMilliseconds(); }
//
/* ****** ****** */
//
function
ats2js_libc_getUTCDay(date) { return date.getUTCDay(); }
function
ats2js_libc_getUTCDate(date) { return date.getUTCDate(); }
function
ats2js_libc_getUTCMonth(date) { return date.getUTCMonth(); }
function
ats2js_libc_getUTCFullYear(date) { return date.getUTCFullYear(); }
//
function
ats2js_libc_getUTCHours(date) { return date.getUTCHours(); }
function
ats2js_libc_getUTCMinutes(date) { return date.getUTCMinutes(); }
function
ats2js_libc_getUTCSeconds(date) { return date.getUTCSeconds(); }
function
ats2js_libc_getUTCMilliseconds(date) { return date.getUTCMilliseconds(); }
//
/* ****** ****** */

/* end of [JSdate_cats.js] */
