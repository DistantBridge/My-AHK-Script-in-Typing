
RShift:: Send  % getAscStr("_")

getAscStr(str)
{
	charList:=StrSplit(str)
	for key,val in charList
		out.="{Asc " . asc(val) . "}"
	return out
}