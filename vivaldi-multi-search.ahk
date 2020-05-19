hwndChrome := WinExist("ahk_class Chrome_WidgetWin_1")
AccChrome := Acc_ObjectFromWindow(hwndChrome)
AccAddressBar := GetElementByName(AccChrome, "Address and search bar")
MsgBox % AccAddressBar.accValue(0)

GetElementByName(AccObj, name) {
   if (AccObj.accName(0) = name)
      return AccObj
   
   for k, v in Acc_Children(AccObj)
      if IsObject(obj := GetElementByName(v, name))
         return obj
}


;----- Send keystrokes to Vivaldi:


;first the text with google serach needs to be pasted to the new tab
;prepend d before the text to search it with Duck
; prepend variable needs to be pasted

send ^t
send ^v

;Make a new tab and prepend g to the search text and hit enter to search
; commands to be added

send ^t
send ^v

;Select both tabs and tile them vertically

send ^+{Left}
send ^{F9}

