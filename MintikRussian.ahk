					#SingleInstance, Force
#UseHook
#NoEnv
SetWorkingDir  %A_AppData%\ahkadminconfig
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
#IfWinActive ahk_exe GTA5.exe

SplashTextoff
ListLines Off
Process, Priority, , A
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
reloadStatus = 0
DayANS = 0
WeekANS = 0
FormatTime, CurrentDate,, ddMM

Usefull = Полезное
Cheatsheet = Меню памятки

IfnotExist, %A_ScriptDir%\res
{
FileCreateDir, %A_ScriptDir%\res
}


IfnotExist, %A_ScriptDir%\res\0ONXv4a.png
{
URLDownloadToFile,https://i.imgur.com/0ONXv4a.png,%A_ScriptDir%\res\0ONXv4a.png
}
IfNotExist, %A_ScriptDir%\Punishment.txt 
{
URLDownloadToFile, https://jeazz.ucoz.net/ahk/admins/Punishment.txt,%A_ScriptDir%\Punishment.txt
}
IfnotExist, %A_ScriptDir%\res
{
FileCreateDir, %A_ScriptDir%\res
}

FileSetAttrib, +H, %A_ScriptDir%\res

Menu, Tray, add, Показать, Show,
Menu, Tray, Default, Показать,
Menu, Tray, add, Перезагрузить, Reload,
Menu, Tray, add, Скрыть, Hide,
Menu, Tray, add, Закрыть, Close,
Menu, Tray, NoStandard

IniRead, Week, %A_ScriptDir%\res\Settings.ini, ANS, Week
IniRead, CurrentDateT, %A_ScriptDir%\res\Settings.ini, ANS, CurrentDateT
if CurrentDateT=%CurrentDate%
{
IniRead, CurrentDateT, %A_ScriptDir%\res\Settings.ini, ANS, CurrentDateT
IniRead, DayANS, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
}
else
{
    IniWrite, %CurrentDate%, %A_ScriptDir%\res\Settings.ini, ANS, CurrentDateT
    IniWrite, %DayANS%, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
    IniRead, DayANS, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
    IniRead, CurrentDateT, %A_ScriptDir%\res\Settings.ini, ANS, CurrentDateT
}
if Week=%A_YWeek%
{
IniRead, Week, %A_ScriptDir%\res\Settings.ini, ANS, Week
IniRead, WeekANS, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
}
else
{
    IniWrite, %A_YWeek%, %A_ScriptDir%\res\Settings.ini, ANS, Week
    IniWrite, %WeekANS%, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
    IniRead, WeekANS, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
    IniRead, Week, %A_ScriptDir%\res\Settings.ini, ANS, Week
}

IniRead, Radio1, %A_ScriptDir%\res\Settings.ini, Resolution, 1920x1080
IniRead, Radio2, %A_ScriptDir%\res\Settings.ini, Resolution, 1600x900
IniRead, Radio3, %A_ScriptDir%\res\Settings.ini, Resolution, 1680x1050
IniRead, Radio4, %A_ScriptDir%\res\Settings.ini, Resolution, 1366x768
IniRead, Radio5, %A_ScriptDir%\res\Settings.ini, Resolution, 1280x960
IniRead, Radio6, %A_ScriptDir%\res\Settings.ini, Resolution, 1920x10802
IniRead, Radio7, %A_ScriptDir%\res\Settings.ini, Resolution, 1280х1024
IniRead, Radio2k, %A_ScriptDir%\res\Settings.ini, Resolution, 2560x1440

IniRead, Radio8, %A_ScriptDir%\res\Settings.ini, Login Commands, /chide
IniRead, Radio9, %A_ScriptDir%\res\Settings.ini, Login Commands, /esp3
IniRead, Radio10, %A_ScriptDir%\res\Settings.ini, Login Commands, /dl
IniRead, Radio11, %A_ScriptDir%\res\Settings.ini, Login Commands, /zzdebug
IniRead, Radio12, %A_ScriptDir%\res\Settings.ini, Login Commands, /gm
IniRead, Radio13, %A_ScriptDir%\res\Settings.ini, Login Commands, /hidecheatinfo
IniRead, Radio14, %A_ScriptDir%\res\Settings.ini, Login Commands, /templeader
IniRead, Radio15, %A_ScriptDir%\res\Settings.ini, Login Commands, /advtoggle 0
IniRead, Radio16, %A_ScriptDir%\res\Settings.ini, Login Commands, /setweatherlocal clear

IniRead, key1, %A_ScriptDir%\res\Settings.ini, Binds, KEY1
IniRead, key2, %A_ScriptDir%\res\Settings.ini, Binds, KEY2
IniRead, key3, %A_ScriptDir%\res\Settings.ini, Binds, KEY3
IniRead, key4, %A_ScriptDir%\res\Settings.ini, Binds, KEY4
IniRead, key5, %A_ScriptDir%\res\Settings.ini, Binds, KEY5
IniRead, key6, %A_ScriptDir%\res\Settings.ini, Binds, KEY6
IniRead, key7, %A_ScriptDir%\res\Settings.ini, Binds, KEY7
IniRead, key8, %A_ScriptDir%\res\Settings.ini, Binds, KEY8
IniRead, key9, %A_ScriptDir%\res\Settings.ini, Binds, KEY9
IniRead, key10, %A_ScriptDir%\res\Settings.ini, Binds, KEY10
IniRead, key11, %A_ScriptDir%\res\Settings.ini, Binds, KEY11
IniRead, key12, %A_ScriptDir%\res\Settings.ini, Binds, KEY12
IniRead, key13, %A_ScriptDir%\res\Settings.ini, Binds, KEY13
IniRead, key14, %A_ScriptDir%\res\Settings.ini, Binds, KEY14
IniRead, key15, %A_ScriptDir%\res\Settings.ini, Binds, KEY15
IniRead, key16, %A_ScriptDir%\res\Settings.ini, Binds, KEY16
IniRead, key17, %A_ScriptDir%\res\Settings.ini, Binds, KEY17
IniRead, key18, %A_ScriptDir%\res\Settings.ini, Binds, KEY18
IniRead, key19, %A_ScriptDir%\res\Settings.ini, Binds, KEY19
IniRead, key20, %A_ScriptDir%\res\Settings.ini, Binds, KEY20

IniRead, dis, %A_ScriptDir%\res\Settings.ini, Discord, dis
IniRead, tag, %A_ScriptDir%\res\Settings.ini, Discord, tag
IniRead, gadis, %A_ScriptDir%\res\Settings.ini, Discord, gadis
IniRead, gatag, %A_ScriptDir%\res\Settings.ini, Discord, gatag
IniRead, zgadis, %A_ScriptDir%\res\Settings.ini, Discord, zgadis
IniRead, zgatag, %A_ScriptDir%\res\Settings.ini, Discord, zgatag

if dis=ERROR
{
IniWrite, Мой, %A_ScriptDir%\res\Settings.ini, Discord, dis
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Discord, tag
IniWrite, ГА, %A_ScriptDir%\res\Settings.ini, Discord, gadis
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Discord, gatag
IniWrite, ЗГА, %A_ScriptDir%\res\Settings.ini, Discord, zgadis
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Discord, zgatag
}

IniRead, X, %A_ScriptDir%\res\Settings.ini, Coords, X
IniRead, Y, %A_ScriptDir%\res\Settings.ini, Coords, Y
IniRead, X2, %A_ScriptDir%\res\Settings.ini, Coords, X2
IniRead, Y2, %A_ScriptDir%\res\Settings.ini, Coords, Y2
IniRead, Fraction, %A_ScriptDir%\res\Settings.ini, Fraction, Fraction
IniRead, Dimension, %A_ScriptDir%\res\Settings.ini, Dimension, Dimension

if X=ERROR
{
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Coords, X
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Coords, Y
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Coords, X2
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Coords, Y2
IniWrite, 222, %A_ScriptDir%\res\Settings.ini, Dimension, Dimension
IniWrite, 7, %A_ScriptDir%\res\Settings.ini, Fraction, Fraction
reload
}

;гуи счетчика
WinSet_Click_Through(I, T="254") {
IfWinExist, % "ahk_id " I
{
If (T == "Off")
{
WinSet, AlwaysOnTop, Off, % "ahk_id " I
WinSet, Transparent, Off, % "ahk_id " I
WinSet, ExStyle, -0x20, % "ahk_id " I
}
Else
{
WinSet, AlwaysOnTop, On, % "ahk_id " I
If(T < 0 || T > 254 || T == "On")
T := 254
WinSet, Transparent, % T, % "ahk_id " I
WinSet, ExStyle, +0x20, % "ahk_id " I
}
}
Else
Return 0
}
Gui, +LastFound +ToolWindow
ID := WinExist()
Gui, Show, NoActivate, Hide x0 y0 w0 h0, Overlay
WinSet_Click_Through(ID, "On")
GuiControl,, Un-Clickable
CustomColor := "#00FF00"
Gui, +LastFound +AlwaysOnTop -Caption +ToolWindow
Gui, Color, cRed

Gui, Font, s10
Gui, Font, q1
Gui, Font, w400
Gui, Add, Text, x9 vMyText cWhite, XXX, YYYY
Gui, Add, Text, x107 y7 vMyTotalR cWhite, XXXXXX, YYYYYY
Gui, Color, 1c2126
WinSet, TransColor, AAAAAA 170
GoSub, UpdateCounter1
Gui, Show, x%X% y%Y% w212 h30, Overlay

Hotkey, %KEY1%, Off, UseErrorLevel
Hotkey, %KEY1%, Reports, On, UseErrorLevel
Hotkey, %KEY2%, Off, UseErrorLevel
Hotkey, %KEY2%, delv, On, UseErrorLevel
Hotkey, %KEY3%, Off, UseErrorLevel
Hotkey, %KEY3%, gm, On, UseErrorLevel
Hotkey, %KEY4%, Off, UseErrorLevel
Hotkey, %KEY4%, vac, On, UseErrorLevel
Hotkey, %KEY5%, Off, UseErrorLevel
Hotkey, %KEY5%, mess, On, UseErrorLevel
Hotkey, %KEY6%, Off, UseErrorLevel
Hotkey, %KEY6%, dimcar, On, UseErrorLevel
Hotkey, %KEY7%, Off, UseErrorLevel
Hotkey, %KEY7%, gcar, On, UseErrorLevel
Hotkey, %KEY8%, Off, UseErrorLevel
Hotkey, %KEY8%, mtp, On, UseErrorLevel
Hotkey, %KEY9%, Off, UseErrorLevel
Hotkey, %KEY9%, repm, On, UseErrorLevel
Hotkey, %KEY10%, Off, UseErrorLevel
Hotkey, %KEY10%, rep, On, UseErrorLevel
Hotkey, %KEY11%, Off, UseErrorLevel
Hotkey, %KEY11%, vhod, On, UseErrorLevel
Hotkey, %KEY12%, Off, UseErrorLevel
Hotkey, %KEY12%, resc, On, UseErrorLevel
Hotkey, %KEY13%, Off, UseErrorLevel
Hotkey, %KEY13%, PunishmentHandler, On, UseErrorLevel
Hotkey, %KEY14%, Off, UseErrorLevel
Hotkey, %KEY14%, Cheatsheet, On, UseErrorLevel
Hotkey, %KEY15%, Off, UseErrorLevel
Hotkey, %KEY15%, gh, On, UseErrorLevel
Hotkey, %KEY16%, Off, UseErrorLevel
Hotkey, %KEY16%, chide, On, UseErrorLevel
Hotkey, %KEY17%, Off, UseErrorLevel
Hotkey, %KEY17%, zzdebug, On, UseErrorLevel
Hotkey, %KEY18%, Off, UseErrorLevel
Hotkey, %KEY18%, reshp, On, UseErrorLevel
Hotkey, %KEY19%, Off, UseErrorLevel
Hotkey, %KEY19%, killplayer, On, UseErrorLevel
Hotkey, %KEY20%, Off, UseErrorLevel
Hotkey, %KEY20%, f5, On, UseErrorLevel

;Общая инфа
Gui, Main: Add, Tab, x0 y0 w732 h400 , Хоткеи|Настройки
Gui, Main: -MaximizeBox
Gui, Main: -SysMenu
Gui, Main: Show, w732 h400, Admin.ahk by Mint + bless
Gui, Main: Add, Button, x675 y2 w25 h16 ghide, —
Gui, Main: Add, Button, x705 y2 w25 h16 gClose, X
Gui, Main: Color, 313338
Gui, Main: Font,cwhite, 

Gui, Main: Add, Text, x12 y382 w62 h15 +0x200 +BackgroundTrans +border, ahk by Mint + bless

;Левый блок кнопок
Gui, Main: Add, Button, x10 y128 w64 h21 gInfo , Инфо
Gui, Main: Add, Button, x10 y154 w64 h21 gCommandlist, Команды
Gui, Main: Add, Button, x10 y180 w64 h21 gPunish, Наказания
Gui, Main: Add, Button, x10 y206 w64 h21 gTeleports, Телепорты
Gui, Main: Add, Button, x658 y128 w64 h21 gchange, Обнова
Gui, Main: Add, Button, x658 y154 w64 h21 gds, Дискорд
Gui, Main: Add, Button, x10 y336 w64 h21 gSaveData, Сохранить
Gui, Main: Add, Button, x10 y362 w64 h21 gupturn, Обновить

;Верхние боксы
Gui, Main: Add, GroupBox, x246 y28 w50 h14 cA52A2A,
Gui, Main: Add, GroupBox, x504 y28 w100 h14 cA52A2A,
Gui, Main: Add, GroupBox, x658 y18 w66 h27 cA52A2A,
Gui, Main: Add, Text, x246 y28 w50 h14 +0x200, Бинды
Gui, Main: Add, Text, x504 y28 w100 h14 +0x200 , Команды при входе
Gui, Main: Add, Text, x668 y28 w50 h14 +0x200 , Динамик

;динамик
Gui, Main: Add, Edit, x658 y50 w33 h21 +Number vDinamic cblack, %Dinamic%
Gui, Main: Add, Button, x696 y53 w21 h15 gsavedata1, ✓

Gui, Main: Add, Hotkey, x90 y50 w48 h21 vHot1, %KEY1% ;F8
Gui, Main: Add, Hotkey, x90 y76 w48 h21 vHot2, %KEY2% ;Удалить машину
Gui, Main: Add, Hotkey, x90 y102 w48 h21 vHot3, %KEY3% ; gm 
Gui, Main: Add, Hotkey, x90 y128 w48 h21 vHot4, %KEY4% ; вакцина
Gui, Main: Add, Hotkey, x90 y154 w48 h21 vHot5, %KEY5% ; Убрать снег
Gui, Main: Add, Hotkey, x280 y258 w48 h21 vHot6, %KEY6% ; машина после воды
Gui, Main: Add, Hotkey, x90 y180 w48 h21 vHot7, %KEY7% ; getcar
Gui, Main: Add, Hotkey, x90 y206 w48 h21 vHot8, %KEY8% ; тп на метку
Gui, Main: Add, Hotkey, x90 y232 w48 h21 vHot9, %KEY9% ; -реп
Gui, Main: Add, Hotkey, x90 y258 w48 h21 vHot10, %KEY10% ; +1 репорт
Gui, Main: Add, Hotkey, x280 y206 w48 h21 vHot11, %KEY11% ; Команды при входе
Gui, Main: Add, Hotkey, x90 y284 w48 h21 vHot12, %KEY12% ;   rescue
Gui, Main: Add, Hotkey, x280 y76 w48 h21 vHot13, %KEY13% ; выдача 
Gui, Main: Add, Hotkey, x280 y284 w48 h21 vHot14, %KEY14% ; памятка
Gui, Main: Add, Hotkey, x280 y180 w48 h21 vHot15, %KEY15% ;  вкл выкл gh
Gui, Main: Add, Hotkey, x280 y102 w48 h21 vHot16, %KEY16% ; вкл выкл chide 
Gui, Main: Add, Hotkey, x280 y128 w48 h21 vHot17, %KEY17% ;  вкл выкл zzdebug
Gui, Main: Add, Hotkey, x280 y154 w48 h21 vHot18, %KEY18% ;  кил рес
Gui, Main: Add, Hotkey, x280 y50 w48 h21 vHot19, %KEY19% ; hp 0 
Gui, Main: Add, Hotkey, x280 y232 w48 h21 vHot20, %KEY20% ; фриткам

Gui, Main: Add, Text, x143 y53 w120 h14 +0x200, Открыть репорты
Gui, Main: Add, Text, x143 y79 w120 h14 +0x200, Проверка
Gui, Main: Add, Text, x143 y105 w120 h14 +0x200, Вкл/Выкл /gm
Gui, Main: Add, Text, x143 y131 w120 h14 +0x200, Вакцина
Gui, Main: Add, Text, x143 y157 w120 h14 +0x200, Убрать снег
Gui, Main: Add, Text, x143 y183 w120 h14 +0x200, ТП авто к себе
Gui, Main: Add, Text, x143 y209 w120 h14 +0x200, ТП на метку
Gui, Main: Add, Text, x143 y235 w120 h14 +0x200, Убрать -1 репорт
Gui, Main: Add, Text, x143 y261 w120 h14 +0x200, Добавить +1 репорт
Gui, Main: Add, Text, x143 y287 w120 h14 +0x200, Воскресить игрока
Gui, Main: Add, Text, x333 y287 w120 h14 +0x200, Памятка

Gui, Main: Add, Text, x333 y53 w120 h14 +0x200, Убить игрока
Gui, Main: Add, Text, x333 y79 w120 h14 +0x200, Выдача наказаний
Gui, Main: Add, Text, x333 y105 w120 h14 +0x200, Вкл/Выкл /chide
Gui, Main: Add, Text, x333 y131 w120 h14 +0x200, Вкл/Выкл /zzdebug
Gui, Main: Add, Text, x333 y160 w220 h14 +0x200, HP 0 + rescue
Gui, Main: Add, Text, x333 y183 w122 h14 +0x200, Телепорт игрока к себе
Gui, Main: Add, Text, x333 y209 w100 h14 +0x200 , Команды при входе
Gui, Main: Add, Text, x333 y235 w100 h14 +0x200 , Уйти в F5
Gui, Main: Add, Text, x333 y261 w104 h14 +0x200 , В разработке

;при входе
Gui, Main: Add, CheckBox, x474 y50 w120 h23 vRadio8 Checked%Radio8%, /chide
Gui, Main: Add, CheckBox, x474 y76 w120 h23 vRadio9 Checked%Radio9%, /esp3
Gui, Main: Add, CheckBox, x474 y102 w120 h23 vRadio10 Checked%Radio10%, /dl
Gui, Main: Add, CheckBox, x474 y128 w120 h23 vRadio11 Checked%Radio11%, /zzdebug
Gui, Main: Add, CheckBox, x474 y154 w120 h23 vRadio12 Checked%Radio12%, /gm
Gui, Main: Add, CheckBox, x474 y180 w120 h23 vRadio13 Checked%Radio13%, /hidecheatinfo
Gui, Main: Add, CheckBox, x474 y206 w120 h23 vRadio14 Checked%Radio14%, /templeader
Gui, Main: Add, CheckBox, x474 y232 w120 h23 vRadio15 Checked%Radio15%, /advtoggle 0
Gui, Main: Add, CheckBox, x474 y258 w120 h23 vRadio16 Checked%Radio16%, /setweatherlocal 

;настройки 
Gui, Main: Tab, 2
Gui, Main: Add, Button, x675 y2 w25 h16 ghide, —
Gui, Main: Add, Button, x705 y2 w25 h16 gClose, X
Gui, Main: Add, Picture, x193 y158, %A_ScriptDir%\res\0ONXv4a.png
Gui, Main: Add, GroupBox, x10 y18 w710 h27 cA52A2A,
Gui, Main: Add, GroupBox, x10 y150 w168 h27 cA52A2A,
Gui, Main: Add, Text, x44 y28 w120 h14 +0x200 , Разрешение экрана
Gui, Main: Add, Radio, x12 y50 w80 h23 Group vRadio2k Checked%Radio2k%, 2560x1440
Gui, Main: Add, Radio, x12 y76 w80 h23 vRadio1 Checked%Radio1%, 1920x1080
Gui, Main: Add, Radio, x114 y50 w80 h23 vRadio2 Checked%Radio2%, 1600x900
Gui, Main: Add, Radio, x12 y128 w80 h23 vRadio3 Checked%Radio3%, 1680x1050
Gui, Main: Add, Radio, x114 y128 w80 h23 vRadio4 Checked%Radio4%, 1366x768
Gui, Main: Add, Radio, x114 y102 w80 h23 vRadio5 Checked%Radio5%, 1280x960
Gui, Main: Add, Radio, x12 y102 w100 h23 vRadio6 Checked%Radio6%, 1920x1080 | 5:4
Gui, Main: Add, Radio, x114 y76 w80 h23 vRadio7 Checked%Radio7%, 1280x1024

Gui, Main: Add, Text, x212 y28 w120 h14 +0x200, Бизвар дименшен
Gui, Main: Add, Edit, x206 y50 w48 h21 vDimension +number cblack, %Dimension%
Gui, Main: Add, Text, x259 y53 w130 h14 +0x200, Дименшен

Gui, Main: Add, Text, x372 y28 w138 h14 +0x200 , Дискорды
Gui, Main: Add, Text, x440 y53 w115 h14 +0x200, Дискорд 
Gui, Main: Add, Edit, x319 y50 w65 h21 vdis cblack, %dis%
Gui, Main: Add, Edit, x390 y50 w45 h21 vtag +Number cblack, %tag%

Gui, Main: Add, Text, x440 y79 w90 h14 +0x200 , Дискорд ГА
Gui, Main: Add, Edit, x319 y76 w65 h21 vgadis cblack, %gadis%
Gui, Main: Add, Edit, x390 y76 w45 h21 vgatag +Number cblack, %gatag%

Gui, Main: Add, Text, x440 y105 w115 h14 +0x200, Дискорд зГА 
Gui, Main: Add, Edit, x319 y102 w65 h21 vzgadis cblack, %zgadis%
Gui, Main: Add, Edit, x390 y102 w45 h21 vzgatag +Number cblack, %zgatag%


Gui, Main: Add, Text, x526 y28 w190 h14 +0x200 , Расположение счетчика/памятки
Gui, Main: Add, Text, x573 y53 w80 h14 +0x200, Координата X
Gui, Main: Add, Text, x573 y79 w80 h14 +0x200, Координата Y
Gui, Main: Add, Edit, x520 y50 w48 h21 vX +number cblack, %X%
Gui, Main: Add, Edit, x520 y76 w48 h21 vY +number cblack, %Y%

Gui, Main: Add, Text, x573 y105 w130 h14 +0x200, Координата X (Памятка)
Gui, Main: Add, Text, x573 y131 w140 h14 +0x200, Координата Y (Памятка)

Gui, Main: Add, Edit, x520 y102 w48 h21 vX2 +number cblack, %X2%
Gui, Main: Add, Edit, x520 y128 w48 h21 vY2 +number cblack, %Y2%

Gui, Main: Add, Text, x38 y160 w120 h14 +0x200, Временное лидерство
Gui, Main: Add, Text, x65 y185 w120 h14 +0x200, Номер фракции
Gui, Main: Add, Edit, x12 y182 w48 h21 vFraction +number cblack, %Fraction%

Gui, Main: Add, Button, x10 y310 w64 h21 gSaveData, Сохранить
Gui, Main: Add, Text, x12 y382 w62 h15 +0x200 +BackgroundTrans +border, ahk by Mint  + bless

;динамик
SaveData1: 
Gui, Main: Submit, NoHide
IniWrite, %Dinamic%, %A_ScriptDir%\res\Settings.ini, ID, Dinamic
sleep 200
return

;настройки
SaveData:
Gui, Submit, NoHide
IniWrite, %Radio1%, %A_ScriptDir%\res\Settings.ini, Resolution, 1920x1080
IniWrite, %Radio3%, %A_ScriptDir%\res\Settings.ini, Resolution, 1680x1050
IniWrite, %Radio2%, %A_ScriptDir%\res\Settings.ini, Resolution, 1600x900
IniWrite, %Radio4%, %A_ScriptDir%\res\Settings.ini, Resolution, 1366x768
IniWrite, %Radio5%, %A_ScriptDir%\res\Settings.ini, Resolution, 1280x960
IniWrite, %Radio6%, %A_ScriptDir%\res\Settings.ini, Resolution, 1920x10802
IniWrite, %Radio7%, %A_ScriptDir%\res\Settings.ini, Resolution, 1280х1024
IniWrite, %Radio2k%, %A_ScriptDir%\res\Settings.ini, Resolution, 2560x1440

IniWrite, %Radio8%, %A_ScriptDir%\res\Settings.ini, Login Commands, /chide
IniWrite, %Radio9%, %A_ScriptDir%\res\Settings.ini, Login Commands, /esp3
IniWrite, %Radio10%, %A_ScriptDir%\res\Settings.ini, Login Commands, /dl
IniWrite, %Radio11%, %A_ScriptDir%\res\Settings.ini, Login Commands, /zzdebug
IniWrite, %Radio12%, %A_ScriptDir%\res\Settings.ini, Login Commands, /gm
IniWrite, %Radio13%, %A_ScriptDir%\res\Settings.ini, Login Commands, /hidecheatinfo
IniWrite, %Radio14%, %A_ScriptDir%\res\Settings.ini, Login Commands, /templeader
IniWrite, %Radio15%, %A_ScriptDir%\res\Settings.ini, Login Commands, /advtoggle 0
IniWrite, %Radio16%, %A_ScriptDir%\res\Settings.ini, Login Commands, /setweatherlocal CLEAR
IniWrite, %Hot1%, %A_ScriptDir%\res\Settings.ini, Binds, KEY1
IniWrite, %Hot2%, %A_ScriptDir%\res\Settings.ini, Binds, KEY2
IniWrite, %Hot3%, %A_ScriptDir%\res\Settings.ini, Binds, KEY3
IniWrite, %Hot4%, %A_ScriptDir%\res\Settings.ini, Binds, KEY4
IniWrite, %Hot5%, %A_ScriptDir%\res\Settings.ini, Binds, KEY5
IniWrite, %Hot6%, %A_ScriptDir%\res\Settings.ini, Binds, KEY6
IniWrite, %Hot7%, %A_ScriptDir%\res\Settings.ini, Binds, KEY7
IniWrite, %Hot8%, %A_ScriptDir%\res\Settings.ini, Binds, KEY8
IniWrite, %Hot9%, %A_ScriptDir%\res\Settings.ini, Binds, KEY9
IniWrite, %Hot10%, %A_ScriptDir%\res\Settings.ini, Binds, KEY10
IniWrite, %Hot11%, %A_ScriptDir%\res\Settings.ini, Binds, KEY11
IniWrite, %Hot12%, %A_ScriptDir%\res\Settings.ini, Binds, KEY12
IniWrite, %Hot13%, %A_ScriptDir%\res\Settings.ini, Binds, KEY13
IniWrite, %Hot14%, %A_ScriptDir%\res\Settings.ini, Binds, KEY14
IniWrite, %Hot15%, %A_ScriptDir%\res\Settings.ini, Binds, KEY15
IniWrite, %Hot16%, %A_ScriptDir%\res\Settings.ini, Binds, KEY16
IniWrite, %Hot17%, %A_ScriptDir%\res\Settings.ini, Binds, KEY17
IniWrite, %Hot18%, %A_ScriptDir%\res\Settings.ini, Binds, KEY18
IniWrite, %Hot19%, %A_ScriptDir%\res\Settings.ini, Binds, KEY19
IniWrite, %Hot20%, %A_ScriptDir%\res\Settings.ini, Binds, KEY20

IniWrite, %X%, %A_ScriptDir%\res\Settings.ini, Coords, X
IniWrite, %Y%, %A_ScriptDir%\res\Settings.ini, Coords, Y
IniWrite, %X2%, %A_ScriptDir%\res\Settings.ini, Coords, X2
IniWrite, %Y2%, %A_ScriptDir%\res\Settings.ini, Coords, Y2
IniWrite, %Dimension%, %A_ScriptDir%\res\Settings.ini, Dimension, Dimension
IniWrite, %Fraction%, %A_ScriptDir%\res\Settings.ini, Fraction, Fraction

IniWrite, %dis%, %A_ScriptDir%\res\Settings.ini, Discord, dis
IniWrite, %tag%, %A_ScriptDir%\res\Settings.ini, Discord, tag
IniWrite, %gadis%, %A_ScriptDir%\res\Settings.ini, Discord, gadis
IniWrite, %gatag%, %A_ScriptDir%\res\Settings.ini, Discord, gatag
IniWrite, %zgadis%, %A_ScriptDir%\res\Settings.ini, Discord, zgadis
IniWrite, %zgatag%, %A_ScriptDir%\res\Settings.ini, Discord, zgatag
Reload
return

;счетчик
mess:
SendInput, {T}
Sleep 500
SendInput,/setweatherlocal CLEAR{Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput,/togglesnow{Enter}
Return


UpdateCounter1:
IniWrite, %DayANS%, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniRead, DayANS, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniWrite, %WeekANS%, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
IniRead, WeekANS, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
GuiControl,, MyText, День: %DayANS%
GuiControl,, MyTotalR, Неделя: %WeekANS%
return

UpdateCounter2:
DayANS-=1
WeekANS-=1
IniWrite, %DayANS%, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniRead, DayANS, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniWrite, %WeekANS%, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
IniRead, WeekANS, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
GuiControl,, MyText, День: %DayANS%
GuiControl,, MyTotalR, Неделя: %WeekANS%
return

UpdateCounter:
DayANS+=1
WeekANS+=1
IniWrite, %DayANS%, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniRead, DayANS, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniWrite, %WeekANS%, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
IniRead, WeekANS, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
GuiControl,, MyText, День: %DayANS%
GuiControl,, MyTotalR, Неделя: %WeekANS%
return

Reports:
sendinput, {F11} 
sleep 50
mousemove 494, 161
return

	Info:
    Gui, Info: Color, 313338
    Gui, Info: Font, s12, Segoe UI
    Gui, Info: Font, cwhite
	Gui, Info: Add, Text, x14 y8  h23 +0x200,АХК создан для облегчения работы администрации проекта Russian Online Majestic
    Gui, Info: Add, Text, x14 y32  h23 +0x200, 
    Gui, Info: Add, Text, x14 y56  h23 +0x200,АХК автоматически считает кол-во отвеченных репортов в день и в неделю, во 
    Gui, Info: Add, Text, x14 y80  h23 +0x200, время ответа на репорт при первом сообщении в ответе жмите сочетание клавиш, 
    Gui, Info: Add, Text, x14 y104  h23 +0x200, Alt + E, а так же .ку .иду .сек .
    Gui, Info: Add, Text, x14 y128  h23 +0x200,
    Gui, Info: Add, Text, x14 y152  h23 +0x200, Все команды, телепорты, наказания можно вводить транслитом. Пр.: .ез -> /tp
    Gui, Info: Add, Text, x14 y176  h23 +0x200, 
    Gui, Info: Add, Text, x14 y200  h23 +0x200, Для корректной работы софта необходимо выбрать разрешение экрана, ваш 
    Gui, Info: Add, Text, x14 y224  h23 +0x200, дискорд, в настройках.
    Gui, Info: Add, Text, x14 y248  h23 +0x200, 
    Gui, Info: Add, Text, cred x14 y272  h23 +0x200, Хоткеи:
	Gui, Info: Add, Text, x14 y320  h23 +0x200,Ctrl + F9 - Перезапустить.
    Gui, Info: Add, Text, x14 y296  h23 +0x200,Ctrl + F10 - Закрыть.
    Gui, Info: Add, Text, x14 y344  h23 +0x200,
    Gui, Info: Add, Text, x14 y368  h23 +0x200, Если что-то сломалось/не работает/есть идеи и т.п. писать - в Дискорд. (Кнопка Дискорд)
    Gui, Info: Show, h390 w670, Информация
	Return
    ;===================================================================================
Teleports:
    MsgBox, 8192, Описание "Телепорты",
return
    MsgBox, 8192, Описание "Кастомные телепорты",
return
;===================================================================================

	Commandlist:
	Gui, Commandlist: -SysMenu
	Gui, Commandlist: Add, Button, x487 y2 w25 h16 gguiclose3, X
    Gui, Commandlist: Add, Tab, x0 y0 h800 w530, 1|2
    Gui, Commandlist: Color, 313338
    Gui, Commandlist: Font, s8, Segoe UI
    Gui, Commandlist: Font, cwhite
    Gui, Commandlist: Add, Text, x8 y24  h20 +0x200, .иср - /bancheck
    Gui, Commandlist: Add, Text, x8 y40  h20 +0x200, /jch - /ajailcheck 
    Gui, Commandlist: Add, Text, x8 y56  h20 +0x200, .оср - /ajailcheck 
    Gui, Commandlist: Add, Text, x8 y72  h20 +0x200, .ифтсрусл - /bancheck
    Gui, Commandlist: Add, Text, x8 y88  h20 +0x200, .фофшдсрусл - /ajailcheck 
    Gui, Commandlist: Add, Text, x8 y104  h20 +0x200, /tf - /tempfamily 
    Gui, Commandlist: Add, Text, x8 y120  h20 +0x200, .еа - /tempfamily 
    Gui, Commandlist: Add, Text, x8 y136  h20 +0x200, /sm - /setmaterials 
    Gui, Commandlist: Add, Text, x8 y152  h20 +0x200, .ыь - /setmaterials 
    Gui, Commandlist: Add, Text, x8 y168  h20 +0x200, /tn - /tempname 
    Gui, Commandlist: Add, Text, x8 y184  h20 +0x200, .ет - /tempname 
    Gui, Commandlist: Add, Text, x8 y200  h20 +0x200, .яяв - /zzdebug 
    Gui, Commandlist: Add, Text, x8 y216  h20 +0x200, /zzd - /zzdebug 
    Gui, Commandlist: Add, Text, x8 y232  h20 +0x200, /Usefull - /addUsefullitheater 
    Gui, Commandlist: Add, Text, x8 y248  h20 +0x200, .фьзр - /addUsefullitheater 
    Gui, Commandlist: Add, Text, x8 y264  h20 +0x200, /rUsefull - /removeUsefullitheater 
    Gui, Commandlist: Add, Text, x8 y280  h20 +0x200, .кфьзр - /removeUsefullitheater 
    Gui, Commandlist: Add, Text, x8 y296  h20 +0x200, /gzone - /togglegreenzone 
    Gui, Commandlist: Add, Text, x8 y312  h20 +0x200, .пящту - /togglegreenzone 
    Gui, Commandlist: Add, Text, x8 y328  h20 +0x200, /mcheck - /mutecheck 
    Gui, Commandlist: Add, Text, x8 y344  h20 +0x200, .ьсрусл - /mutecheck 
    Gui, Commandlist: Add, Text, x8 y360  h20 +0x200, .ьгеусрусл - /mutecheck 
	Gui, Commandlist: Add, Text, x8 y376  h20 +0x200, .гтофшд - /unjail 
    Gui, Commandlist: Add, Text, x8 y392  h20 +0x200, .цфкт - /warn 
    Gui, Commandlist: Add, Text, x8 y408  h20 +0x200, .дв - /lastdriver 
    Gui, Commandlist: Add, Text, x8 y424  h20 +0x200, /ld - /lastdriver 
    Gui, Commandlist: Add, Text, x8 y440  h20 +0x200, /af - /ainfect 
    Gui, Commandlist: Add, Text, x8 y456  h20 +0x200, .фа - /ainfect 
    Gui, Commandlist: Add, Text, x8 y472  h20 +0x200, /sk - /skick 
    Gui, Commandlist: Add, Text, x8 y488  h20 +0x200, .ыл - /skick 
    Gui, Commandlist: Add, Text, x8 y504  h20 +0x200, /k - /kick 
    Gui, Commandlist: Add, Text, x8 y520  h20 +0x200, .л - /kick 
	Gui, Commandlist: Add, Text, x8 y536  h20 +0x200, /ai - /auninvite 
    Gui, Commandlist: Add, Text, x8 y552  h20 +0x200, .фш - /auninvite 
    Gui, Commandlist: Add, Text, x8 y568  h20 +0x200, .аи - /fb 
    Gui, Commandlist: Add, Text, x8 y584  h20 +0x200, /aif - /ainfect  
	Gui, Commandlist: Add, Text, x8 y600  h20 +0x200, .фша - /ainfect 
    Gui, Commandlist: Add, Text, x8 y616  h20 +0x200, .с - /c  
    Gui, Commandlist: Add, Text, x8 y632  h20 +0x200, .си - /cb 
    Gui, Commandlist: Add, Text, x8 y648  h20 +0x200, .гтьгеу - /unmute 
    Gui, Commandlist: Add, Text, x8 y664  h20 +0x200, .пшв - /gid 
    Gui, Commandlist: Add, Text, x8 y680  h20 +0x200, .фвьшты - /admins 
    Gui, Commandlist: Add, Text, x8 y696  h20 +0x200, .фштаусе - /ainfect 
    Gui, Commandlist: Add, Text, x8 y712  h20 +0x200, .умутещт - /eventon 
    Gui, Commandlist: Add, Text, x8 y728  h20 +0x200, .умутещаа - /eventoff 
    Gui, Commandlist: Add, Text, x8 y744  h20 +0x200, .пц - /gw 
	Gui, Commandlist: Add, Text, x8 y760  h20 +0x200, /bch - /bancheck
	
    Gui, Commandlist: Add, Text, x170 y24  h20 +0x200, .ашчсфк - /fixcar 
    Gui, Commandlist: Add, Text, x170 y40  h20 +0x200, .уьздуфвук - /templeader 
    Gui, Commandlist: Add, Text, x170 y56  h20 +0x200, /tl - /templeader 
    Gui, Commandlist: Add, Text, x170 y72  h20 +0x200, .ед - /templeader 
    Gui, Commandlist: Add, Text, x170 y88  h20 +0x200, .ылшсл - /skick 
    Gui, Commandlist: Add, Text, x170 y104  h20 +0x200, .кузфшк - /repair 
    Gui, Commandlist: Add, Text, x170 y120  h20 +0x200, .фгтшмшеу - /auninvite 
    Gui, Commandlist: Add, Text, x170 y136  h20 +0x200, .учсфк - /excar 
    Gui, Commandlist: Add, Text, x170 y152  h20 +0x200, .агуд - /fuel 
    Gui, Commandlist: Add, Text, x170 y168  h20 +0x200, .акууяу - /freeze
    Gui, Commandlist: Add, Text, x170 y200  h20 +0x200, .згддекгтл - /pulltrunk 
    Gui, Commandlist: Add, Text, x170 y216  h20 +0x200, .езсфк - /tpcar 
    Gui, Commandlist: Add, Text, x170 y232  h20 +0x200, .дфыевкшмук - /lastdriver 
    Gui, Commandlist: Add, Text, x170 y248  h20 +0x200, .вудшеуь - /delitem 
    Gui, Commandlist: Add, Text, x170 y264  h20 +0x200, /gc - /getcar 
	Gui, Commandlist: Add, Text, x170 y184  h20 +0x200, .пиздец - Мольба о помощи
    Gui, Commandlist: Add, Text, x170 y280  h20 +0x200, .пс - /getcar 
    Gui, Commandlist: Add, Text, x170 y296  h20 +0x200, .фв - /admins 
    Gui, Commandlist: Add, Text, x170 y312  h20 +0x200, /ad - /admins 
    Gui, Commandlist: Add, Text, x170 y328  h20 +0x200, .з - /players 
    Gui, Commandlist: Add, Text, x170 y344  h20 +0x200, /p - /players 
    Gui, Commandlist: Add, Text, x170 y360  h20 +0x200, .здфнукы - /players 
	Gui, Commandlist: Add, Text, x170 y376  h20 +0x200, .рес - /rescue 
    Gui, Commandlist: Add, Text, x170 y392  h20 +0x200, /htc - /rescue 
    Gui, Commandlist: Add, Text, x170 y408  h20 +0x200, .ез - /tp 
    Gui, Commandlist: Add, Text, x170 y424  h20 +0x200, .ызус - /spec 
    Gui, Commandlist: Add, Text, x170 y440  h20 +0x200, .ызусщаа - /specoff
    Gui, Commandlist: Add, Text, x170 y456  h20 +0x200, .ф - /a 
    Gui, Commandlist: Add, Text, x170 y472  h20 +0x200, .фыьы - /asms 
    Gui, Commandlist: Add, Text, x170 y488  h20 +0x200, /sp - /spec 
    Gui, Commandlist: Add, Text, x170 y504  h20 +0x200, .ыз - /spec 
    Gui, Commandlist: Add, Text, x170 y520  h20 +0x200, /so - /specoff 
	Gui, Commandlist: Add, Text, x170 y536  h20 +0x200, .ыщ - /specoff
    Gui, Commandlist: Add, Text, x170 y552  h20 +0x200, /kill - /hp 0
    Gui, Commandlist: Add, Text, x170 y568  h20 +0x200, .лшдд - /hp 0
    Gui, Commandlist: Add, Text, x170 y584  h20 +0x200, .пр - /gh 
	Gui, Commandlist: Add, Text, x170 y600  h20 +0x200, .штсфк - /incar 
    Gui, Commandlist: Add, Text, x170 y616  h20 +0x200, .штм - /inv 
    Gui, Commandlist: Add, Text, x170 y632  h20 +0x200, .рз - /hp 
    Gui, Commandlist: Add, Text, x170 y648  h20 +0x200, .шв - /id 
    Gui, Commandlist: Add, Text, x170 y664  h20 +0x200, .од - /ajail 
    Gui, Commandlist: Add, Text, x170 y680  h20 +0x200, .фофшд - /ajail 
    Gui, Commandlist: Add, Text, x170 y696  h20 +0x200, .лшсл - /kick 
    Gui, Commandlist: Add, Text, x170 y712  h20 +0x200, .вд - /dl 
    Gui, Commandlist: Add, Text, x170 y728  h20 +0x200, .уыз - /esp3 
    Gui, Commandlist: Add, Text, x170 y744  h20 +0x200, .уыз2 - /esp3 
	Gui, Commandlist: Add, Text, x170 y760  h20 +0x200, .мур - /veh 

    Gui, Commandlist: Add, Text, x332 y24  h20 +0x200, .ифт - /ban 
    Gui, Commandlist: Add, Text, x332 y40  h20 +0x200, .вудмур - /delveh 
    Gui, Commandlist: Add, Text, x332 y56  h20 +0x200, .ьез - /mtp 
    Gui, Commandlist: Add, Text, x332 y72  h20 +0x200, .мур - /veh 
    Gui, Commandlist: Add, Text, x332 y88  h20 +0x200, .фмур - /aveh 
    Gui, Commandlist: Add, Text, x332 y104  h20 +0x200, .рфквифт - /hardban 
    Gui, Commandlist: Add, Text, x332 y120  h20 +0x200, .ьгеу - /mute 
    Gui, Commandlist: Add, Text, x332 y136  h20 +0x200, .пшв - /gid 
    Gui, Commandlist: Add, Text, x332 y152  h20 +0x200, .ср - /chide 
    Gui, Commandlist: Add, Text, x332 y168  h20 +0x200, /ch - /chide 
    Gui, Commandlist: Add, Text, x332 y184  h20 +0x200, .куысгу - /rescue 
    Gui, Commandlist: Add, Text, x332 y200  h20 +0x200, .ыуевшь - /setdim 
    Gui, Commandlist: Add, Text, x332 y216  h20 +0x200, /sd - /setdim 
    Gui, Commandlist: Add, Text, x332 y232  h20 +0x200, .и - /b 
    Gui, Commandlist: Add, Text, x332 y248  h20 +0x200, .ц - /w 
    Gui, Commandlist: Add, Text, x332 y264  h20 +0x200, .ыв - /setdim 
    Gui, Commandlist: Add, Text, x332 y280  h20 +0x200, .сршву - /chide 
    Gui, Commandlist: Add, Text, x332 y296  h20 +0x200, .афк - /a афк мин
    Gui, Commandlist: Add, Text, x332 y312  h20 +0x200, .фгтсгаа - /auncuff 
    Gui, Commandlist: Add, Text, x332 y328  h20 +0x200, .фсгаа - /acuff 
    Gui, Commandlist: Add, Text, x332 y344  h20 +0x200, .акууямур - /freezveh
    Gui, Commandlist: Add, Text, x332 y360  h20 +0x200, /scd - /setcardim 
	Gui, Commandlist: Add, Text, x332 y376  h20 +0x200, .ыуесфквшь - /setcardim 
    Gui, Commandlist: Add, Text, x332 y392  h20 +0x200, .ысв - /setcardim 
    Gui, Commandlist: Add, Text, x332 y408  h20 +0x200, /rst - /resettempname 
    Gui, Commandlist: Add, Text, x332 y424  h20 +0x200, .кые - /resettempname 
    Gui, Commandlist: Add, Text, x332 y440  h20 +0x200, .куыуееуьзтфьу - /resettempname 
    Gui, Commandlist: Add, Text, x332 y456  h20 +0x200, .ты - /togglesnow 
    Gui, Commandlist: Add, Text, x332 y472  h20 +0x200, /ns - /togglesnow 
    Gui, Commandlist: Add, Text, x332 y488  h20 +0x200, /dv - /delveh 
    Gui, Commandlist: Add, Text, x332 y504  h20 +0x200, .вм - /delveh 
    Gui, Commandlist: Add, Text, x332 y520  h20 +0x200, .рфкв - /hardban 
	Gui, Commandlist: Add, Text, x332 y536  h20 +0x200, /hard - /hardban 
    Gui, Commandlist: Add, Text, x332 y552  h20 +0x200, /as - /asms 
    Gui, Commandlist: Add, Text, x332 y568  h20 +0x200, .фы - /asms 
    Gui, Commandlist: Add, Text, x332 y584  h20 +0x200, .пез - /gtp
	Gui, Commandlist: Add, Text, x332 y600  h20 +0x200, .пь - /gm
    Gui, Commandlist: Add, Text, x332 y616  h20 +0x200, .тс - /noclip 
    Gui, Commandlist: Add, Text, x332 y632  h20 +0x200, /nc - /noclip 
    Gui, Commandlist: Add, Text, x332 y648  h20 +0x200, /acf - /acuff 
    Gui, Commandlist: Add, Text, x332 y664  h20 +0x200, .фса - /acuff 
    Gui, Commandlist: Add, Text, x332 y680  h20 +0x200, /auf - /auncuff 
    Gui, Commandlist: Add, Text, x332 y696  h20 +0x200, .езр - /tph
    Gui, Commandlist: Add, Text, x332 y712  h20 +0x200, .фга - /auncuff 
    Gui, Commandlist: Add, Text, x332 y728  h20 +0x200, .фмур - /aveh
    Gui, Commandlist: Add, Text, x332 y744  h20 +0x200, .фдщсл - /alock
	Gui, Commandlist: Add, Text, x332 y760  h20 +0x200, .пуесфк - /getcar 

	Gui, Commandlist: Tab, 2
	Gui, Commandlist: Add, Text, cred x122 y24  h20 +0x200, Данные команды работают совместно с "динамик"
    Gui, Commandlist: Add, Text, cyellow x8 y40  h20 +0x200, Дименшены
    Gui, Commandlist: Add, Text, x8 y56  h20 +0x200, .обыч - /setdim id 0
    Gui, Commandlist: Add, Text, x8 y72  h20 +0x200, .каптд - /setdim id 9871 
    Gui, Commandlist: Add, Text, x8 y88  h20 +0x200, .бизд - /setdim id 222
    Gui, Commandlist: Add, Text, cyellow x8 y104  h20 +0x200, Оружие
    Gui, Commandlist: Add, Text, x8 y120  h20 +0x200, .миниг - /gw id weapon_minigun 9999
    Gui, Commandlist: Add, Text, x8 y136  h20 +0x200, .ревик - /gw id weapon_revolver 9999
    Gui, Commandlist: Add, Text, x8 y152  h20 +0x200, .ракет - /gw id weapon_firework 9999
    Gui, Commandlist: Add, Text, x8 y168  h20 +0x200, .хевик - /gw id weapon_heavysniper_mk2 9999
    Gui, Commandlist: Add, Text, x8 y184  h20 +0x200, .топор - /gw id weapon_hatchet  9999
	Gui, Commandlist: Add, Text, cyellow x8 y200  h20 +0x200, Бизвары
	Gui, Commandlist: Add, Text, x8 y216  h20 +0x200, .лес1 - Телепорт на локацию лес (деф) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y232  h20 +0x200, .лес2 - Телепорт на локацию лес (атака) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y248  h20 +0x200, .порт1 - Телепорт на локацию порт (деф) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y264  h20 +0x200, .порт2 - Телепорт на локацию порт (атака) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y280  h20 +0x200, .свалка1 - Телепорт на локацию свалка (деф) + смена дименшена
	Gui, Commandlist: Add, Text, x8 y296  h20 +0x200, .свалка2 - Телепорт на локацию свалка (атака) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y312  h20 +0x200, .стройка1 - Телепорт на локацию стройка (деф) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y328  h20 +0x200, .стройка2 - Телепорт на локацию стройка (атака) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y344  h20 +0x200, 
    Gui, Commandlist: Add, Text, x8 y360  h20 +0x200, 
    Gui, Commandlist: Show, h800 w530, Команды

	Return
;===================================================================================

ds:
Run, https://discord.gg/QumavEcuMX
return

;===================================================================================
upturn:
    newScriptPath := A_ScriptDir "\MintikRussian.ahk"
    UrlDownloadToFile, https://raw.githubusercontent.com/anastaz5/MintikRussian/main/MintikRussian.ahk, %newScriptPath%
    if ErrorLevel {
        MsgBox, 16, Ошибка, Не удалось скачать обновление. Проверьте интернет.
        return
    }
    Sleep, 500
    MsgBox, 64, adm, Биндер обновлен.
    Run, %newScriptPath%
    ExitApp
return

;===================================================================================
Punish:
Gui, Punish: -SysMenu
Gui, Punish: Add, Button, x487 y2 w25 h16 gguiclose3, X
Gui, Punish: Add, Tab, x0 y0 h800 w530, 1
Gui, Punish: Color, 313338
Gui, Punish: Font, s8, Segoe UI
Gui, Punish: Font, cwhite

; Добавляем только те текстовые элементы, которые содержат текст
Gui, Punish: Add, Text, x8 y24  h20 +0x200, В разработке

Gui, Punish: Show, w530 h800, Наказания
return
;===================================================================================

Return
:?:.дс::
SendMessage, 0x50,, 0x4090409
SendInput, Напишите мне в личные сообщения дискорда: %dis%
Return
:?:.га::
SendMessage, 0x50,, 0x4090409
SendInput, Обратитесь, пожалуйста, в личные сообщения дискорда к главному администратору: %gadis%
Return
:?:.зга::
SendMessage, 0x50,, 0x4090409
SendInput, Обратитесь, пожалуйста, в личные сообщения дискорда к заместителю главного администратора: %zgadis%
Return
   
;===================================================================================

vac:
SendMessage, 0x50,, 0x4190419,, A
SendInput, {t}
sleep 500
SendInput, /ainfect  0{left 2}
return

repm:
counter++
GoSub, UpdateCounter2
Clipboard :=
return

dimcar:
SendMessage, 0x50,, 0x4190419,, A
SendInput, {T}
Input, car, V, {ctrl}{Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput, /getcar %car%{Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput, /repair{Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput, /setcardim %car% 5{Enter}
Sleep 1200
SendInput, {T}
Sleep 500
SendInput, /setcardim %car% 0{Enter}
Return

reshp:
SendInput, {T}
Input, hId, V, {ctrl} {Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput,/hp %hId% 0{Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput,/rescue %hId%{Enter}
Return

delv:
SendInput, {T}
Input, hId, V, {ctrl} {Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput,/setdim %hId% 66{Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput,/tp %hId%{Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput,/chide{Enter}
Return

killplayer:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /hp  0{left 2}
return

;Выдача

PunishmentHandler:
Process, Exist, GTA5.exe
if(Errorlevel)
{
WinActivate ahk_exe ragemp_v.exe
Loop, read, %A_WorkingDir%\Punishment.txt
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
ru := DllCall("LoadKeyboardLayout", "Str", "00000419", "Int", 1)
en := DllCall("LoadKeyboardLayout", "Str", "00000409", "Int", 1)
w := DllCall("GetForegroundWindow")
pid := DllCall("GetWindowThreadProcessId", "UInt", w, "Ptr", 0)
l := DllCall("GetKeyboardLayout", "UInt", pid)
if (l != ru)
{
PostMessage 0x50, 0, %ru%,, A
}
Sleep, 1000
Send, {T}
Sleep, 100
Send, %A_LoopField%
Send, {Enter}
}
}
MsgBox, 64, Выдача наказаний, Наказания выданы.
}
else
{
MsgBox, 16, Выдача наказаний, Запустите игру!
}
return

gcar:
SendInput, {T}
Input, hId, V, {ctrl} {Enter}
Sleep 300
SendInput, {T}
Sleep 300
SendInput,/getcar %hId%{Enter}
return

gm:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 300
SendInput, /gm{Enter}
Sleep 300
return

resc:
SendInput, {sc14}
Sleep 300
SendInput, /rescue{Space}
Sleep 300
return

gh:
SendInput, {sc14}
Sleep 300
SendInput, /gh{Space}
Sleep 300
return

chide:
SendInput, {sc14}
Sleep 300
SendInput, /chide{Enter}
Sleep 300
return

mtp:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 300
SendInput, /mtp{Enter}
Sleep 300
return

vhod:
SendMessage, 0x50,, 0x4090409
Sleep 300
if (Radio11==1)
{
SendInput, {T}
Sleep 300
SendInput, /zzdebug{Enter}
Sleep 300
}
if (Radio13==1)
{
SendInput, {T}
Sleep 300
SendInput, /hidecheatinfo{Enter}
Sleep 300
}
if (Radio9==1)
{
SendInput, {T}
Sleep 300
SendInput, /esp3{Enter}
Sleep 300
}
if (Radio8==1)
{
SendInput, {T}
Sleep 300
SendInput, /chide{Enter}
Sleep 300
}
if (Radio10==1)
{
SendInput, {T}
Sleep 300
SendInput, /dl{Enter}
Sleep 300
}
if (Radio14==1)
{
SendInput, {T}
Sleep 300
SendInput, /templeader %Fraction%{Enter}
Sleep 300
}
if (Radio15==1)
{
SendInput, {T}
Sleep 300
SendInput, /advtoggle 0{Enter}
Sleep 300
}
if (Radio16==1)
{
SendInput, {T}
Sleep 300
SendInput, /setweatherlocal CLEAR{Enter}
Sleep 300
}
if (Radio12==1)
{
SendInput, {T}
Sleep 300
SendInput, /gm{Enter}
}
return

rep:
counter++
GoSub, UpdateCounter
Clipboard :=
return

;Телепорты
:?:.мвд::/ctp 1787.971 -2289.138 13.957
:?:.гаи::/ctp 1122.898 -2049.574 12.537
:?:.боль1::/ctp 3218.385 -2089.398 14.878
:?:.боль2::/ctp 2435.696 -187.094 21.622
:?:.фз::/ctp 2306.717 -3290.292 16.229
:?:.гов::/ctp 2518.071 -105.669 19.738
:?:.вн::/ctp 2381.839 -1753.881 14.572
:?:.фсб::/ctp 2324.770 -402.220 21.153
:?:.опг1::/ctp 3468.731 -1934.736 15.158
:?:.опг2::/ctp 3285.295 -3018.056 10.954
:?:.опг3::/ctp 3226.104 -569.390 13.175
:?:.опг4::/ctp 2763.416 -2286.607 8.773
:?:.азс::/ctp 2790.093 -1722.067 15.303
:?:.маркет::/ctp 1888.073 -468.681 19.337
:?:лск::/ctp 3655.133 -1369.145 14.240
:?:.каз::/ctp 2708.916 -1529.473 15.443
:?:.ключ::/ctp 2491.803 -1142.762 11.951
:?:.банк::/ctp 2488.937 -1994.354 14.421
:?:.маркет::/ctp 1896 -471 19

:?:/fpc::/ctp 2790.093 -1722.067 15.303
:?:/vfhrtn::/ctp 1888.073 -468.681 19.337
:?:/kcr::/ctp 3655.133 -1369.145 14.240
:?:/rfp::/ctp 2708.916 -1529.473 15.443
:?:/rk.x::/ctp 2491.803 -1142.762 11.951
:?:/,fyr::/ctp 2488.937 -1994.354 14.421
:?:/vdl::/ctp 1787.971 -2289.138 13.957
:?:/ufb::/ctp 1122.898 -2049.574 12.537
:?:/,jkm1::/ctp 3218.385 -2089.398 14.878
:?:/,jkm2::/ctp 2435.696 -187.094 21.622
:?:/ap::/ctp 2306.717 -3290.292 16.229
:?:/ujd::/ctp 2518.071 -105.669 19.738
:?:/dy::/ctp 2381.839 -1753.881 14.572
:?:/ac,::/ctp 2324.770 -402.220 21.153
:?:/jgu1::/ctp 3468.731 -1934.736 15.158
:?:/jgu2::/ctp 3285.295 -3018.056 10.954
:?:/jgu3::/ctp 3226.104 -569.390 13.175
:?:/jgu4::/ctp 2763.416 -2286.607 8.773
:?:/vfhrtn::/ctp 1896 -471 19

; 

!e::
SendMessage, 0x50,, 0x4190419,, A
sleep 150
SendInput, Здравствуйте, сейчас займусь Вашим обращением.
sleep 150
SendInput,{enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
return

:?:/ble::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую, иду.
SendInput, {Enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
Return

:?:.иду::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую, иду.
SendInput, {Enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
Return

:?:.ку::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.
SendInput, {Enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
Return

:?:/re::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.
SendInput, {Enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
Return

:?:.сек::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Здравствуйте, сейчас помогу вам.
SendInput, {Enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
Return

:?:/ctr::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Здравствуйте, сейчас помогу вам.
SendInput, {Enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
Return

:?:.здр::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Здравствуйте.
SendInput, {Enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
Return

:?:/plh::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Здравствуйте.
SendInput, {Enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
Return


:?:/wch::/warncheck
:?:/gch::/gunbancheck
:?:.хевик::/gw  weapon_heavysniper_mk2 999{Left 27}
:?:/[tdbr::/gw  weapon_heavysniper_mk2 999{Left 27}
:?:/vr2::/gw  weapon_specialcarbine_mk2 999{Left 30}
:?:.мк2::/gw  weapon_specialcarbine_mk2 999{Left 30}
:?:.граната::/gw  weapon_grenade 999{Left 19}
:?:/uhfyfnf::/gw  weapon_grenade 999{Left 19}
:?:/hgu::/gw  weapon_rpg 999{Left 15}
:?:.рпг::/gw  weapon_rpg 999{Left 15}
:?:/bch::/bancheck
:?:.иср::/bancheck
:?:/jch::/ajailcheck
:?:.оср::/ajailcheck
:?:.ифтсрусл::/bancheck
:?:.фофшдсрусл::/ajailcheck
:?:/tf::/tempfamily
:?:.еа::/tempfamily
:?:.еуьздуфвук::/templeader
:?:.еуьздуфвук 7::/templeader 7
:?:.еуьздуфвук 3::/templeader 3
:?:.еуьздуфвук 4::/templeader 4
:?:.еуьздуфвук 2::/templeader 2
:?:.еуьздуфвук 1::/templeader 1
:?:.еуьздуфвук 5::/templeader 5
:?:.еуьздуфвук 6::/templeader 6
:?:.еуьздуфвук 8::/templeader 8
:?:.еуьздуфвук 9::/templeader 9
:?:.еуьздуфвук 10::/templeader 10
:?:.еуьздуфвук 11::/templeader 11
:?:/sm::/setmaterials
:?:.ыь::/setmaterials
:?:/tn::/tempname
:?:.ет::/tempname
:?:.еуьзтфьу::/tempname
:?:.яяв::/zzdebug 
:?:/zzd::/zzdebug 
:?:/Usefull::/addUsefullitheater 
:?:.фьзр::/addUsefullitheater 
:?:/rUsefull::/removeUsefullitheater 
:?:.кфьзр::/removeUsefullitheater 
:?:/gzone::/togglegreenzone
:?:.пящту::/togglegreenzone
:?:/mcheck::/mutecheck
:?:.ьсрусл::/mutecheck
:?:.ьгеусрусл::/mutecheck
:?:.гтофшд::/unjail
:?:.цфкт::/warn
:?:/ld::/lastdriver
:?:.дв::/lastdriver
:?:/af::/ainfect
:?:.фа::/ainfect
:?:/sk::/skick
:?:.ыл::/skick
:?:/k::/kick
:?:.л::/kick
:?:/ai::/auninvite
:?:.фш::/auninvite
:?:.аи::/fb
:?:/aif::/ainfect
:?:.фша::/ainfect
:?:.с::/c
:?:.си::/cb
:?:.гтьгеу::/unmute
:?:.фвьшты::/admins 
:?:.фштаусе::/ainfect
:?:.умутещт::/eventon 
:?:.умутещаа::/eventoff 
:?:.гтсрусл::/uncheck
:?:.срусл::/check
:?:.пц::/gw
:?:.ашчсфк::/fixcar 
:?:.уьздуфвук::/templeader
:?:/tl::/templeader
:?:.ед::/templeader
:?:.ылшсл::/skick
:?:.фгтшмшеу::/auninvite
:?:.учсфк::/excar
:?:.агуд::/fuel
:?:.згддекгтл::/pulltrunk
:?:.акууя::/freez
:?:.езсфк::/tpcar
:?:.дфыевкшмук::/lastdriver
:?:.вудшеуь::/delitem
:?:/gc::/getcar
:?:.пс::/getcar
:?:.фв::/admins 
:?:/ad::/admins 
:?:.з::/players 
:?:/p::/players 
:?:.здфнукы::/players 
:?:.рес::/rescue
:?:/htc::/rescue
:?:.багажник::/pulltrunk
:?:.ез::/tp
:?:.ызус::/spec
:?:.ызусщаа::/specoff {Enter}
:?:.фыьы::/asms
:?:.ф::/a
:?:/sp::/spec
:?:.ыз::/spec
:?:/so::/specoff {Enter} 
:?:.ыщ::/specoff {Enter} 
:?:/kill::/hp 0{left 2}
:?:.лшдд::/hp 0{left 2}
:?:.штсфк::/incar
:?:.пр::/gh
:?:.штм::/inv 
:?:.шв::/id
:?:.рз::/hp
:?:.од::/ajail
:?:.еуьздуфвук::/templeader
:?:.еуьздуфвук 7::/templeader 7
:?:.еуьздуфвук 3::/templeader 3
:?:.еуьздуфвук 4::/templeader 4
:?:.еуьздуфвук 2::/templeader 2
:?:.фофшд::/ajail
:?:.лшсл::/kick
:?:.кузфшк::/repair 
:?:.вд::/dl 
:?:.уыз::/esp 3
:?:.уыз3::/esp 3 
:?:.пуесфк::/getcar
:?:.ифт::/ban 
:?:.вудмур::/delveh 
:?:.ьез::/mtp 
:?:.мур::/veh
:?:.фмур::/aveh 
:?:.рфквифт::/hardban
:?:.ьгеу::/mute
:?:.пшв::/gid
:?:.ср::/chide
:?:/ch::/chide
:?:.куысгу::/rescue
:?:.ыуевшь::/setdim
:?:/sd::/setdim
:?:.и::/b
:?:.ц::/w
:?:.ыв::/setdim
:?:.срусл::/check
:?:.сршву::/chide
:?:.ыуеешьудщсфд::/settimelocal
:?:.афк::/a афк мин{left 4}
:?:/far::/a афк мин{left 4}
:?:.бдим::/setdim 3{left 2}
:?:.кдим::/setdim 555{left 4}
:?:.фгтсгаа::/auncuff
:?:.фсгаа::/acuff
:?:.акууяу::/freeze
:?:/scd::/setcardim
:?:.ыуесфквшь::/setcardim
:?:.ысв::/setcardim
:?:/rst::/resettempname
:?:.кые::/resettempname
:?:.куыуееуьзтфьу::/resettempname 
:?:.ты::/netstat 
:?:/ns::/netstat 
:?:.вм::/delveh 
:?:/dv::/delveh 
:?:/hard::/hardban
:?:.рфкв::/hardban
:?:/as::/asms
:?:.фы::/asms
:?:.пез::/gtp
:?:.пь::/gm
:?:.тс::/noclip 
:?:/nc::/noclip 
:?:/acf::/acuff
:?:.фса::/acuff
:?:/auf::/auncuff
:?:.фга::/auncuff
:?:.а::/f
:?:.ылшт::/skin
:?:.езр::/tph
:?:.фдщсл::/alock
:?:.гти::/unban
:?:/unb::/unban
:?:.гто::/unjail
:?:/unj::/unjail
:?:/dvr::/delvehrange
:?:.вмк::/delvehrange
:?:.щи::/objdl
:?:/ob::/objdl
:?:/pr::/prange
:?:.зк::/prange
:?:/fr::/frange
:?:.ак::/frange
:?:.акфтпу::/frange
:?:.зкфтпу::/prange
:?:.зштп::/ping
:?:/mch::/mutecheck
:?:.ьср::/mutecheck
:?:.щ::/o
:?:.снег::/togglesnow 0
:?:.сет::/settimelocal 20 20 20
:?:.клеар::/setweatherlocal extrasunny
:?:/cytu::/togglesnow 0
:?:/ctn::/settimelocal 20 20 20
:?:/rktfh::/setweatherlocal extrasunny
:?:.лида::/templeader
:?:/kblf::/templeader
:?:.клирчат::/aclearchat
:?:.опп::Основных правил проекта
:?:.поип::Правила ограблений и похищений
:?:.пко::Правила криминальных организаций
:?:.пго::Правила государственных организаций
:?:.ппп::Правила перехвата поставок
:?:/jgg::Основных правил проекта
:?:/gjbg::Правила ограблений и похищений
:?:/grj::Правила криминальных организаций
:?:/guj::Правила государственных организаций
:?:/ggg::Правила перехвата поставок
:?:.пвп::Правила военного положения
:?:/gdg::Правила военного положения
:?:.пвп::Правила военного положения
:?:.дфыефс::/lastac
:?:.дфые::/lastac
:?:/last::/lastac
:?:.читы::/gettopcheaters
:?:/xbns::/gettopcheaters
; Адм Ответы
:?:.нев::Не вижу нарушений, дабы наказать игрока.
:?:.нез::Не заметил нарушений. Приятной игры на России Онлайн.
:?:.нак::Наказал. Приятной игры на России Онлайн.
:?:.тгчит::Вы можете оставить жалобу на подозреваемого игрока в телеграмм бота @CheatHuntersBot, и его проверят
:?:.ава::Аватарку для профиля можно установить на сайте Majestic ID (https://id.majestic-rp.ru/), чтобы загрузить картинку, откройте личный кабинет и перейдите в раздел «Настройки».
:?:.невак::К сожалению, мы не вакцинируем. Вы можете поискать врачей в больницах штата или воспользоваться экспериментальной пилюлей "Имморталитикс", купив её на маркетплейсе.
:?:.п::Приятной игры и хорошего настроения!
:?:.зкр::Закрываю обращение?
:?:.неком::Не комментируем действия других администраторов.
:?:.нейм::Создайте репорт на имя администратора который выдал наказание.
:?:.хант::Предоставьте доказательства любому администратору с ролью Cheat Hunter в личные сообщения в дискорде.
:?:.дин::В будущем, пожалуйста, указывайте по возможности сразу динамический ID (слева от статика в [id]) вместо статического. Это поможет нам более оперативно среагировать на Ваше обращение.
:?:.игн::Не увидел от Вас вопроса/ответа, закрываю.
:?:.ненар::Игрок уже не нарушает. Если есть видеозапись, то оформите жалобу на игрока на форуме.{enter}
:?:.репжб::Что бы оформить репорт жалобу, необходимо направить Видео в репорт которое не превышает 2х минут, а так же ситуация должна происходить не более 2х часов назад.
:?:.хелпбп::Администрация не может помогать на заданиях Ивента.
:?:.виз::Это визуальный баг. Попробуйте перезайти на сервер.
:?:.багвойс2::Для того чтобы войс-чат заработал, перезайдите в игру.
:?:.тайм::Это визуальный баг таймера, часы идут, и коины вам начислятся после того, как время истечет.
:?:.сид::Укажите static ID нарушителя.
:?:.баг::Мы осведомлены о проблеме и передали её разработчикам. Приносим извинения за доставленные неудобства.
:?:.рел::Полностью перезайдите на сервер через F1 - Отключиться.
:?:.необл::У нас нет информации по этому вопросу.
:?:.наруш::Нарушений не обнаружено.
:?:.ферм:: 1 уровень - Яблоки, 2 уровень - Пшеница, 3 уровень - Картофель, 4 уровень - Капуста, 5 уровень - Кукуруза, 6 уровень - Тыква, 7 уровень - Шалфей.
:?:.ферма: На 1,2 и 3 ферме выращтвают яблоки, на 4 ферме Пшеницу, на 5 Картофель, на 6 Капуста, на 7 Кукуруза, на 8 Тыква, на 9 Шалфей.
:?:.багреп::Оставьте баг-репорт в официальном дискорде проекта: Текстовые каналы - "Помощь по игре" - "Сообщить о баге". Ссылка на канал: https://discord.com/channels/1089530150540034181/1528397369635246210 .
:?:.ехп2::Каждый час (у каждого игрока своё время) вам начисляется EXP. Чтобы узнать, сколько осталось до следующего PayDay, нажмите клавишу F2 — Статистика.
:?:.группа::Чтобы работать на кооперативной работе, вам необходимо пригласить игроков через приложение "Группа" в телефоне.
:?:.дрифт::Чтобы найти зону для дрифта, откройте карту. На карте она отмечена в виде колеса в огне. Приезжаете, нажимаете **E** на точке (синяя метка) — и вы в дрифт-зоне.
:?:.увал::К сожалению, ничем не можем помочь, увольняем только в случае, если у фракции нет лидера. Дождитесь своего лидера/заместителей.
:?:.рп::Извините, но это РП процесс, и мы не можем вмешиваться в него.
:?:.урп::Вы можете узнать эту информацию общаясь с другими игроками или найти её самостоятельно во время игры.
:?:.тех::Если возникли технические проблемы, обратитесь в технический раздел на форуме. Ссылка: https://forum.russia.online/forums/zayavleniya-v-tekhnicheskii-razdel.560/
:?:.техдс::Напишите в технический раздел официального дискорд-сервера в канале "Помощь по игре" - "тех-поддержка". Ссылка на канал: https://discordapp.com/channels/1089530150540034181/1534231644842754090
:?:.функ::Данный функционал временно недоступен. Приносим извинения.
:?:.фун::Данный функционал отсутствует на нашем проекте. Пожалуйста, оставьте предложение по добавлению на форуме в разделе: "Предложение по улучшению сервера".
:?:.донат::Для вопросов по донату, пожалуйста, обратитесь по почте: help@majestic-rp.ru.
:?:.имя::Ваше имя и фамилия не соответствуют правилам нашего сервера. Пожалуйста, смените ник и отправьте репорт повторно. Если ваш новый ник будет соответствовать правилам, вас выпустят.
:?:.багзз::Для восстановления прежней скорости заедьте в зеленую зону и выедьте из нее.
:?:.реп::Пожалуйста, уточните ваш вопрос подробнее. Администрация не реагирует на запросы типа "админ тп", "админ можно поговорить", "помогите", "админ есть вопрос". У вас неограниченное количество символов, используйте их для подробного описания проблемы.
:?:.неувид::К сожалению, администрация не может заметить это нарушение. Если у вас есть видеозапись, пожалуйста, подайте жалобу на форуме.
:?:.несл::Администрация не может полностью контролировать весь РП процесс. В случае нарушений от игроков, пожалуйста, оформите репорт.
:?:.исч::Все транспортные средства исчезают со временем, если с ними не взаимодействовать.
:?:.спб::Если одно из отделений Больницы сильно загружено, вы будете спавниться в другом, менее загруженном отделении.
:?:.перед::Вы передаете имущество на свой страх и риск.
:?:.зак::Это регулируется IC законами. Изучить их можно в разделе "Правительство" на форуме: https://forum.russia.online/.
:?:.мед::Этот медиа-партнер находится под наблюдением PR ассистента, поэтому я не могу выдать наказание. Вся ответственность за ситуацию переносится на PR ассистента.
:?:.низк::У вас включен режим низкого качества. Вы можете отключить его в F2 - Настройки.
:?:.вод::Администрация не извлекает автомобили из воды, а лишь удаляет их, чтобы вы могли заспавнить новый. Вам нужно добраться до автосервиса, аренды транспортных средств или вызвать такси.
:?:.вода::Ваш транспорт был удален. Вы можете забрать его в автосервисе/гараже, к которому вам нужно добраться самостоятельно.
:?:.удал::Администрация не удаляет транспортные средства игроков, за исключением случаев, когда транспорт утонул и не исчезает.
:?:.багаж::Чтобы вылезти из багажника, нажмите клавишу "E".
:?:.пол::Пожалуйста, обратитесь к сотрудникам полиции.
:?:.ук::Пожалуйста, укажите ID нарушителя.
:?:.пока::Желаю вам удачной игры{!}
:?:.новость::Придите лично в Вести Москвы. 
:?:.бенз::Администрация не заправляет транспортные средства игроков.
:?:.игр::Игрок был наказан.
:?:.зп::Для того чтобы узнать время до Pay Day перейдите в F2 - Персонаж - Основное.
:?:.стат::F2 - Персонаж - Статистика.
:?:.раб::Все доступные вашему уровню работы вы можете посмотреть в F2 - Персонаж - Работы.
:?:.стиль::Стиль походки можно сменить в F2 - Настройки - Основное - Допольнительно.
:?:.оценка::Не обсуждаем и не оцениваем работу/наказания других администраторов, подобные вопросы необходимо обсудить с тем, кто выдал наказание/следил за ситуацией.
:?:.игр2::Игроки были наказаны.
:?:.амни::Я выдал вам минимальное наказание, оно не подлежит амнистии.
:?:.актуал::Обращение неактивно больше минуты, вынужден его закрыть. Если вопрос остается нерешенным, создайте новое обращение и ждите ответа.
:?:.акт::Ваша проблема актуальна?
:?:.при::Приятной игры{!}
:?:.неком::Не комментируем действия других администраторов.
:?:.нео::Не обладаем данной информацией.
:?:.хз::К сожалению, не располагаем этой информацией.
:?:.кур::Передам кураторам.
:?:.пер::Передам вашему запросу.
:?:.неоф::Не оффтопьте в обращении.
:?:.непр::Не предоставляем подобную информацию.
:?:.чх::Если у вас есть откат с подозрительным моментом, то вы можете предоставить его тут либо в Telegram боте - @CheatHuntersBot 
:?:.нераз::Не разглашаем данную информацию.
:?:.фам::/c - IC чат, /cb - OOC чат. 
:?:.фрак::/f - IC чат, /fb - OOC чат. 
:?:.гос::Вы можете сдать авто на свалку. После сдачи вы получите 50% от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый красный круг.
:?:.грибы::Чтобы собирать грибы, вам надо приехать на точку "Грибы" 1/6 и взять в руки нож.
:?:.рын::Рынок находится в центре города, рядом с "Магазинов 24/7" 2/10 иконка — палатка. Там вы можете сдавать предметы с фермы, дровосека, грибника и рыбалки.
:?:.рыбмагаз::Все предметы для рыбалки продаются в рыболовном магазине. Подсаки купить нельзя, их можно только крафтить в домашних мастерских.
:?:.рыблиц::Получить лицензию на рыбалку можно в Правительстве.
:?:.суд::Снять судимость можно в "Правительстве".
:?:.место::Чтобы засчитался квест с рыбалкой, рыбачьте на своем уровне рыбалки.
:?:.дрифт::Чтобы найти зону для дрифта, откройте карту. На карте она отмечена в виде колеса в огне.
:?:.неув::Не увидел нарушений, если у вас есть видеодоказательства - оставьте жалобу на форуме. 
:?:.фор::По данному видео не вынести быстрое решение через обращение, оставьте жалобу на форуме.
:?:.фор5::Данная видеозапись не показывает всей ситуации, оставьте жалобу на форуме.
:?:.фор6::В обращениях принимаются видео до двух минут. Обрежьте видео или отправьте жалобу на форум.
:?:.форум::В связи с нагрузкой на сервер мы не можем рассмотреть вашу жалобу на игрока в данный момент, рассмотрим её как спадёт нагрузка.
:?:.ин::Остались ли ещё какие-нибудь вопросы?
:?:.ещё::Есть ли у Вас еще какие-либо вопросы?
:?:.оценка::Не обсуждаем и не оцениваем работу/наказания других администраторов, подобные вопросы необходимо обсудить с тем, кто выдал наказание/следил за ситуацией.
:?:.слежка::Администрация не может следить полностью за всем РП процессом, в случае нарушений от игроков - напишите репорт.
:?:.спам::Использование кнопки - "проблема актуальна", не ускорит ответ.
:?:.спам2::Если Вы продолжите использовать кнопку "проблема актуальна" не по назначению, я буду вынужден выдать наказание за помеху в работе администратора.
:?:.нар::Рядом находятся другие игроки, которые могут вам помочь. В таких случаях мы не снимаем наручники/стяжки.
:?:.отв::Не услышал от Вас конкретного ответа, закрываю репорт.
:?:.офф::Если продолжите создавать оффтоп в репорт, то буду вынужден выдать наказание за помеху работе администрации.
:?:.ид::Укажите, пожалуйста, ID нарушителя.
:?:.рж::Чтобы оформить репорт-жалобу, Вам необходимо написать в репорт: Статик нарушителя, Нарушение, и ссылку на видео.
:?:.нетп::Администрация не телепортирует игроков, Вам нужно добраться до места самостоятельно. На проекте достаточно способов, чтобы это сделать: такси, аренда транспорта, автосервисы.
:?:.др::Нажмите "Помощь другого Администратора". Либо напишите ему в Дискорд.
:?:.лечу::Уже лечу к Вам на помощь.
:?:.лиц::Лицензию на оружие можно приобрести у сотрудников МВД, её стоимость составляет 15.000 рублей.
:?:.пом::Сейчас помогу Вам, ожидайте.
:?:.краш::Если у Вас есть доказательства краша - предоставьте его. И Вас выпустят.
:?:.емс::К сожалению, администрация не поднимает и не лечит игроков, воспользуйтесь услугами Больницы.
:?:.подним::К сожалению, не видя всей ситуации, мы не в праве лечить, поднимать или добивать игроков. Дождитесь Сотрудников Больницы либо окончания таймера смерти. Приносим извинения за возможные неудобства.
:?:.жб::Не могу выдавать наказания и выносить вердикты не видя ситуации с самого начала. Если у Вас есть видеофиксация данного нарушения, оформите жалобу на форуме.
:?:.анак::Обратитесь, пожалуйста, в дискорд к администратору, который выдал вам наказание или рассмотрел жалобу.
:?:.адз::Данный администратор сейчас занят другим делом или отошел от компьютера на короткое время, напишите ему в личные сообщения в дискорде.
:?:.адс::Данный администратор сейчас отсутствует на сервере, напишите ему в личные сообщения в дискорде.
:?:.погода::К сожалению, администрация не контролирует данный процесс. Погода меняется автоматически.
:?:.неп::Не понял суть вашего обращения, опишите Вашу проблему/вопрос подробнее для максимально точного ответа, пожалуйста.
:?:.изв::Приносим свои извинения за доставленные неудобства.
:?:.инв::Это баг инвентаря, предложите обменяться любому игроку и ваша проблема будет решена. Если по близости никого нет, обратитесь ещё раз в репорт и администрация Вам поможет.
:?:.мог::Могу чем-то еще помочь?
:?:.сим::Чтобы пользоваться телефоном, вам необходимо купить сим-карту. Преобрести её можно в салоне связи за 1000 рублей.
:?:.смном::Сменить номер можно в салоне связи, за 5000 рублей.
:?:.могу::Могу ли я Вам ещё чем-либо помочь?
:?:.вас::У Вас остались вопросы?
:?:.ник::Для смены ника или внешности откройте меню с помощью F2 > Магазин > Персонаж.
:?:.че::Уточните Ваш вопрос, пожалуйста.
:?:.спавн::Спавн новых игроков находится рядом с ЖД вокзалом, ориентир 3 аренда транспорта.
:?:.анлак::Наказать не смогу, не видел полной ситуации происходящего.
:?:.неактуал::Увидел что более неактуально. Закрываю тикет?
:?:.баги::Не слышал ранее о таком, вероятно баг, вы можете передать данную информацию в Сообщить-о-баге, в Официальном Дискорд-канале России Онлайн.
:?:.багдс::Передайте данную информацию в Сообщить-о-Баге, в Официальном Дискорд-канале России Онлайн.
:?:.невидя::Не видя полной ситуации происходящего - не можем дать корректный ответ, так как каждая ситуация индивидуальна.
:?:.адм::Напишите тому администратору, который наказал Вас. Если нужен его дискорд, напишите в репорт его ник.
:?:.обр::Могу закрывать обращение?
:?:.закр::Могу закрывать обращение?
:?:.нов::Следите за новостями сервера в официальном дискорде проекта.
:?:.помог::Помог. Могу закрывать обращение?
:?:.квест::Нпс для начала прохождения квеста " Путь новичка " находится между автосервисом 12/14 и арендой транспорта 3/6, сам НПС не отмечен на карте, его надо найти самостоятельно.
:?:.сорянчик::Приносим свои извинения за предоставленные неудобства.
:?:.жба::Вы можете написать жалобу на форум, если не согласны с решением администратора.
:?:.емс2::К сожалению, не видя всей ситуации мы не в праве лечить, поднимать или добивать игроков. Дождитесь сотрудников Больницы либо же окончания таймера смерти. Приносим свои извинения за возможные неудобства.
:?:.авто::Чтобы эвакуировать Ваше авто воспользуйтесь маркером Сервиса (Гаечный ключ на карте).
:?:.бб::Вы вышли с сервера, закрываю репорт.
:?:.сгу::Чтобы включить СГУ нажмите G - Открыть СГУ и выберите то, что вам нужно.
:?:.звук::Я не слышу -> У игрока проблемы со слухом / либо его полное отсутствие. Я без звука -> У игрока проблемы с самим звуком /наушники /динамики.
:?:.помогать::Задача игровой администрации - помогать игрокам и пресекать нарушения, в некоторых ситуациях сразу наказывать игроков не совсем верное решение.
:?:.медия::Данная Медия-Личность сейчас не отвечает на репорты.
:?:.воп::Вопроса более от вас не увидел, закрываю репорт.
:?:.амнистия::Амнистию может выдать только тот администратор, что выдал наказание. Обратитесь к нему в репорте написав именной репорт на его имя или в Discord.
:?:.дис::https://discord.gg/russiaonline
:?:.конец::Завершение последнего задания в квесте «Путь новичка», связанного с получением достижения, будет доступно после добавления системы достижений.
:?:.удо::Игрок мог ранее показать Вам удостоверение, и последующие просьбы он может игнорировать. В виду того, что я не видел полной ситуации, не смогу вынести вердикт. Вам следует оформить жалобу на форуме.
:?:.блоккил:При смерти гос сотрудника игрок из крайм фракции или семьи может подобрать предметы и распоряжаться им как и раньше.
:?:.никпод::Не увидел нарушений в нике у игрока.
:?:.плечо::Что поменять плечо стрельбы, зайдите в F2 - Настройки - Назначение клавиш - Смена ракурса при прицеливании, вы можете установить удобную для вас клавишу чтобы менять плечо
:?:.лсадм::Чтобы написать администратору у вас должен быть хотя бы 1 общий сервер, например сервер "Россия Онлайн". Если Вы даже после вступления в него не можете написать администратору, попробуйте проверить свои настройки в дискорде. Настройки - Конфиденциальность: Нужно разрешить личные сообщения от участников серверов.
:?:.сам::Чтобы покинуть не силовую фракцию с помощью Премиум, Откройте Планшет - Выберите Фракцию, а после нажмите в правом верхнем углу, Покинуть Фракцию. Учтите, у Вас не должно быть выговоров.
:?:.неам::Вынужден отказать Вам в амнистии.
:?:.кто::Кто выдал Вам наказание?
:?:.у::Уточните, пожалуйста.
:?:.уто::Уточните, пожалуйста.
:?:.ферм:: 1 уровень - Яблоки, 2 уровень - Пшеница, 3 уровень - Картофель, 4 уровень - Капуста, 5 уровень - Кукуруза, 6 уровень - Тыква, 7 уровень - Шалфей.
:?:.ферма: На 1,2 и 3 ферме выращтвают яблоки, на 4 ферме Пшеницу, на 5 Картофель, на 6 Капуста, на 7 Кукуруза, на 8 Тыква, на 9 Шалфей.
:?:.багреп::Оставьте баг-репорт в официальном дискорде проекта: Текстовые каналы - "Помощь по игре" - "Сообщить о баге". Ссылка на канал: https://discord.com/channels/1089530150540034181/1528397369635246210
:?:.канистра::Чтобы использовать канистру, возьмите её в руки, нажмите G на авто и выберите "Заправить". 
:?:.метал::Металлоискатель становится активным, как только вы берёте его в руки. При обнаружении сокровищ появятся визуальные и звуковые сигналы — от зелёного до красного цвета. Сокровища можно найти на пляжах и архипелагах.  
:?:.рем::Чтобы починить своё авто, купите ремкомплект на любой АЗС, затем через меню G выберите "Починить автомобиль". 
:?:.фед::На первом этаже стоит NPC, у которого можно взять задание. Чтобы отбыть срок в федеральной тюрьме, нужно выполнять задачи. Например, помыть туалет. В определённое время тюрьма закрывает клетки на 5 минут, соответственно, в это время отбыть срок нельзя:  
- **00 минут** — открытие клеток  
- **20 минут** — закрытие клеток на 5 минут  
- **25 минут** — открытие клеток  
- **55 минут** — закрытие клеток на 5 минут 

; Навыки
:?:.вынос::Выносливость — навык повышается при активном образе жизни. Чем больше Вы бегаете, тем быстрее он растет. При низком уровне персонаж не может прыгнуть дважды и падает. С повышением навыка увеличивается длительность беспрерывного бега и количество прыжков (максимум — 2 на последнем уровне).
:?:.сила::Сила - навык силы повышается от физических нагрузок. Чем больше Вы занимаетесь в качалке (иконка бегущего человека на карте), тем быстрее повышается навык. От прокачки увеличивается сопротивление к урону от падения.
:?:.дых::Дыхание — навык увеличивается при длительном нахождении под водой. Чем больше Вы плаваете, тем быстрее он растет. С повышением навыка увеличивается время беспрерывного плавания под водой.
:?:.вожден::Вождение — навык повышается с увеличением времени за рулем. Чем больше Вы водите транспорт, тем быстрее растет навык. Прокачка улучшает управляемость транспортного средства.
:?:.полет::Пилотирование — навык увеличивается при управлении воздушным транспортом. Чем больше Вы летаете на самолете или вертолете, тем быстрее он растет. Также можно пройти курсы в летной школе (1 раз в 24 часа). Одно занятие дает +10 к навыку, стоимость — 2 000$. С прокачкой улучшается стабильность полета и управляемость воздушным транспортом.
:?:.скрытн::Скрытность — навык повышается за успешные уходы от погони (снижение уровня розыска). Чем чаще Вы скрываетесь от полиции, тем быстрее он растет. Не влияет ни на что.
:?:.стрельба::Стрельба — навык растет при участии в перестрелках или тренировках. Чем лучше Вы стреляете и попадаете, тем быстрее он повышается. Рекомендуется тренироваться в тире оружейного магазина. Прокачка навыка увеличивает скорость перезарядки и перекатов, а также кучность стрельбы.

; asms
:?:.пок::/asms  Удачной Вам игры, на России Онлайн.{left 35}
:?:.врп::/asms  Приветствую. Готовы продолжить РП процесс с{space} ? Ответ в /b.{left 59}
:?:/gjr::/asms  Удачной Вам игры, на Россия Онлайн.{left 35}
:?:/dhg::/asms  Приветствую. Готовы продолжить РП процесс с{space} ? Ответ в /b.{left 59}
:?:/pfrh::/asms  Закройте обращение и откройте снова, пожалуйста. {left 51}


; Англ
:?:/vjue::Могу ли я Вам ещё чем-либо помочь?
:?:/g::Приятной игры и хорошего настроения!
:?:/e::Уточните, пожалуйста.
:?:/enj::Уточните, пожалуйста.
:?:/rnj::Кто выдал Вам наказание?
:?:/lbc::https://discord.gg/russiaonline
:?:/ytfv::Вынужден отказать Вам в амнистии.
:?:/prh::Закрываю обращение?
:?:/pfrh::Могу закрывать обращение?
:?:/ytp::Не заметил нарушений. Приятной игры на России Онлайн.
:?:/yfr::Наказал. Приятной игры на России Онлайн.
:?:/nuxbn::Вы можете оставить жалобу на подозреваемого игрока в телеграмм бота @CheatHuntersBot, и его проверят
:?:/fdf::Аватарку для профиля можно установить на сайте Majestic ID (https://id.majestic-rp.ru/), чтобы загрузить картинку, откройте личный кабинет и перейдите в раздел «Настройки».
:?:/ytd::Не вижу нарушений, дабы наказать игрока.
:?:/htg;,::Что бы оформить репорт жалобу, необходимо направить Видео в репорт которое не превышает 2х минут, а так же ситуация должна происходить не более 2х часов назад.
:?:/buy::Не увидел от Вас вопроса/ответа, закрываю.
:?:Yfrfpfk/::Наказал.
:?:/t[g2::Каждый час (у каждого игрока своё время) вам начисляется EXP. Чтобы узнать, сколько осталось до следующего PayDay, нажмите клавишу F2 — Статистика.
:?:/uheggf::Чтобы работать на кооперативной работе, вам необходимо пригласить игроков через приложение "Группа" в телефоне.
:?:/lhban::Чтобы найти зону для дрифта, откройте карту. На карте она отмечена в виде колеса в огне. Приезжаете, нажимаете **E** на точке (синяя метка) — и вы в дрифт-зоне.
:?:/cnfn::F2 - Персонаж - Статистика.
:?:/cnbkm::Стиль походки можно сменить в F2 - Настройки - Основное - Допольнительно.
:?:/hf,::Все доступные вашему уровню работы вы можете посмотреть в F2 - Персонаж - Работы.
:?:/pg::Чтобы начислялся PayDay. Вам нужно иметь свою банковскую карту и быть уволенным со всех работ. Оформить её можно в любом банке.
:?:/[tkg,g::Администрация не может помогать на заданиях Ивента.
:?:Yfrfpfk::Наказал
:?:/rjytw::Завершение последнего задания в квесте «Путь новичка», связанного с получением достижения, будет доступно после добавления системы достижений.
:?:/gjvju::Помог. Могу закрывать обращение?
:?:/j,h::Могу закрывать обращение?
:?:/gjvjufnm::Задача игровой администрации - помогать игрокам и пресекать нарушения, в некоторых ситуациях сразу наказывать игроков не совсем верное решение.
:?:/pder::Я не слышу -> У игрока проблемы со слухом / либо его полное отсутствие. Я без звука -> У игрока проблемы с самим звуком /наушники /динамики.
:?:/gjk::Обратитесь к сотрудникам полиции.
:?:/er::Укажите ID нарушителя.
:?:/vtlbz::Данная Медия-Личность сейчас не отвечает на репорты.
:?:/gjrf::Удачной Вам игры, на России Онлайн.
:?:/,fudjqc::Перезагрузить войс чат нельзя. Вам необходимо перезайти в игру.
:?:/cnfdrf::Расчёт ставки происходит в течение 6-ти часов. Администрация не управляет расчетом.
:?:/cxtn::Чтобы узнать номер счета откройте инвентарь и наведитесь мышкой на банковскую карту.
:?:/gby::Чтобы восстановить пин-код отправляйтесь в банковское отделение, в меню смены нажмите "Восстановить".
:?:/nfqv::Это визуальный баг таймера, часы идут и коины вам начислят по истечению времени. 
:?:/cbl::Укажите static ID нарушителя.
:?:/gen::Всю информацию (команды/о фракциях, работах и так далее) можно узнать на форуме https://russia.online/ - раздел "Путеводитель для новичков".
:?:/edfk::К сожалению, ничем не можем помочь, увольняем только в случае, если у фракции нет лидера. Дождитесь своего лидера/заместителей.
:?:/,fu::Знаем о данной проблеме, она уже передана разработчикам. Приносим свои извинения за доставленные неудобства. 
:?:/htk::Полностью перезайдите на сервер через F1 - Отключиться.
:?:/ytj,k::Не обладаем данной информацией.
:?:/rdtcn::Нпс для начала прохождения квеста " Путь новичка " находится между автосервисом 12/14 и арендой транспорта 3/6, сам НПС не отмечен на карте, его надо найти самостоятельно.
:?:/hg::Извините, но это РП процесс, мы не вправе вмешиваться в него.
:?:/rjytw::Завершение последнего задания в квесте «Путь новичка», связанного с получением достижения, будет доступно после добавления системы достижений.
:?:/ehg::Вы можете узнать эту информацию общаясь с другими игроками или найти её самостоятельно во время игры.
:?:/nt[::Напишите в технический раздел на форуме. Ссылка на раздел - https://forum.russia.online/forums/zayavleniya-v-tekhnicheskii-razdel.560/
:?:/nt[lc::Напишите в технический раздел официального дискорд сервера "Помощь по игре" - "тех-поддержка". Ссылка на канал - https://discordapp.com/channels/1089530150540034181/1534231644842754090
:?:/aeyr::Данный функционал временно недоступен, приносим свои извинения.
:?:/bpd::Приносим свои извинения за доставленные неудобства.
:?:/fdnj::Чтобы эвакуировать Ваше авто воспользуйтесь маркером Сервиса (Гаечный ключ на карте). 
:?:/pg::Чтобы начислялся PayDay. Вам нужно иметь свою банковскую карту и быть уволенным со всех работ. Оформить её можно в любом банке.
:?:/gjlybv::К сожалению, не видя всей ситуации мы не в праве лечить, поднимать или добивать игроков. Дождитесь Сотрудников Больницы либо же окончания таймера смерти. Приносим свои извинения за возможные неудобства. 
:?:/[g::Перезайдите в игру, либо купите таблетку у Сотрудников Больницы.
:?:/bl::Укажите, пожалуйста, ID нарушителя.
:?:/flv::Напишите тому администратору, который наказал Вас. Если нужен его дискорд, напишите в тикет его никнейм.
:?:/yjdjcnm::Придите лично в Вести Москвы. 
:?:/ujc::Вы можете сдать авто на свалку. После сдачи вы получите 50% от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый красный круг.
:?:/uhb,s::Чтобы собирать грибы, вам надо приехать на точку "Грибы" 1/6 и взять в руки нож.
:?:/hsy::Рынок находится в центре города, рядом с "Магазинов 24/7" 2/10 иконка — палатка. Там вы можете сдавать предметы с фермы, дровосека, грибника и рыбалки.
:?:/hs,vfufp::Все предметы для рыбалки продаются в рыболовном магазине. Подсаки купить нельзя, их можно только крафтить в домашних мастерских.
:?:/hsmkbw::Получить лицензию на рыбалку можно в Правительстве.
:?:/cel::Снять судимость Вы можете в Правительстве.
:?:/mecto::Чтобы засчитался квест с рыбалкой, рыбачьте на своем уровне рыбалки.
:?:/lhban::Чтобы найти зону для дрифта, откройте карту. На карте она отмечена в виде колеса в огне.
:?:/vjltk::Пункт "Прогрузка моделей" отвечает за быстроту прогрузки текстур при приближении к ним.
:?:/bvz::Ваше Имя Фамилия не подходит по правилам нашего сервера. Вам нужно сменить ник и написать в репорт повторно, если Ваш ник будет соблюдать правила сервера, то Вас выпустят.
:?:/dsyjc::Выносливость - навык выносливости повышается от подвижного образа жизни. Чем больше ты бегаешь, тем быстрее повышается навык. При низком навыке, персонаж не может прыгнуть 2 раза и падает. Соответственно повышение навыка влияет на длительность беспрерывного бега и количество прыжков, максимум на последнем уровне - 2.
:?:/cbkf::Сила - навык силы повышается от физических нагрузок. Чем больше ты занимаешься в качалке (иконка бегущего человека на карте), тем быстрее повышается навык. От прокачки увеличивается сопротивление к урону от падения.
:?:/ls[::Дыхание - навык дыхания повышается от длительного нахождения под водой. Чем больше ты плаваешь, тем быстрее повышается навык. Соответственно повышение навыка влияет на длительность беспрерывного плавания под водой.
:?:/gjktn::Полет - навык пилотирования повышается от времени, проведенного за воздушным транспортом. Чем больше ты летаешь на самолете или вертолете, тем быстрее повышается навык. Также навык можно повысив пройдя курсы в летной школе. Пройти их можно 1 раз в 24 часа, увеличение навыка от 1 занятия - 10, стоимость одного занятия - 2 000$. От прокачки навыка увеличивается стабильность полета и управляемость воздушным транспортом.
:?:/crhsny::Скрытность - навык скрытности повышается от количества успешных уходов от погони (понижений уровня розыска). Чем чаще ты скрываешься от полиции, тем быстрее повышается навык. Ни на что не влияет.
:?:/cnhtkm,f::Стрельба - навык стрельбы повышается от времени, проведенного в перестрелках, либо тренировках. Чем лучше ты стреляешь и попадаешь, тем быстрее повышается навык. Рекомендуем тренироваться в специально отведенных для того местах, тире в оружейном магазине. От прокачки навыка увеличивается скорость перезарядки и перекатов, кучность стрельбы.
:?:/,fupp::Чтобы восстановить прежнюю скорость, заедьте в зеленую зону и выедьте с нее.
:?:/gjujlf::К сожалению администрация не контролирует данный процесс. Погода меняется автоматически. 
:?:/htg::Пожалуйста, уточните свой вопрос подробнее. Администрация не летает на репорты по типу "админ тп", "админ можно поговорить", "помогите", "админ есть вопрос". Количество символов неограниченно, вы можете полностью расписать Вашу проблему/вопрос.
:?:/ytedbl::К сожалению администрация не может увидеть это нарушение. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание.
:?:/ytng::Администрация не телепортирует игроков, Вам нужно добраться до места самостоятельно. На проекте достаточно способов, чтобы это сделать: такси, аренда транспорта, автосервисы.
:?:/byd::Это баг инвентаря, предложите обменяться любому игроку и ваша проблема будет решена. Если по близости никого нет, обратитесь ещё раз в репорт и администрация Вам поможет.
:?:/ytck::Администрация не может следить полностью за всем РП процессом, в случае нарушений от игроков - напишите репорт.
:?:/yted::Не увидел нарушений, если у вас есть видеодоказательства - оставьте жалобу на форуме. 
:?:/ajh::По данному видео не вынести быстрое решение через обращение, оставьте жалобу на форуме.
:?:/ybr::Для смены ника или внешности откройте меню с помощью F2 > Магазин > Персонаж. 
:?:/ajhev::В связи с нагрузкой на сервер мы не можем рассмотреть вашу жалобу на игрока в данный номент, рассмотрим её как спадёт нагрузка.
:?:/bcx::Все транспортные средства исчезают через 60 минут, если с ними никак не взаимодействовать.
:?:/cg,:: Если одно отделение Больницы сильно загружено, чтобы избежать краши вас спавнит в другом, менее загруженном отделении.
:?:/gthtl::Все имущество вы передаете на свой страх и риск.
:?:/cbv::Чтобы пользоваться телефоном, вам необходимо купить сим-карту. Преобрести её можно в салоне связи за 1000 рублей.
:?:/cvyjv::Сменить номер можно в салоне связи, за 5000 рублей.
:?:/pfr::Это регламентируется IC законами, изучить их можете в разделе Правительство на форуме.0.
:?:/vtl::За данным медиа партнером наблюдает PR ассистент, по этой причине я не могу выдавать наказание, т.к. вся ответственность за происходящее на этой ситуации автоматически переносится на PR ассистента.
:?:/ybpr::У вас включен режим низкого качества в F2 - Настройки.
:?:/dfr::От вакцины, выданной администрацией квест не будет засчитан, ожидайте появления врачей.
:?:/,byl::Вы можете настроить бинд клавиш под себя в F2 - Настройки - Бинд клавиш.
:?:/crby::Оружие появляется в донат инвентаре, его можно будет распылить. Однако при его применении невозможно дальнейшее распыление. Чтобы применить скин на оружие: F2 - Магазин - Cкины - Выбираете оружие и скин к нему - Применить, скин применяется ко всем оружиям выбранного типа. Скин привязывается к игроку, выбить оружие со скином/сбросить/обменять/продать - невозможно.
:?:/djn::Выборы активны с 10:00 - 10:00 по московскому времени. Проголосовать может каждый от 3-го уровня игрового персонажа, по принцыпу один голос на один аккаунт. голосование проходит в левом крыле Мэрии(На карте флаг USA).
:?:/jldjhr:: Теперь при каждом устройстве на работу Вы получаете соответствующий комплект одежды. Он снимется автоматически при увольнении/прекращении работы. Если же у Вас мед комплект то Вам нужно пройти курс лечения.
:?:/[jk::"Холодный старт" - при запуске ТС издаёт характерный звук, другим функционалом не обладает.
:?:/cnhbv::Режим стримера заменяет символы на звездочки, для обычных игроков он бесполезен. Выключается в F2 - Настройки.
:?:/rv,::Чтобы устроиться в силовую гос. структуру необходимо получить военный билет. Для этого надо устроиться в Армию и пройти КМБ. Иконка зеленого самолета на карте. Подробнее уточните у старшего состава фракции.
:?:/fkbc::Чтобы выключить GPS ассистента нажмите F2 - Настройки и выключите GPS Ассистент.
:?:/gj[jl::Изменить походу и эмоции лица можно в  F2 - Настройки - Главное.
:?:/,fuf;::Чтобы вылезти из багажника нажмите на "E".
:?:/cue::Чтобы включить СГУ нажмите G - Открыть СГУ и выберите то что вам нужно.
:?:/yfk::Чтобы оплатить налоги на дом необходимо открыть приложение "Мой дом" в планшете.
:?:/ntcn::Внутри интерьера маркетплейса (F3 - Маркетплейс) сядьте на стул, выберите авто и начните тест-драйв
:?:/djl::Администрация не достает автомобили из воды, а лишь удаляет, чтобы вы могли ее заспавнить. Вам необходимо самостоятельно добраться до автосервиса/аренды т.с или до нужного вам места, например, вы можете вызвать такси.
:?:/,typ::Администрация не заправялет т.с. игроков. Вы можете вызвать такси и добраться до нужного вам места или приобрести канистру, чтобы в дальнейшем доехать до АЗС.
:?:/elfk::Администрация не удаляет т.с. игроков. Исключение: т.с. утонуло и не исчезло.
:?:/cnfn::В F2 - Персонаж - Статистика.
:?:/athv:: 1 уровень - Яблоки, 2 уровень - Пшеница, 3 уровень - Картофель, 4 уровень - Капуста, 5 уровень - Кукуруза, 6 уровень - Тыква, 7 уровень - Шалфей.
:?:/athv: На 1,2 и 3 ферме выращтвают яблоки, на 4 ферме Пшеницу, на 5 Картофель, на 6 Капуста, на 7 Кукуруза, на 8 Тыква, на 9 Шалфей.
:?:/,fuhtg::Оставьте баг-репорт в официальном дискорде проекта: Текстовые каналы - "Помощь по игре" - "Сообщить о баге". Ссылка на канал: https://discord.com/channels/1089530150540034181/1528397369635246210 .
:?:/yby::Предметы можно вращать нажатием на пробел, если дважды нажать по предметы он используется (берется в активный слот или надевается).
:?:/hjp::Добавлена система преследования. Для того чтобы начать преследование, нужно выдать розыск - зайти в Планшет - Фракция - База данных - Начать преследование, на карте появляется метка местоположения игрока, обновляется раз в 30 секунд, если игрок которого преследуют заходит в другой дименшен/интерьер/выйдет из игры - пропадает с радаров. Если гос. игрок приезжает на метку/подходит к игроку - преследование заканчивается.
:?:/fh::После окончания срока аренда авто глушится и появляется диалоговое меню, где можно продлить аренду. 
:?:/rjvn::Рабочий транспорт можно спавнить только на специально автосервисе для коммерческого транспорта. 
:?:/uh::Лидер группы может давать код, чтобы массово добавить людей в группу, игроки в радиусе 30 метров смогут зайти. Лидер и помощники могут ставить указывающие метки, настраивается в F2 - Настройки - Бинды. Лидер может передать свой статус другому игроку.
:?:/ntu::Возможность тегать людей в чате для удобного РП процесса, для использования напишите @Динамик. Если игрока тегнуть у него появится уведомление об этом, тегаются только ближайшие игроки.
:?:/dxfn::Система визуализации чата над игроком - над игроком будут дублироваться все сообщения из чата. В настройках - Дополнительно, можно включить.
:?:/vfhr::Маркетплейс используется для размещения различных товаров на продажу, таких как: транспорт, жилая недвижимость, бизнес, банкоматы, билборды. Каждая карточка с объявлением фиксирует количество просмотров карточки и количество лайков (тех кто добавил объявление в избранное). Нажав кнопку «Начать сделку» нам откроется модальное окно, в котором будет дублироваться еще раз вся необходимая информация, сумма к оплате и кнопка совершить покупку. График, который отображает  динамику цен и имеет возможность взаимодействия. После покупки предметы отправятся в «Склад хранения». За размещение любого объявления взымается плата в 1.000$ за час (от 5к). Возможность покупать лот как за наличку, так и через карту. Администратор может удалить карточку игрока. Игрок может пожаловаться на объявление, сообщение попадёт в обращение.
:?:/vfhrg::Раздел торговой площадки. Это формат биржи, на которой торгуются исключительно предметы инвентаря. Предметы выставляются бесплатно, но удаление стоит 1.000$. Есть возможность продления объявления.  На торговую площадку можно выставить предметы только из "Склада хранения".  Возможность покупать лот как за наличку, так и через карту. В карточке имеется информация о названии предмета, минимальной стоимости обновляемой в режиме реального времени и общее количество продаваемых предметов на бирже. Имеется график «Медиана цен», который визуализирует, как менялась цена за различные периоды времени. 
:?:/c[h::Склад хранения это место, в которое попадают предметы, которые были куплены или предметы, которые были занесены сюда игроком, с целью их продажи на маркет плейсе. На склад можно выгрузить предметы из инвентаря или из багажника. Склад хранения находится сбоку здания аукциона. Склад не ограничен по хранению предметов Предметы могут находиться на складе 30 минут, после истечения этого времени они идут на аукцион. Имеется возможность добавить карточку в избранное. После покупки имущество/предметы могут храниться на складе 2 дня. При входе в зону маркетплейса подсвечивается склад и появляется метка на карте.
:?:/ckex::В наградах имеются "Случайные наборы". При взятии приза у игрока будет выбор в открытии одной трёх карт с разным содержимым.
:?:/lvr::Дефибриллятор МК2 никакого функционала не даёт, он аналогичен обычному дефибриллятору.
:?:/flh::Адреналин поднимает игрока в 2 раза быстрее, чем эпинефрин.
:?:/yfuh::Все автомобили и одежда из пропуска являются эксклюзивом, их нельзя передавать другим игрокам.
:?:/;fg::Предмет "Аптечка жёлтая" - восстанавливает 75 хп.
:?:/j,d::Обвесы имеются в призах. Первая установка бесплатная. Обвесы можно будет снять/поставить отдельно. Обвес закрепляется за машиной. 
:?:/frn::Ваша проблема актуальна?
:?:/kbw::Лицензию на оружие можно приобрести у сотрудников МВД, её стоимость составляет 15.000 рублей.
:?:/frnefk::Обращение неактивно более одной минуты, вынужден его закрыть. Если же у Вас есть нерешенный вопрос/проблема создайте новое и ожидайте ответа.
:?:/djg::Вопроса более от вас не увидел, закрываю репорт.
:?:/fvyb::Я выдал Вам минимальное наказание, его нельзя амнистировать.
:?:/,byjrkm::Для того чтобы использовать бинокль. Вам нужно открыть инвентарь, после навестись на бинокль в инвентаре, нажать ПКМ и использовать. После зажмите ПКМ и у Вас сработает бинокль.
:?:/rdh::У бота на работе будет кнопка "Я могу чем-то помочь". Вы на неё жмёте и у вас откроется квест, который выполнить нужно (на Ф6 можно посмотреть). Выполняете этот квест и Вам засчитывает задание.
:?:/xth::Червей можно выкопать на любой зоне рыбалки, с помощью лопаты. Шанс выпадения червя очень мл. Лопату вы можете приобрести на рынке у NP
:?:/hs,vfufp::Все предметы для рыбалки продаются в рыболовном магазине, они убраны из 24/7. Подсаки купить нельзя, можно только крафтить в домашних мастерских.
:?:/gfh::Положите парашют в быстрый слот, затем в полете нажмите на 1, 2 или 3 (зависит от слота), после этого ЛКМ, парашют откроется.
:?:/lhban::Дрифт счётчик можно включить через F2 > Настройки. Он появляется во время управляемого заноса и показывает, на сколько хорошо вы прошли поворот.На карте вы можете увидеть зоны, где можно дрифтить и попасть в список топ-дрифтеров. Для этого Вам обязательно дрифтить по отмеченной зоне. В противном случае очки не засчитаются.
:?:/fen::Для подключения Google authenticator вам нужно в меню выбора персонажа открыть раздел настроек.
:?:/fhv::Армреслинг находится около в Палето около шерифов, а также между стрипклубом и починкой авто.
:?:/rl::Перезарядка аренды авто 5 минут.
:?:/reh::Передам кураторам.
:?:/gth::Передам.
:?:/ytja::Не оффтопьте в обращении.
:?:/ytgh::Не предоставляем подобную информацию.
:?:/buh::Игрок получил наказание.
:?:/buh2::Игроки получили наказания.
:?:/afv::/c - IC чат, /cb - OOC чат.
:?:/ahfr::/f - IC чат, /fb - OOC чат. 
:?:/ghb::Приятной игры!
:?:/cgfdy::Спавн новых игроков находится рядом с ЖД вокзалом, ориентир 3 аренда транспорта.
:?:/ktxe::Уже лечу к Вам на помощь.
:?:/gjv::Сейчас помогу Вам, ожидайте.
:?:/cltkrf::Администрация не следит за сделками игроков, запишите видео на случай обмана, чтобы оставить жалобу на игрока на форуме. 
:?:/yjd::Следите за новостями сервера в официальном дискорде проекта. 
:?:/fyfr::Обратитесь, пожалуйста, в дискорд к администратору, который выдал вам наказание или рассмотрел жалобу.
:?:/flp::Данный администратор сейчас занят другим делом или отошел от компьютера на короткое время, напишите ему в личные сообщения в дискорде.
:?:/flc::Данный администратор сейчас отсутствует на сервере, напишите ему в личные сообщения в дискорде.
:?:/ytg::Не понял суть вашего обращения, опишите Вашу проблему/вопрос подробнее для максимально точного ответа, пожалуйста.
:?:/ljyfn::Обратитесь по почте - help@majestic-rp.ru.
:?:/tvc::К сожалению, администрация не поднимает и не лечит игроков, воспользуйтесь услугами Больницы.
:?:/pfrh::/asms  Закройте обращение и откройте снова, пожалуйста. {left 51}
:?:/dbp::Визуальный баг, перезайдите на сервер.
:?:/ythfp::Не разглашаем данную информацию.
:?:/by::Остались ли ещё какие-нибудь вопросы?
:?:/cgfv::Использование кнопки - "проблема актуальна", не ускорит ответ.
:?:/cgfv2::Если Вы продолжите использовать кнопку - "проблема актуальна", не по назначению, то буду вынужден выдать наказание за помеху в работе администратора.
:?:/ckt;rf::Администрация не может следить полностью за всем РП процессом, в случае нарушений от игроков - напишите репорт.
:?:/jwtyrf::Не обсуждаем и не оцениваем работу/наказания других администраторов, подобные вопросы необходимо обсудить с тем, кто выдал наказание/следил за ситуацией.
:?:/yfh::Рядом находятся другие игроки, которые могут вам помочь. В таких случаях мы не снимаем наручники/стяжки.
:?:/jnd::Не услышал от Вас конкретного ответа, закрываю репорт.
:?:/jaa::Если продолжите создавать оффтоп в репорт, то буду вынужден выдать наказание за помеху работе Администрации.
:?:/lc::Предоставьте видеодоказательства мне в личные сообщения в дискорде:
:?:/vfl;::https://discord.gg/russiaonline
:?:/vju::Могу чем-то еще помочь?
:?:/dfc::У Вас остались вопросы?
:?:/kcflv::Чтобы написать администратору у вас должен быть хотя бы 1 общий сервер, например сервер "Россия Онлайн". Если Вы даже после вступления в него не можете написать администратору, попробуйте проверить свои настройки в дискорде. Настройки - Конфиденциальность: Нужно разрешить личные сообщения от участников серверов.
:?:/xt::Уточните Ваш вопрос, пожалуйста.
:?:/;,f::Вы можете написать жалобу на форум, если не согласны с решением администратора.
:?:/tvc2::К сожалению, не видя всей ситуации мы не в праве лечить,поднимать или добивать игроков. Дождитесь сотрудников Больницы либо же окончания таймера смерти. Приносим свои извинения за возможные неудобства. 
:?:/;,::Не могу выдавать наказания и выносить какие-либо вердикты не видя ситуации с самого начала. Если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме.
:?:/athv:: 1 уровень - Яблоки, 2 уровень - Пшеница, 3 уровень - Картофель, 4 уровень - Капуста, 5 уровень - Кукуруза, 6 уровень - Тыква, 7 уровень - Шалфей.
:?:/athv: На 1,2 и 3 ферме выращтвают яблоки, на 4 ферме Пшеницу, на 5 Картофель, на 6 Капуста, на 7 Кукуруза, на 8 Тыква, на 9 Шалфей.
:?:/,fuhtg::Оставьте баг-репорт в официальном дискорде проекта: Текстовые каналы - "Помощь по игре" - "Сообщить о баге". Ссылка на канал: https://discord.com/channels/1089530150540034181/1528397369635246210

; Прочее
:?:администарция::администрация
:?:администаратору::администратору
; Наказания
:?:.хард::/hardban  
:?:.мут::/mute
:?:.дмг::/ajail
:?:.варн::/warn
:?:.бан::/ban
:?:.хард9::/hardban 9999 Cheats{left 12}
:?:.софт::/hardban 9999 Cheats{left 12}
:?:.рыбак::/hardban 9999 Использование ПО{left 22}
:?:.чит::/hardban 9999 Cheats{left 12}
:?:.оос::/ajail 10 OOC in IC{Left 13}
:?:.нрд::/ajail 45 nonRP Drive{Left 15}
:?:.нрд55::/ajail 55 nonRP Drive{Left 15}
:?:.нрд70::/ajail 70 nonRP Drive{Left 15}
:?:.нрд90::/ajail 90 nonRP Drive{Left 15}
:?:.нрф25::/ajail 90 nonRP Fly{Left 13}
:?:.нрп::/ajail 45 nonRP Поведение{Left 19}
:?:.нрп55::/ajail 55 nonRP Поведение{Left 19}
:?:.нрп75::/ajail 75 nonRP Поведение{Left 19}
:?:.нрп90::/ajail 90 nonRP Поведение{Left 19}
:?:.дб::/ajail 65 DB{Left 6}
:?:.дб75::/ajail 75 DB{Left 6}
:?:.дб90::/ajail 90 DB{Left 6}
:?:.дм140::/ajail 140 DM{Left 7}
:?:.дм::/ajail 120 DM{Left 7}
:?:.пг::/ajail 45 PG{Left 6}
:?:.пг75::/ajail 75 PG{Left 6}
:?:.пг90::/ajail 90 PG{Left 6}
:?:.1181::/ajail 60 1.18.1 Правил государственных организаций{Left 45}
:?:.1222::/ajail 60 1.22.2 Правил государственных организаций{Left 43}
:?:.род::/hardban 30 Прямое оскорбление родственников{left 36}
:?:.оскрод::/hardban 30 4.3 Основных правил проекта{left 31}
:?:.упомрод::/ban 10 4.2 Основных правил проекта{left 31}
:?:.оскадм::/ban 10 6.4 Основных правил проекта{left 31}
:?:.1101::/ajail 100 1.10.1 Правил государственных организаций{Left 46}
:?:.120::/ban 7 1.20 Правил государственных организаций{Left 43}
:?:.1102::/warn 1.10.2 Правил государственных организаций{Left 42}
:?:.громк::/mute 30 4.6 Основных правил проекта{Left 31}
:?:.смник::/ajail 720 Смените Имя_Фамилия согласно правилам проекта{Left 50}
:?:.смвн::/ajail 720 Смените внешность согласно правилам проекта{Left 48}
:?:.оса30::/hardban 30 Оскорбление администрации{left 30}
:?:.оса15::/hardban 14 Оскорбление администрации{left 30}
:?:.оса10::/hardban 10 Оскорбление администрации{left 30}
:?:.оса::/hardban 10 Оскорбление администрации{left 28}
:?:.ооск::/ajail 45 OOC оскорбление{left 19}
:?:.амн::/unjail Амнистия{left 9}
:?:.амн2::/ajail Амнистия{left 9}
:?:.отказ::/hardban 9999 Отказ от проверки{left 23}
:?:.тон::/mute 10 ПО для изменения тональности голоса.{Left 40}
:?:.уход::/warn Уход от RP{Left 11}
:?:.уход5::/hardban 5 Уход от RP{Left 13}
:?:.бгз::/warn Использование уязвимостей системы и багов{Left 42}
:?:.флуд::/mute 10 4.4 Основных правил проекта{left 31}
:?:.рез::/hardban 9999 По результатам проверки{left 29}
:?:.запретка::/mute 120 3.6 Основных Правил Проекта{left 30}
:?:.ск::/gunban 10 SK{left 6}

:?:/[fhl::/hardban
:?:/ven::/mute
:?:/lvu::/ajail
:?:/dfhy::/warn
:?:/,fy::/ban
:?:/jnrfp::/hardban 9999 Отказ от проверки{left 23}
:?:/hs,fr::/hardban 9999 Использование ПО{left 22}
:?:/cjan::/hardban 9999 Cheats{left 12}
:?:/[fhl9::/hardban 9999 Cheats{left 12}
:?:/jjc::/ajail 10 OOC in IC{Left 12}
:?:/yhl::/ajail 45 nonRP Drive{Left 15}
:?:/yhl70::/ajail 70 nonRP Drive{Left 15}
:?:/yhl90::/ajail 90 nonRP Drive{Left 15}
:?:/yha::/ajail 45 nonRP Fly{Left 13}
:?:/yha90::/ajail 90 nonRP Fly{Left 13}
:?:/yhg::/ajail 45 nonRP Поведение{Left 19}
:?:/yhg70::/ajail 70 nonRP Поведение{Left 19}
:?:/yhg90::/ajail 90 nonRP Поведение{Left 19}
:?:/l,::/ajail 65 DB{Left 6}
:?:/l,75::/ajail 75 DB{Left 6}
:?:/l,90::/ajail 90 DB{Left 6}
:?:/lv140::/ajail 140 DM{Left 6}
:?:/lv::/ajail 120 DM{Left 6}
:?:/gu::/ajail 45 PG{Left 6}
:?:/gu55::/ajail 55 PG{Left 6}
:?:/gu75::/ajail 75 PG{Left 6}
:?:/gu90::/ajail 90 PG{Left 6}
:?:/1181::/ajail 60 1.18.1 Правил государственных организаций{Left 45}
:?:/1222::/ajail 60 1.22.2 Правил государственных организаций{Left 43}
:?:/1101::/ajail 100 1.10.1 Правил государственных организаций{Left 46}
:?:/120::/ban 10 1.20 Правил государственных организаций{Left 45}
:?:/1102::/warn 1.10.2 Правил государственных организаций{Left 42}
:?:/uhjvr::/mute 30 4.6 Основных правил проекта{Left 31}
:?:/jcrflv::/ban 10 6.4 Основных правил проекта{left 31}
:?:/cvybr::/ajail 720 Смените Имя_Фамилия согласно правилам проекта{Left 50}
:?:/cvdy::/ajail 720 Смените внешность согласно правилам проекта{Left 48}
:?:/hjl::/hardban 30 Прямое оскорбление родственников{left 37}
:?:/jcrhjl::/hardban 30 4.3 Основных правил проекта{left 31}
:?:/egjvhjl::/ban 10 4.2 Основных правил проекта{left 31}
:?:/jcf30::/hardban 30 Оскорбление администрации{left 29}
:?:/jcf15::/hardban 14 Оскорбление администрации{left 29}
:?:/jcf10::/hardban 10 Оскорбление администрации{left 29}
:?:/jcf::/hardban 10 Оскорбление администрации{left 28}
:?:/jjcr::/ajail 45 OOC оскорбление{left 19}
:?:/fvy::/unjail Амнистия{left 9}
:?:/fvy2::/ajail Амнистия{left 9}
:?:/akel::/mute 10 4.4 Основных правил проекта{left 31}
:?:/pfghtnrf::/mute 120 3.6 Основных Правил Проекта{left 30}
:?:/njy::/mute 30 ПО для изменения тональности голоса.{Left 40}
:?:/e[jl::/warn Уход от RP{Left 11}
:?:/e[jl5::/hardban 5 Уход от RP{Left 13}
:?:/,up::/warn Использование уязвимостей системы и багов{Left 41}


;===================================================================================
change:
    MsgBox, 8192, 06.09.2026 Обновления:`n , Можно узнать в Дискорде АХК.
return
;===================================================================================

Reload:
reload
return

^F9::reload
^F10::Exitapp

Close:
exitapp

Hide:
Gui, Main: Hide
return

Show:
Gui, Main: Show
return

guiclose2:
gui, Main:hide

guiclose:
Gui, Answers:Destroy
return

guiclose3:
Gui, Commandlist:Destroy
return

guiclose4:
Gui, Usefull:Destroy
return