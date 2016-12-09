#!/bin/bash
#
echo "lclavariable in function1 = $lclvariable"
echo "Gblvariable in function1 = $Gblvariable"
scope()
{
	local lclvariable=1
	Gblvariable=2
	echo "lclavariable in function2 = $lclvariable"
	echo "Gblvariable in function2 = $Gblvariable"
}
scope
echo "lclavariable in function3 = $lclvariable"
echo "Gblvariable in function3 = $Gblvariable"
