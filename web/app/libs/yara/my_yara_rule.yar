import "pe"

rule test1
{
	strings:
		$sig1 = "]zHD8PS"
		$sig2 = ".)D$H)"
		$sig3 = "334094012627201923175682405381853141810348437766834361347434334094012627201923175682405381853141810348437766834361347434334094012627201923175682405381853141810348437766834361347434334094012627201923175682405381853141810348437766834361347434334094012627201923175682405381853141810348437766834361347434334094012627201923175682405381853141810348437766834361347434109211730642019085454837123146444211842103734668752217054210921173064201908545483712314644421184210373466875221705421092117306420190854548371231464442118421037346687522170542109211730642019085454837123146444211842103734668752217054210921173064201908545483712314644421184210373466875221705421092117306420190854548371231464442118421037346687522170542MZ"
		$sig4 = "23456789:"
		$sig5 = "rySrUK<"
		$sig6 = "6y(|YK"
		$sig7 = "                                                                                                    UVWATAUAVAWHA_A^A]A\\_^]VWAVHWAVAWHt$ WHx AVHWATAUAVAWH|$ AVHD$ E3A_A^A]A\\] A_A^_A_A^A]A\\_^[]A_A^A]A\\_UVWAVAWH@SVWHL$@H3L$ E3UWAVHvalue__L$8H30A^_^L$HH3A_A^]QSystem.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a|$ E3L$0H3@USVWATAUAVAWHL$PH3t$ E3A_A^_^]UATAUAVAWHQSystem.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3awidth0A_A^_Redmond1height cHRM A^_^A_A^A\\_]System.Drawing.Size A_A^A]A\\_Washington1tEXtTitleVWATAVAWHUWVSHY[^_]A_A^_UWATAVAWHL$`H3UAWAVAUATWVSH A_A^A\\Center=@A^_^x ATAVAWHDigiCert Inc1USVWATAUAVAWHUAVAWHL$XH3System.Drawing.Point@USVWAVHWSystem.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089ot$ H@USVWATAVAWHt$ WAVAWH0A_A^A]A\\_t$ WATAUAVAWHWVUSHA_A^A\\_^[]D$0E3SVWATAUAVAWHwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwl$ E3D$(E3A_A^A\\_^\\$ E3@A_A^_PartA_PrivTags\\$ UVWATAUAVAWHSystem.Drawing.BitmapWindows Style Builder[^_A\\A]A^A_]([^_]L$ WH([]^_WSystem.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089.idata$4.idata$5threadId.idata$6`A_A^A]A\\_^]D$@E3wilActivityIDATx^ATAVAWHAVWVUSHA_A^A\\message"
		$sig8 = "LookupPrivilegeValueA"
		$sig9 = "MSVCRT.dll"
		$sig10 = "SendMessageA"
		$sig11 = "Z9Ol7XF="
		$sig12 = "R>W|b&"
		$sig13 = "gkq@lwf3"
		$sig14 = "Wm>sdw"
		$sig15 = "5357195357196053571960253571960535753571960281047202243048364443320280334142541854307465701002104"
		$sig16 = "jjjjjjjjjjjjjjjjjjjjjjjjjj"
		$sig17 = "CreateMutexA"
		$sig18 = "B~xmT/"
		$sig19 = "\"&^i1M"
		$sig20 = "application/*"
		$sig21 = "thewalkcentre.org"
		$sig22 = "p;YB/ CG!P"
		$sig23 = "GetFileAttributesA"
		$sig24 = "9(5Y\\U"
		$sig25 = "334094012627201923175682405381853141810348437766834361347434334094012627201923175682405381853141810348437766834361347434334094012627201923175682405381853141810348437766834361347434334094012627201923175682405381853141810348437766834361347434334094012627201923175682405381853141810348437766834361347434334094012627201923175682405381853141810348437766834361347434229212930616201912627808070856065320501738377123662615351734229212930616201912627808070856065320501738377123662615351734229212930616201912627808070856065320501738377123662615351734229212930616201912627808070856065320501738377123662615351734229212930616201912627808070856065320501738377123662615351734229212930616201912627808070856065320501738377123662615351734594316662575320194904836444332028033414254185430746570100210459431666257532019490483644433202803341425418543074657010021045943166625753201949048364443320280334142541854307465701002104594316662575320194904836444332028033414254185430746570100210459431666257532019490483644433202803341425418543074657010021045943166625753201949048364443320280334142541854307465701002104279183411021201917254673221425374166571718007341110645146638279183411021201917254673221425374166571718007341110645146638279183411021201917254673221425374166571718007341110645146638279183411021201917254673221425374166571718007341110645146638279183411021201917254673221425374166571718007341110645146638279183411021201917254673221425374166571718007341110645146638"
		$sig26 = "L$0fUAVWVSH.pdataoL$0f<EVENTCOLUMN></EVENTCOLUMN>oT$@f"
		$sig27 = "LoadLibraryA"
		$sig28 = "~Value"
		$sig29 = "l][tSc"
		$sig30 = "RegCloseKey"
		$sig31 = "PathFileExistsA"
		$sig32 = "X,\"%Dw"
		$sig33 = "D$ fhresultMicrosoft Corporation1&0$oD$ f"
		$sig34 = "USER32.dll"
		$sig35 = "UUUUUUUUUUUUUUUC"
		$sig36 = "module_rnd"
		$sig37 = "5553662301149202045048364443320280334142541854307465701002104555366230114920204504836444332028033414254185430746570100210455536623011492020450483644433202803341425418543074657010021045553662301149202045048364443320280334142541854307465701002104555366230114920204504836444332028033414254185430746570100210455536623011492020450483644433202803341425418543074657010021042122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474343530154281229202025305020824656315324640713041584260702632248353015428122920202530502082465631532464071304158426070263224835301542812292020253050208246563153246407130415842607026322483530154281229202025305020824656315324640713041584260702632248353015428122920202530502082465631532464071304158426070263224835301542812292020253050208246563153246407130415842607026322486811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-4842076405363251447671825077075268154174226222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-86452260676037738708346054255227758826824088721526322021-27246542314324870103424033166266853444527888721526322021-27246542314324870103424033166266853444527888721526322021-27246542314324870103424033166266853444527888721526322021-27246542314324870103424033166266853444527888721526322021-27246542314324870103424033166266853444527888721526322021-2724654231432487010342403316626685344452788MZ"
		$sig38 = "12344*"
		$sig39 = "/Q@YKH"
		$sig40 = "?>bw:,"
		$sig41 = "Kazekage.exe"
		$sig42 = "`?U7(3"
		$sig43 = "/class/VER103.gz"
		$sig44 = "TFileName("
		$sig45 = "DeleteFileW"
		$sig46 = "5961266151053202249605007202328832115336251150482732855305687676037738708346054255227758826824087"
		$sig47 = "qz56+0"
		$sig48 = "OW-y0Q"
		$sig49 = "~KxI[)"
		$sig50 = "GetModuleFileNameW"
		$sig51 = "RtlDecompressBuffer"
		$sig52 = "1962826810132022954084036682068705267528167751602166338883206760377387083460542552277588268240887"
		$sig53 = "-h/kWOa"
		$sig54 = "lstrcmpW"
		$sig55 = "TObjectd3"
		$sig56 = "RegEnumKeyExA"
		$sig57 = "KG&=O8"
		$sig58 = "System"
		$sig59 = "mREPxzSe.exe"
		$sig60 = "2745133413112120221775750774674045878262417111222307067801717043320280334142541854307465701002104"
		$sig61 = "`f)#/@"
		$sig62 = " duplic\"!F"
		$sig63 = "(YYZZZ"
		$sig64 = "Trickler"
		$sig65 = "JoInva"
		$sig66 = "3839123839124538391245238391245383938391245231032202228743182627260630605582707208327135510331572"
		$sig67 = " $kFCS"
		$sig68 = "3942133942134639421346239421346394239421346281033202229645226067603773870834605425522775882682408"
		$sig69 = "Gaara.exe"
		$sig70 = "{L[x2xH"
		$sig71 = "6/9X/8w"
		$sig72 = "EVENT_SINK_AddRef"
		$sig73 = "5553662301149202045048364443320280334142541854307465701002104555366230114920204504836444332028033414254185430746570100210455536623011492020450483644433202803341425418543074657010021045553662301149202045048364443320280334142541854307465701002104555366230114920204504836444332028033414254185430746570100210455536623011492020450483644433202803341425418543074657010021042122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474343530154281229202025305020824656315324640713041584260702632248353015428122920202530502082465631532464071304158426070263224835301542812292020253050208246563153246407130415842607026322483530154281229202025305020824656315324640713041584260702632248353015428122920202530502082465631532464071304158426070263224835301542812292020253050208246563153246407130415842607026322486811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-4842076405363251447671825077075268154174226222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-864522606760377387083460542552277588268240847211263-22021-663342640163730803442404486625033005056363347211263-22021-663342640163730803442404486625033005056363347211263-22021-663342640163730803442404486625033005056363347211263-22021-663342640163730803442404486625033005056363347211263-22021-663342640163730803442404486625033005056363347211263-22021-6633426401637308034424044866250330050563633MZ"
		$sig74 = "hitechcell.ca"
		$sig75 = "BA6^zd"
		$sig76 = "#u/[WGc"
		$sig77 = "PX$Gqq"
		$sig78 = "(}h<46"
		$sig79 = "euaxt.exe"
		$sig80 = "`A>|j>i"
		$sig81 = "bcdddddddddef"
		$sig82 = "%.~qIo"
		$sig83 = "GetCurrentProcess"
		$sig84 = "GetProcAddress"
		$sig85 = "SysFreeString"
		$sig86 = "r?}V06"
		$sig87 = "Jb/)b3L"
		$sig88 = "paceExA"
		$sig89 = "DAe!OR"
		$sig90 = "3/vI|u"
		$sig91 = "1523422101092022504836444332028033414254185430746570100210402328832115336251150482732855305687887"
		$sig92 = "abK.O.Hcdc"
		$sig93 = "advapi32.dll"
		$sig94 = "GetTempPathW"
		$sig95 = "4981556231043202239026838582837338567786723666271174482781864405381853141810348437766834361347434"
		$sig96 = "ReadFile"
		$sig97 = "cDefE!gYjjiiijj2mnop"
		$sig98 = "2\"1&A["
		$sig99 = "g7<k[6"
		$sig100 = "&C#~ma."
		$sig101 = "p2VO$:"
		$sig102 = "RegCreateKeyExA"
		$sig103 = "InternetOpenW"
		$sig104 = "This program must be run under Win32"
		$sig105 = "`.data"
		$sig106 = "<7-0%DU"
		$sig107 = "CreateFileW"
		$sig108 = "l:KDGm`"
		$sig109 = "^}dZ0l"
		$sig110 = "`.rdata"
		$sig111 = "yY!5p~"
		$sig112 = "JK/|l5A!*"
		$sig113 = "QOXQZS5"
		$sig114 = "EVENT_SINK_QueryInterface"
		$sig115 = "yCjO_^"
		$sig116 = "1915142651113202297701531475407872886466783544886462165566210538185314181034843776683436134743428"
		$sig117 = "HKC{YY"
		$sig118 = "345678"
		$sig119 = "xZ[mapi"
		$sig120 = "WXYZ[\\]^_`a"
		$sig121 = "user32.dll"
		$sig122 = "SleepEx"
		$sig123 = "&gZoC`"
		$sig124 = "ShellExecuteW"
		$sig125 = "?0J02\'"
		$sig126 = "{6$uiH"
		$sig127 = "334094012627201923175682405381853141810348437766834361347434334094012627201923175682405381853141810348437766834361347434334094012627201923175682405381853141810348437766834361347434334094012627201923175682405381853141810348437766834361347434334094012627201923175682405381853141810348437766834361347434334094012627201923175682405381853141810348437766834361347434119211830652019188117223018308825165080382430164777131866511921183065201918811722301830882516508038243016477713186651192118306520191881172230183088251650803824301647771318665119211830652019188117223018308825165080382430164777131866511921183065201918811722301830882516508038243016477713186651192118306520191881172230183088251650803824301647771318665164416232971020196410830526105677234382224883226365246720284164416232971020196410830526105677234382224883226365246720284164416232971020196410830526105677234382224883226365246720284164416232971020196410830526105677234382224883226365246720284164416232971020196410830526105677234382224883226365246720284164416232971020196410830526105677234382224883226365246720284"
		$sig128 = "/scripts/inst_VER103.gz"
		$sig129 = "9l$\\w_"
		$sig130 = "lstrlenW"
		$sig131 = ".iPpDN"
		$sig132 = "P[xp19b"
		$sig133 = "G:HQB~UQ"
		$sig134 = "bvvcb.exe"
		$sig135 = "PostMessageA"
		$sig136 = "frm_main"
		$sig137 = "GetWindowTextLengthA"
		$sig138 = "HttpOpenRequestW"
		$sig139 = "wsprintfA"
		$sig140 = "Vq$:!md"
		$sig141 = "uvIiT`"
		$sig142 = "~6@WjV*"
		$sig143 = "e[e7A6"
		$sig144 = "RTosE*"
		$sig145 = "PsDROs\\TPs"
		$sig146 = "RegRestoreKeyA"
		$sig147 = ";7L^{("
		$sig148 = "@TsV.E"
		$sig149 = "msvb]f"
		$sig150 = "RegQueryValueExA"
		$sig151 = "\"j81kT"
		$sig152 = "P\"<SH0&zI"
		$sig153 = "USQWVR"
		$sig154 = "/sc/id3.gz"
		$sig155 = "MSVBVM60.DLL"
		$sig156 = "V(|9babld"
		$sig157 = "=L,{`O"
		$sig158 = "svchost.exe"
		$sig159 = "module_path"
		$sig160 = "$;VXfJ{>"
		$sig161 = "module_main"
		$sig162 = "d!`\\rr"
		$sig163 = "c[M@XV"
		$sig164 = "1D!3Jr"
		$sig165 = "3946214620103320222955402725102103177066126011718683671667508567603773870834605425522775882682408"
		$sig166 = "44711112910-22022-6645226067603773870834605425522775882682408157481408308768208004048540777080256"
		$sig167 = "RegCreateKeyA"
		$sig168 = "RegSaveKeyA"
		$sig169 = "CloseHandle"
		$sig170 = "D$t+D$\\"
		$sig171 = "|/<$YaE"
		$sig172 = "wdW`)b"
		$sig173 = "!This program cannot be run in DOS mode."
		$sig174 = "4545111810-22022-64661633142420631125587122578868025373345504053818531418103484377668343613474347"
		$sig175 = "5662063311502022467627261020578807557814216037030138228418216067603773870834605425522775882682408"
		$sig176 = "PlutonX"
		$sig177 = "prd?vBoK;gO"
		$sig178 = "R{ K[18"
		$sig179 = "QVVVVW"
		$sig180 = "kernel32"
		$sig181 = "ExitWindowsEx"
		$sig182 = "MN6}PI"
		$sig183 = "=eC&Jl/p"
		$sig184 = "EVENT_SINK_Release"
		$sig185 = "RegFlushKey"
		$sig186 = "dm+kx0c@[3"
		$sig187 = "GetFileSize"
		$sig188 = "VXH,`g"
		$sig189 = "OFTWARE"
		$sig190 = "811215291022022-283847128550876227563701862820737303764511667603773870834605425522775882682408434"
		$sig191 = "Z-\'6;2="
		$sig192 = "smss.exe"
		$sig193 = "kernel32.dllGetDis"
		$sig194 = "5e)Nex"
		$sig195 = "30JAK_^"
		$sig196 = "k[o3f6{"
		$sig197 = "C:\\WINDOWS\\system32\\msvbvm60.dll\\3"
		$sig198 = "module_registry"
		$sig199 = "1651223211102022638435004400224557458828438167600811650005320232883211533625115048273285530568787"
		$sig200 = "Server"
		$sig201 = "E|v:y)"
		$sig202 = "}p]%uoc"
		$sig203 = "1350112056720193605007202328832115336251150482732855305687676037738708346054255227758826824080487"
		$sig204 = "$%12V44)"
		$sig205 = "ftaid.exe"
		$sig206 = "KX4& |h"
		$sig207 = "D4|v6R"
		$sig208 = "$%&\'()*+,-."
		$sig209 = "module_check"
		$sig210 = "-<BvpT"
		$sig211 = "csrss.exe"
		$sig212 = "1071171071171110711711110711711107110711711142022013038146227126161513345134436172150484751663838"
		$sig213 = "RegEnumValueA"
		$sig214 = "UTyp$8Mao"
		$sig215 = "{~Y]Tc"
		$sig216 = "lJt?Y9>"
		$sig217 = "HySW1a`"
		$sig218 = "?ExitP"
		$sig219 = "Z-RRh>v"
		$sig220 = "__________________________"
		$sig221 = "BCDEFGHIJKLMNOPQRSTU"
		$sig222 = "m4fq{z1"
		$sig223 = "xRaKeH"
		$sig224 = "IhVxPB"
		$sig225 = "DllFunctionCall"
		$sig226 = "U]Cf0`0"
		$sig227 = "A^0B\\^"
		$sig228 = "pP<mur"
		$sig229 = "SClassesF"
		$sig230 = "VirtualAlloc"
		$sig231 = "3716114421131202227768287858407533450687601515738112127680514142537416657171800734111064514663874"
		$sig232 = "FindWindowA"
		$sig233 = "yFWBW`"
		$sig234 = "RegDeleteKeyA"
		$sig235 = "HUBG.kc"
		$sig236 = "5122135122135851221358651221358512251221358610452022414081188768536788835306873765816635848601887"
		$sig237 = "WriteFile"
		$sig238 = "Ns$FPs"
		$sig239 = "dwm.exe"
		$sig240 = "bcdefghi"
		$sig241 = "HttpSendRequestW"
		$sig242 = "{Ne qQM"
		$sig243 = "InternetConnectW"
		$sig244 = "\\SHARE_TEMP"
		$sig245 = "5553662301149202045048364443320280334142541854307465701002104555366230114920204504836444332028033414254185430746570100210455536623011492020450483644433202803341425418543074657010021045553662301149202045048364443320280334142541854307465701002104555366230114920204504836444332028033414254185430746570100210455536623011492020450483644433202803341425418543074657010021042122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474343530154281229202025305020824656315324640713041584260702632248353015428122920202530502082465631532464071304158426070263224835301542812292020253050208246563153246407130415842607026322483530154281229202025305020824656315324640713041584260702632248353015428122920202530502082465631532464071304158426070263224835301542812292020253050208246563153246407130415842607026322486811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-4842076405363251447671825077075268154174226222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408107217263420210328455084087612111815073071846868711478227107217263420210328455084087612111815073071846868711478227107217263420210328455084087612111815073071846868711478227107217263420210328455084087612111815073071846868711478227107217263420210328455084087612111815073071846868711478227107217263420210328455084087612111815073071846868711478227MZ"
		$sig246 = "version"
		$sig247 = "VirtualProtect"
		$sig248 = "\"x9bzBo"
		$sig249 = "Microsoft Windows"
		$sig250 = "InternetCloseHandle"
		$sig251 = "abcsvghijklmnopqr"
		$sig252 = "mgx<H "
		$sig253 = "/java/b04.gz"
		$sig254 = "GetCurrentDirectoryW"
		$sig255 = "tele-brands.com"
		$sig256 = "RegDeleteValueA"
		$sig257 = "licat@on eqr"
		$sig258 = "InternetReadFile"
		$sig259 = "ign e*. Sou"
		$sig260 = "&\\ &r@M"
		$sig261 = "Timer1"
		$sig262 = "V58Z=*"
		$sig263 = "2422153128101820221460500720232883211533625115048273285530568767603773870834605425522775882682408"
		$sig264 = "5553662301149202045048364443320280334142541854307465701002104555366230114920204504836444332028033414254185430746570100210455536623011492020450483644433202803341425418543074657010021045553662301149202045048364443320280334142541854307465701002104555366230114920204504836444332028033414254185430746570100210455536623011492020450483644433202803341425418543074657010021042122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474343530154281229202025305020824656315324640713041584260702632248353015428122920202530502082465631532464071304158426070263224835301542812292020253050208246563153246407130415842607026322483530154281229202025305020824656315324640713041584260702632248353015428122920202530502082465631532464071304158426070263224835301542812292020253050208246563153246407130415842607026322486811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-4842076405363251447671825077075268154174226222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-86452260676037738708346054255227758826824089721626332021-12587180387405418772657567136141507434072239721626332021-12587180387405418772657567136141507434072239721626332021-12587180387405418772657567136141507434072239721626332021-12587180387405418772657567136141507434072239721626332021-12587180387405418772657567136141507434072239721626332021-1258718038740541877265756713614150743407223MZ"
		$sig265 = "Olp#\"T"
		$sig266 = "+`TEbr"
		$sig267 = "9:;<=>>?@AB"
		$sig268 = "panglex.com.hk"
		$sig269 = "2633133121020202216175682405381853141810348437766834361347434320280334142541854307465701002104087"
		$sig270 = ">$Zv=B_"
		$sig271 = "8s9S=A"
		$sig272 = "AdjustTokenPrivileges"
		$sig273 = "O`,4Cx67Ic"
		$sig274 = "\\Borland\\Delphi\\RTL"
		$sig275 = "5*>axDBwm"
		$sig276 = "OU4!>@"
		$sig277 = "&eh5{_"
		$sig278 = "ntdll.dll"
		$sig279 = "{&8p^)j6"
		$sig280 = "4M=T6D"
		$sig281 = "k,|NiOt"
		$sig282 = "f=MZtr"
		$sig283 = "FPUMab"
		$sig284 = "5553662301149202045048364443320280334142541854307465701002104555366230114920204504836444332028033414254185430746570100210455536623011492020450483644433202803341425418543074657010021045553662301149202045048364443320280334142541854307465701002104555366230114920204504836444332028033414254185430746570100210455536623011492020450483644433202803341425418543074657010021042122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474343530154281229202025305020824656315324640713041584260702632248353015428122920202530502082465631532464071304158426070263224835301542812292020253050208246563153246407130415842607026322483530154281229202025305020824656315324640713041584260702632248353015428122920202530502082465631532464071304158426070263224835301542812292020253050208246563153246407130415842607026322486811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-4842076405363251447671825077075268154174226222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408197226263132021930858545063010072372580510328028771220737519722626313202193085854506301007237258051032802877122073751972262631320219308585450630100723725805103280287712207375197226263132021930858545063010072372580510328028771220737519722626313202193085854506301007237258051032802877122073751972262631320219308585450630100723725805103280287712207375MZ"
		$sig285 = "Cjye}r"
		$sig286 = "0*&\"@xHB"
		$sig287 = "CharNextA"
		$sig288 = "FLF>5?"
		$sig289 = "deEFGH"
		$sig290 = "^A#$Dn"
		$sig291 = "5553662301149202045048364443320280334142541854307465701002104555366230114920204504836444332028033414254185430746570100210455536623011492020450483644433202803341425418543074657010021045553662301149202045048364443320280334142541854307465701002104555366230114920204504836444332028033414254185430746570100210455536623011492020450483644433202803341425418543074657010021042122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474343530154281229202025305020824656315324640713041584260702632248353015428122920202530502082465631532464071304158426070263224835301542812292020253050208246563153246407130415842607026322483530154281229202025305020824656315324640713041584260702632248353015428122920202530502082465631532464071304158426070263224835301542812292020253050208246563153246407130415842607026322486811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-4842076405363251447671825077075268154174226222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408327239263262021220314307515283547065687135723584546306473233272392632620212203143075152835470656871357235845463064732332723926326202122031430751528354706568713572358454630647323327239263262021220314307515283547065687135723584546306473233272392632620212203143075152835470656871357235845463064732332723926326202122031430751528354706568713572358454630647323282543534222021182546732214253741665717180073411106451466382825435342220211825467322142537416657171800734111064514663828254353422202118254673221425374166571718007341110645146638282543534222021182546732214253741665717180073411106451466382825435342220211825467322142537416657171800734111064514663828254353422202118254673221425374166571718007341110645146638522785994462021422546732214253741665717180073411106451466385227859944620214225467322142537416657171800734111064514663852278599446202142254673221425374166571718007341110645146638522785994462021422546732214253741665717180073411106451466385227859944620214225467322142537416657171800734111064514663852278599446202142254673221425374166571718007341110645146638327839174262021222546732214253741665717180073411106451466383278391742620212225467322142537416657171800734111064514663832783917426202122254673221425374166571718007341110645146638327839174262021222546732214253741665717180073411106451466383278391742620212225467322142537416657171800734111064514663832783917426202122254673221425374166571718007341110645146638"
		$sig292 = "w.uNqz\'"
		$sig293 = "Wjri9c"
		$sig294 = "YZZ[\\2^"
		$sig295 = "MethCallEngine"
		$sig296 = "u\"]ecW"
		$sig297 = "3617943111302022262411833210006556447843760782781224015072453202803341425418543074657010021042408"
		$sig298 = "xFf1Q\""
		$sig299 = "VBA6.DLL"
		$sig300 = "taskhost.exe"
		$sig301 = "OpenProcessToken"
		$sig302 = "CDEFGGGHIJK"
		$sig303 = "5Rce3J"
		$sig304 = "XPTPSW"
		$sig305 = "oleaut32.dll"
		$sig306 = "ProcCallEngine"
		$sig307 = ")ez>ah"
		$sig308 = "-_(GZ]Y"
		$sig309 = "gRuntime"
		$sig310 = "w{|>d3"
		$sig311 = "x{[A ,9"
		$sig312 = "E);x-p"
		$sig313 = "StringX"
		$sig314 = "sF/\"`aG{n"
		$sig315 = "8\'li?jl"
		$sig316 = "+KjH@s"
		$sig317 = "9hRWQ_"
		$sig318 = "|)qWJB"
		$sig319 = "3620143181030202226711313285845542360887823080601534555700734676037738708346054255227758826824088"
		$sig320 = "T7%0y|E"
		$sig321 = "w@gylz///////"
		$sig322 = "D$t#D$h"
		$sig323 = "o!W\"0m"
		$sig324 = "zf=hr/"
		$sig325 = "LsAJRe"
		$sig326 = "wininet.dll"
		$sig327 = "user32"
		$sig328 = "N7V:{Z"
		$sig329 = "H#9,b~HbY"
		$sig330 = " type. "
		$sig331 = "2939132939136929391369129391369293929391369112320221930435763812350124868205516705568660312536188"
		$sig332 = "B^,y9Z"
		$sig333 = "/s_%Gm"
		$sig334 = "thesundanceschool.com"
		$sig335 = "2SV2=#In;"
		$sig336 = "SyaFun&"
		$sig337 = "4219949311036202232605007202328832115336251150482732855305687676037738708346054255227758826824088"
		$sig338 = "module_bind"
		$sig339 = "n!*Aux"
		$sig340 = "\\[+$<|"
		$sig341 = "YNgeCe"
		$sig342 = "]kq*78"
		$sig343 = "shell32.dll"
		$sig344 = "OukTUf"
		$sig345 = "+t_$xtZXtUx"
		$sig346 = "tZGAP)"
		$sig347 = "4B,!F?"
		$sig348 = "PECompact2"
		$sig349 = "}6%\'BMMo"
		$sig350 = "^\'}K!!"
		$sig351 = ",wxU>a"
		$sig352 = "SHLWAPI.dll"
		$sig353 = "uUnhsd "
		$sig354 = "C:\\Program Files\\Microsoft Visual Studio\\VB98\\VB6.OLB"
		$sig355 = "<yYve`x;"
		$sig356 = "text/*"
		$sig357 = ".{.=g-HQ1"
		$sig358 = "8621526322021-26050072023288321153362511504827328553056876760377387083460542552277588268240843487"
		$sig359 = "/payment_gateway/heapid3.gz"
		$sig360 = "_=pQ~$"
		$sig361 = "module_until"
		$sig362 = "GetProc"
		$sig363 = "4553144553145245531452145531452455345531452101139202235844685573870520767038243300743172005170813"
		$sig364 = "lyvn}tAb"
		$sig365 = "RegOpenKeyExA"
		$sig366 = "3M$MwR"
		$sig367 = "Ub.T30"
		$sig368 = "O$YD*d"
		$sig369 = "(YZZ[a"
		$sig370 = "3313144051127202223283355185417041168467882523123318271203460425374166571718007341110645146638507"
		$sig371 = "ehiut.exe"
		$sig372 = ".pdata"
		$sig373 = "VirtualFree"
		$sig374 = "!This is a PE executable"
		$sig375 = "KaQQ~:"
		$sig376 = "yh}!lp"
		$sig377 = "5553662301149202045048364443320280334142541854307465701002104555366230114920204504836444332028033414254185430746570100210455536623011492020450483644433202803341425418543074657010021045553662301149202045048364443320280334142541854307465701002104555366230114920204504836444332028033414254185430746570100210455536623011492020450483644433202803341425418543074657010021042122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474342122828712152020111756824053818531418103484377668343613474343530154281229202025305020824656315324640713041584260702632248353015428122920202530502082465631532464071304158426070263224835301542812292020253050208246563153246407130415842607026322483530154281229202025305020824656315324640713041584260702632248353015428122920202530502082465631532464071304158426070263224835301542812292020253050208246563153246407130415842607026322486811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-48420764053632514476718250770752681541742266811310202021-4842076405363251447671825077075268154174226222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-8645226067603773870834605425522775882682408222169193-42021-864522606760377387083460542552277588268240847211263-22021-608382477100422550020650275073862824248534547211263-22021-608382477100422550020650275073862824248534547211263-22021-608382477100422550020650275073862824248534547211263-22021-608382477100422550020650275073862824248534547211263-22021-608382477100422550020650275073862824248534547211263-22021-6083824771004225500206502750738628242485345MZ"
		$sig378 = "__vbaExceptHandler"
		$sig379 = "1955222651113202290385137884827380304230865257053886353565252142537416657171800734111064514663838"
		$sig380 = "$FKX$("
		$sig381 = "~6/Last"
		$sig382 = "swprintf"
		$sig383 = "xMcl+OK"
		$sig384 = "$igr|]r"
		$sig385 = "class_main"
		$sig386 = "yYbpf`0"
		$sig387 = "FindWindowExA"
		$sig388 = "\\L}Eeuy+"
		$sig389 = "WmiPrvSE.exe"
		$sig390 = "kernel32.dll"
		$sig391 = "\"ps@3>_{"
		$sig392 = "ExitProcess"
		$sig393 = "4117124828103520223117568240538185314181034843776683436134743443320280334142541854307465701002104"
		$sig394 = "B=Thk!#@"
		$sig395 = "/Ygggggggggggggg"
		$sig396 = " JX?`UB"
		$sig397 = "w MbMH"
		$sig398 = "shQAT\\"
		$sig399 = "2919133651123202219047867105562310317175718562237317104455600760377387083460542552277588268240887"
		$sig400 = "Z^_Y[]"
		$sig401 = "mscorsvw.exe"
		$sig402 = "ReleaseMutex"
		$sig403 = "|^ow>m_"
		$sig404 = "3519113519114235191142335191142351935191142301029202225645226067603773870834605425522775882682408"
		$sig405 = "%yx/lX"
		$sig406 = "gwW0k,"
		$sig407 = "kelownatownhomes.com"
		$sig408 = "{Ps?|Ps"
		$sig409 = " Data:E"
		$sig410 = "KERNEL32.DLL"
		$sig411 = "942171621932019-1175682405381853141810348437766834361347434942171621932019-1175682405381853141810348437766834361347434942171621932019-1175682405381853141810348437766834361347434942171621932019-1175682405381853141810348437766834361347434942171621932019-1175682405381853141810348437766834361347434942171621932019-1175682405381853141810348437766834361347434727014281112019-3048364443320280334142541854307465701002104727014281112019-3048364443320280334142541854307465701002104727014281112019-3048364443320280334142541854307465701002104727014281112019-3048364443320280334142541854307465701002104727014281112019-3048364443320280334142541854307465701002104727014281112019-3048364443320280334142541854307465701002104"
		$sig412 = "dddddddddddddddddddddddddd"
		$sig413 = "Y~e`!&"
		$sig414 = "IDATXG"
		$sig415 = "`yNl|-F3"
		$sig416 = "+>0123456789A"
		$sig417 = "s`)L$4"
		$sig418 = "9~$P8l"
		$sig419 = "\"#$%&\'()*+,"
		$sig420 = "3Messag"
		$sig421 = "TSearchRec"
		$sig422 = "xiV)\\W"
		$sig423 = "UUCCCDVWX"
		$sig424 = "$Vf(yu"
		$sig425 = "ConxDg"
		$sig426 = "GetWindowTextA"
		$sig427 = "h<CN9D"
		$sig428 = "t$t#t$l"
		$sig429 = "s|{)D("
		$sig430 = "LMNOPQRSTUV"
		$sig431 = "T$@ft.weinhold@arcor.deSystem.Windows.Forms.ImeModeIDATXGPADPADP_left_right_bottomSystem.Windows.Forms.PaddingfileNamemoduleo\\$PH"
		$sig432 = "zzzzzzzzzzzzzzz"
		$sig433 = "0LRXoZ}"
		$sig434 = "\\$PHlSystem.Resources.ResourceReader, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089#System.Resources.RuntimeResourceSetlineNumberSystem.CodeDom.MemberAttributes$thisIDATHKcurrentContextNamecurrentContextMessagefailureTypecallContextoriginatingContextNameoriginatingContextMessageoriginatingContextIdcurrentContextIdlSystem.Resources.ResourceReader, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089#System.Resources.RuntimeResourceSet!System.Windows.Forms.AnchorStylesISystem, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089<EVENTCOLUMNSUBCLASS></EVENTCOLUMNSUBCLASS>functionIDAThCfD94Au"
		$sig435 = "YFV{y=t"
		$sig436 = "@]&2B+"
		$sig437 = "Ux]Fw(V"
		$sig438 = "u|Rv\'U"
		$sig439 = "Dvn+|Ax"
		$sig440 = "/catalog/b04.gz"
		$sig441 = "]uvwxyz?"
		$sig442 = "AxAiWL"
		$sig443 = "RegSetValueExA"
		$sig444 = "R\'uJ\'H"
		$sig445 = "rkpE,I&"
		$sig446 = "bbbbbbbbbbbbbbb"
		$sig447 = "Project1"
		$sig448 = "6A6DX{zBc"
		$sig449 = "1359122019107202232833704675477301453744712020885471034111463221425374166571718007341110645146638"
		$sig450 = "~U)OWO"
		$sig451 = "4747154311412022374025537735748161623332131577327777577660630232883211533625115048273285530568725"
		$sig452 = "&F#$dl"
	condition:
		271 of (#sig1, #sig2, #sig3, #sig4, #sig5, #sig6, #sig7, #sig8, #sig9, #sig10, #sig11, #sig12, #sig13, #sig14, #sig15, #sig16, #sig17, #sig18, #sig19, #sig20, #sig21, #sig22, #sig23, #sig24, #sig25, #sig26, #sig27, #sig28, #sig29, #sig30, #sig31, #sig32, #sig33, #sig34, #sig35, #sig36, #sig37, #sig38, #sig39, #sig40, #sig41, #sig42, #sig43, #sig44, #sig45, #sig46, #sig47, #sig48, #sig49, #sig50, #sig51, #sig52, #sig53, #sig54, #sig55, #sig56, #sig57, #sig58, #sig59, #sig60, #sig61, #sig62, #sig63, #sig64, #sig65, #sig66, #sig67, #sig68, #sig69, #sig70, #sig71, #sig72, #sig73, #sig74, #sig75, #sig76, #sig77, #sig78, #sig79, #sig80, #sig81, #sig82, #sig83, #sig84, #sig85, #sig86, #sig87, #sig88, #sig89, #sig90, #sig91, #sig92, #sig93, #sig94, #sig95, #sig96, #sig97, #sig98, #sig99, #sig100, #sig101, #sig102, #sig103, #sig104, #sig105, #sig106, #sig107, #sig108, #sig109, #sig110, #sig111, #sig112, #sig113, #sig114, #sig115, #sig116, #sig117, #sig118, #sig119, #sig120, #sig121, #sig122, #sig123, #sig124, #sig125, #sig126, #sig127, #sig128, #sig129, #sig130, #sig131, #sig132, #sig133, #sig134, #sig135, #sig136, #sig137, #sig138, #sig139, #sig140, #sig141, #sig142, #sig143, #sig144, #sig145, #sig146, #sig147, #sig148, #sig149, #sig150, #sig151, #sig152, #sig153, #sig154, #sig155, #sig156, #sig157, #sig158, #sig159, #sig160, #sig161, #sig162, #sig163, #sig164, #sig165, #sig166, #sig167, #sig168, #sig169, #sig170, #sig171, #sig172, #sig173, #sig174, #sig175, #sig176, #sig177, #sig178, #sig179, #sig180, #sig181, #sig182, #sig183, #sig184, #sig185, #sig186, #sig187, #sig188, #sig189, #sig190, #sig191, #sig192, #sig193, #sig194, #sig195, #sig196, #sig197, #sig198, #sig199, #sig200, #sig201, #sig202, #sig203, #sig204, #sig205, #sig206, #sig207, #sig208, #sig209, #sig210, #sig211, #sig212, #sig213, #sig214, #sig215, #sig216, #sig217, #sig218, #sig219, #sig220, #sig221, #sig222, #sig223, #sig224, #sig225, #sig226, #sig227, #sig228, #sig229, #sig230, #sig231, #sig232, #sig233, #sig234, #sig235, #sig236, #sig237, #sig238, #sig239, #sig240, #sig241, #sig242, #sig243, #sig244, #sig245, #sig246, #sig247, #sig248, #sig249, #sig250, #sig251, #sig252, #sig253, #sig254, #sig255, #sig256, #sig257, #sig258, #sig259, #sig260, #sig261, #sig262, #sig263, #sig264, #sig265, #sig266, #sig267, #sig268, #sig269, #sig270, #sig271, #sig272, #sig273, #sig274, #sig275, #sig276, #sig277, #sig278, #sig279, #sig280, #sig281, #sig282, #sig283, #sig284, #sig285, #sig286, #sig287, #sig288, #sig289, #sig290, #sig291, #sig292, #sig293, #sig294, #sig295, #sig296, #sig297, #sig298, #sig299, #sig300, #sig301, #sig302, #sig303, #sig304, #sig305, #sig306, #sig307, #sig308, #sig309, #sig310, #sig311, #sig312, #sig313, #sig314, #sig315, #sig316, #sig317, #sig318, #sig319, #sig320, #sig321, #sig322, #sig323, #sig324, #sig325, #sig326, #sig327, #sig328, #sig329, #sig330, #sig331, #sig332, #sig333, #sig334, #sig335, #sig336, #sig337, #sig338, #sig339, #sig340, #sig341, #sig342, #sig343, #sig344, #sig345, #sig346, #sig347, #sig348, #sig349, #sig350, #sig351, #sig352, #sig353, #sig354, #sig355, #sig356, #sig357, #sig358, #sig359, #sig360, #sig361, #sig362, #sig363, #sig364, #sig365, #sig366, #sig367, #sig368, #sig369, #sig370, #sig371, #sig372, #sig373, #sig374, #sig375, #sig376, #sig377, #sig378, #sig379, #sig380, #sig381, #sig382, #sig383, #sig384, #sig385, #sig386, #sig387, #sig388, #sig389, #sig390, #sig391, #sig392, #sig393, #sig394, #sig395, #sig396, #sig397, #sig398, #sig399, #sig400, #sig401, #sig402, #sig403, #sig404, #sig405, #sig406, #sig407, #sig408, #sig409, #sig410, #sig411, #sig412, #sig413, #sig414, #sig415, #sig416, #sig417, #sig418, #sig419, #sig420, #sig421, #sig422, #sig423, #sig424, #sig425, #sig426, #sig427, #sig428, #sig429, #sig430, #sig431, #sig432, #sig433, #sig434, #sig435, #sig436, #sig437, #sig438, #sig439, #sig440, #sig441, #sig442, #sig443, #sig444, #sig445, #sig446, #sig447, #sig448, #sig449, #sig450, #sig451, #sig452)
}