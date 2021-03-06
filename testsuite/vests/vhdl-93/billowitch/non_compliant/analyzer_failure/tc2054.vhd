
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc2054.vhd,v 1.2 2001-10-26 16:30:15 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c07s02b04x00p01n01i02054ent IS
END c07s02b04x00p01n01i02054ent;

ARCHITECTURE c07s02b04x00p01n01i02054arch OF c07s02b04x00p01n01i02054ent IS

BEGIN
  TESTING: PROCESS
    type DATE is
      record
        DAY           : INTEGER range 1 to 31;
        MONTH         : INTEGER range 1 to 12;
        YEAR          : INTEGER range -10000 to 1988;
      end record;
    variable RECV    : DATE;
  BEGIN
    RECV := RECV - (DAY=>14, MONTH=>2, YEAR=>1988);
    assert FALSE 
      report "***FAILED TEST: c07s02b04x00p01n01i02054 - The adding operators + and - are predefined for any numeric type." 
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c07s02b04x00p01n01i02054arch;
