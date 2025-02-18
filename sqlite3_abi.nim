## This file contains additional definitions that nimterop does not generate
## code for

import sqlite3_gen
export sqlite3_gen


# /*
# ** CAPI3REF: Constants Defining Special Destructor Behavior
# **
# ** These are special values for the destructor that is passed in as the
# ** final argument to routines like [sqlite3_result_blob()].  ^If the destructor
# ** argument is SQLITE_STATIC, it means that the content pointer is constant
# ** and will never change.  It does not need to be destroyed.  ^The
# ** SQLITE_TRANSIENT value means that the content will likely change in
# ** the near future and that SQLite should make its own private copy of
# ** the content before returning.
# **
# ** The typedef is necessary to work around problems in certain
# ** C++ compilers.
# */
const SQLITE_STATIC* = cast[sqlite3_destructor_type](0)
const SQLITE_TRANSIENT* = cast[sqlite3_destructor_type](-1)
