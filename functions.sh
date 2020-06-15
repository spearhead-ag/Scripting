#!/bin/bash

function foo1
{   
    echo "Foo1 - A Basic Function"
}

#output
foo1

# ===============================================

foo2 ()
{
    #Input var into functions
    echo "Foo2 Function" $1 $2
    echo "All input variables in Foo2" $*
}

foo2 Hi There Everyone 2

# ===============================================

Return_Variable ()
{
    return $1
}

Return_Variable 25 #only upto 255
var1=$?
var2=$? #Wont work because because we've just used the return variable
echo "Var1 = " $var1
echo "Var2 = " $var2

# ===============================================

Return_Variable2 ()
{
    local Ret=$1 #Local variable that only exist in this function
    let "Ret = Ret - 5"
    return $Ret
}

Return_Variable2 20
var3=$?
echo "Can we see the Local Variable?" $Ret
echo "Var3 = " $var3


Return_Variable2 50
var3=$?
echo "Can we see the Local Variable?" $Ret
echo "Var3 = " $var3
# ===============================================

Global_Return ()
{
    GlobalRet=0
    let "GlobalRet = $1 +1"
    return $Ret
}

Global_Return 260
echo "GlobalReturn Variable = " $GlobalRet

Global_Return 270
echo "GlobalReturn Variable = " $GlobalRet