//Maya ASCII 2022 scene
//Name: squareMAN.ma
//Last modified: Sun, Dec 18, 2022 06:37:57 PM
//Codeset: 1252
requires maya "2022";
requires "mtoa" "4.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19044)";
fileInfo "UUID" "1B1C1CB3-4BCC-B56E-325A-7EABF85AF5A0";
createNode transform -s -n "persp";
	rename -uid "521C9BA0-41E7-E96D-1680-5F9A9B7A2606";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.36422220311654208 7.3360437578452018 9.0160252797750271 ;
	setAttr ".r" -type "double3" -14.549805490486712 0.59999999999844034 2.4849445959822364e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "62C2B949-4A26-85E3-9B30-139A54522D39";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 11.891623797851791;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "8C4194ED-4E0D-4DA9-D257-93B27C592F99";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "ECFA77B2-42DF-7834-FA8E-E286468B6B26";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "CE3E9A52-4B50-6390-7272-588A0CF10060";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1FE18324-4A18-D1B1-FC8C-D59364C4EA80";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "ED4727A9-4FB7-671F-C581-2BAFF2565B9F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5760B671-4332-A0AB-A781-A9ABFADF2604";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "skel";
	rename -uid "63A20D7E-46A8-553C-A02A-90A5DCCCF4D3";
	setAttr ".t" -type "double3" -0.063369909663159696 3.8521120087063281 -0.19422791483994795 ;
createNode joint -n "pos" -p "skel";
	rename -uid "C5BDB216-4AA0-EB38-E7BF-82BBB0DC7360";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -0.063369909663159696 3.8521120087063281 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "cog" -p "pos";
	rename -uid "060627D8-4440-FAFA-A572-498032BDAA25";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90 ;
	setAttr ".bps" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -0.063369909663159696 3.8521120087063281 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "cog";
	rename -uid "A50BF14D-4022-CC23-1812-CDB71F8F168E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.8256662917916322 -4.4408920985006262e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -0.063369909663159252 4.6777783004979607 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|skel|pos|cog|joint2";
	rename -uid "5F6A1AC5-4AA5-AA83-9001-02B422159631";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.94350403442891118 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -0.063369909663159252 5.6212823349268719 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint5" -p "|skel|pos|cog|joint2|joint3";
	rename -uid "F7555021-476E-A72E-4B28-B2AB5B2C526C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.87605325557187896 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -0.063369909663159252 6.4973355904987509 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint6" -p "|skel|pos|cog|joint2|joint3|joint5";
	rename -uid "7B17FE05-4F30-5F30-B5C1-3AB92755A52E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.3217071375157641 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -0.063369909663159252 7.8190427280145149 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint7" -p "|skel|pos|cog|joint2|joint3|joint5";
	rename -uid "222ACD22-4095-53B5-01D3-EA9854E0497A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -1.2434497875801753e-14 0.62304136483457551 0.22950311407026014 ;
	setAttr ".r" -type "double3" 0 0 126.43270207778924 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.80455496714232788 -0.59387819024325839 0 0 0.59387819024325839 -0.80455496714232788 0 0
		 0 0 1 0 -0.68641127449773476 6.4973355904987384 0.035275199230312193 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint6" -p "joint7";
	rename -uid "DF9C8AC8-4127-2535-144E-92B92D59A6E9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 2.0032205149387483 -2.7755575615628914e-16 2.7755575615628914e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.80455496714232788 -0.59387819024325839 0 0 0.59387819024325839 -0.80455496714232788 0 0
		 0 0 1 0 -2.2981122900731168 5.3076666164287465 0.035275199230312221 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint10" -p "|skel|pos|cog|joint2|joint3|joint5|joint7|joint6";
	rename -uid "23DEB356-4186-C102-58C0-5DAB85594581";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 1.675100940150319 -8.8817841970012523e-16 -5.5511151231257827e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.80455496714232788 -0.59387819024325839 0 0 0.59387819024325839 -0.80455496714232788 0 0
		 0 0 1 0 -3.6458230719358395 4.3128607016174954 0.035275199230312165 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint8" -p "|skel|pos|cog|joint2|joint3|joint5";
	rename -uid "8901C7C5-4746-DBE4-D92C-33911C984DA6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0 -0.90023464638159989 0.25274982816857605 ;
	setAttr ".r" -type "double3" 0 0 -132.71922333832427 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.73468702406876385 -0.67840620329193935 -0 0 0.67840620329193935 0.73468702406876385 0 0
		 0 0 1 0 0.83686473671844064 6.4973355904987509 0.058521913328628106 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint6" -p "joint8";
	rename -uid "BF84B88F-4816-14A2-9B3E-92814B9BE679";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.8241350326957835 -8.3266726846886741e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.73468702406876385 -0.67840620329193935 0 0 0.67840620329193935 0.73468702406876385 0 0
		 0 0 1 0 2.1770330753892826 5.2598310686757861 0.058521913328628106 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint9" -p "|skel|pos|cog|joint2|joint3|joint5|joint8|joint6";
	rename -uid "4BF2C98C-448E-948C-5406-CFBFF6202E6D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 1.6022199339774956 9.9920072216264089e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -3.1805546814635168e-15 ;
	setAttr ".bps" -type "matrix" 0.73468702406876385 -0.67840620329193935 0 0 0.67840620329193935 0.73468702406876385 0 0
		 0 0 1 0 3.3541632705868607 4.172875126427452 0.058521913328628106 1;
	setAttr ".radi" 0.5;
createNode joint -n "leg_l" -p "pos";
	rename -uid "7270EADB-4EA1-9F88-4CD2-4480D8740231";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -0.86510085123096658 0 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90 ;
	setAttr ".bps" -type "matrix" -0 -1 0 0 1 0 0 0 0 0 1 0 0.80173094156780689 3.8521120087063272 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "leg_l";
	rename -uid "FC4BD281-4A08-128A-0664-5187202768FB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.9535484152300553 9.9963440303163509e-17 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 -1 0 0 1 0 0 0 0 0 1 0 0.801730941567807 1.8985635934762719 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|skel|pos|leg_l|joint2";
	rename -uid "3F445F3B-48CC-7DCD-EBB0-07839FCF4329";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.7088389302770124 3.4000580129145419e-16 0 ;
	setAttr ".r" -type "double3" 0 -87.146950680605656 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 -0.049774528634421111 0.9987604799446268 0 1 0 0 0
		 0 0.9987604799446268 0.049774528634421111 0 0.80173094156780733 0.18972466319925951 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint5" -p "|skel|pos|leg_l|joint2|joint3";
	rename -uid "74BA92AE-456B-2E17-0D40-C6816B4225EF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.1179979620033083 0 7.8062556418956319e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 -0.049774528634421111 0.9987604799446268 0 1 0 0 0
		 0 0.9987604799446268 0.049774528634421111 0 0.80173094156780733 0.13407684162630149 0.92238426626759074 1;
	setAttr ".radi" 0.5;
createNode joint -n "leg_r" -p "pos";
	rename -uid "30EC8F9D-4A08-3768-C9BB-D69B92D029A8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.3322676295501878e-15 0.7291889124607871 0 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90 ;
	setAttr ".bps" -type "matrix" -0 -1 0 0 1 0 0 0 0 0 1 0 -0.79255882212394679 3.8521120087063268 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "leg_r";
	rename -uid "626AA422-4550-C41F-048E-55995AB8E659";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.9535484152300553 9.9963440303163509e-17 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 -1 0 0 1 0 0 0 0 0 1 0 -0.79255882212394668 1.8985635934762715 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|skel|pos|leg_r|joint2";
	rename -uid "41210FF1-4ECF-3289-A040-33883F6183AC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.7088389302770124 3.4000580129145419e-16 0 ;
	setAttr ".r" -type "double3" 0 -87.146950680605656 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 -0.049774528634421111 0.9987604799446268 0 1 0 0 0
		 0 0.9987604799446268 0.049774528634421111 0 -0.79255882212394635 0.18972466319925907 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint5" -p "|skel|pos|leg_r|joint2|joint3";
	rename -uid "4820AC3A-42A0-8143-4852-089AA54D1C2B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.1179979620033083 0 7.8062556418956319e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 -0.049774528634421111 0.9987604799446268 0 1 0 0 0
		 0 0.9987604799446268 0.049774528634421111 0 -0.79255882212394635 0.13407684162630104 0.92238426626759074 1;
	setAttr ".radi" 0.5;
createNode transform -n "mesh";
	rename -uid "C01E9E25-4318-B91D-5EB0-2A86A47E7F53";
createNode transform -n "SquareMan" -p "mesh";
	rename -uid "15A96069-44AE-36F2-B868-5C988262F914";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.084245681762695312 4.0990289896726608 0.20339464784272754 ;
	setAttr ".sp" -type "double3" -0.084245681762695312 4.0990289896726608 0.20339464784272754 ;
createNode mesh -n "SquareManShape" -p "SquareMan";
	rename -uid "2323021E-4A3E-D1BD-2381-9DBF24F6C5FF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "SquareManShapeOrig" -p "SquareMan";
	rename -uid "53CB1E5E-4641-3103-0924-1A9488FB2150";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[20]" "f[26]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[21]" "f[27]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[18]" "f[24]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[23]" "f[29]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[22]" "f[28]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[19]" "f[25]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 210 ".uvst[0].uvsp[0:209]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 120 ".vt[0:119]"  -1.0088020563 3.69263721 0.65432858 1.0088020563 3.69263721 0.65432858
		 -1.0088020563 4.18600082 0.65432858 1.0088020563 4.18600082 0.65432858 -1.0088020563 4.18600082 -0.65432858
		 1.0088020563 4.18600082 -0.65432858 -1.0088020563 3.69263721 -0.65432858 1.0088020563 3.69263721 -0.65432858
		 -0.77788901 4.36759806 0.50455391 0.77788901 4.36759806 0.50455391 -0.77788901 4.74803209 0.50455391
		 0.77788901 4.74803209 0.50455391 -0.77788901 4.74803209 -0.50455391 0.77788901 4.74803209 -0.50455391
		 -0.77788901 4.36759806 -0.50455391 0.77788901 4.36759806 -0.50455391 -0.88074321 4.85518599 0.57126713
		 0.88074321 4.85518599 0.57126713 -0.88074321 5.33647013 0.57126713 0.88074321 5.33647013 0.57126713
		 -0.88074321 5.33647013 -0.57126713 0.88074321 5.33647013 -0.57126713 -0.88074321 4.85518599 -0.57126713
		 0.88074321 4.85518599 -0.57126713 -1.016473413 5.51373768 0.65930438 1.016473413 5.51373768 0.65930438
		 -1.016473413 6.51373768 0.65930438 1.016473413 6.51373768 0.65930438 -1.016473413 6.51373768 -0.65930438
		 1.016473413 6.51373768 -0.65930438 -1.016473413 5.51373768 -0.65930438 1.016473413 5.51373768 -0.65930438
		 -0.5 7.20387936 0.5 0.5 7.20387936 0.5 -0.5 8.20387936 0.5 0.5 8.20387936 0.5 -0.5 8.20387936 -0.5
		 0.5 8.20387936 -0.5 -0.5 7.20387936 -0.5 0.5 7.20387936 -0.5 2.0096986294 5.048386574 0.5
		 2.39792013 5.5245657 0.5 0.94683105 5.91492558 0.5 1.33505249 6.3911047 0.5 0.94683105 5.91492558 -0.5
		 1.33505249 6.3911047 -0.5 2.0096986294 5.048386574 -0.5 2.39792013 5.5245657 -0.5
		 3.13393259 4.074799061 0.5 3.52215385 4.55097818 0.5 2.071064949 4.94133806 0.5 2.45928621 5.41751719 0.5
		 2.071064949 4.94133806 -0.5 2.45928621 5.41751719 -0.5 3.13393259 4.074799061 -0.5
		 3.52215385 4.55097818 -0.5 -2.49033284 5.53732491 0.5 -2.11052537 5.054408073 0.5
		 -1.41242599 6.3850832 0.5 -1.032618523 5.90216637 0.5 -1.41242599 6.3850832 -0.5
		 -1.032618523 5.90216637 -0.5 -2.49033284 5.53732491 -0.5 -2.11052537 5.054408073 -0.5
		 -3.69064522 4.56373739 0.5 -3.31083775 4.080820084 0.5 -2.61273861 5.41149616 0.5
		 -2.23293114 4.92857885 0.5 -2.61273861 5.41149616 -0.5 -2.23293114 4.92857885 -0.5
		 -3.69064522 4.56373739 -0.5 -3.31083775 4.080820084 -0.5 -1.031046867 2.052680969 0.5
		 -0.41667843 2.056432724 0.5 -1.039420724 3.42399693 0.5 -0.42505229 3.42774868 0.5
		 -1.039420724 3.42399693 -0.5 -0.42505229 3.42774868 -0.5 -1.031046867 2.052680969 -0.5
		 -0.41667843 2.056432724 -0.5 -1.062788248 0.44746822 0.5 -0.44841987 0.45121986 0.5
		 -1.071162224 1.81878424 0.5 -0.45679373 1.82253575 0.5 -1.071162224 1.81878424 -0.5
		 -0.45679373 1.82253575 -0.5 -1.062788248 0.44746822 -0.5 -0.44841987 0.45121986 -0.5
		 0.45436543 0.42723471 0.5 1.068733931 0.43098634 0.5 0.44599158 1.79855061 0.5 1.060359955 1.80230236 0.5
		 0.44599158 1.79855061 -0.5 1.060359955 1.80230236 -0.5 0.45436543 0.42723471 -0.5
		 1.068733931 0.43098634 -0.5 0.48610687 1.99002099 0.5 1.10047531 1.99377275 0.5 0.47773302 3.36133695 0.5
		 1.092101455 3.3650887 0.5 0.47773302 3.36133695 -0.5 1.092101455 3.3650887 -0.5 0.48610687 1.99002099 -0.5
		 1.10047531 1.99377275 -0.5 -1.06587708 -0.005821377 1.066093683 -0.45150864 -0.0020697713 1.066093683
		 -1.068073392 0.35384753 1.066093683 -0.45370495 0.35759914 1.066093683 -1.068073392 0.35384753 -0.52590168
		 -0.45370495 0.35759914 -0.52590168 -1.06587708 -0.005821377 -0.52590168 -0.45150864 -0.0020697713 -0.52590168
		 0.44262862 -0.005821377 1.066093683 1.056997061 -0.0020697713 1.066093683 0.44043231 0.35384753 1.066093683
		 1.054800749 0.35759914 1.066093683 0.44043231 0.35384753 -0.52590168 1.054800749 0.35759914 -0.52590168
		 0.44262862 -0.005821377 -0.52590168 1.056997061 -0.0020697713 -0.52590168;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0
		 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0
		 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0
		 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0 32 34 0 33 35 0
		 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0 46 47 0 40 42 0
		 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0 52 53 0 54 55 0
		 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0 56 57 0 58 59 0 60 61 0
		 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0 62 56 0 63 57 0 64 65 0 66 67 0
		 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 64 0 71 65 0 72 73 0
		 74 75 0 76 77 0 78 79 0 72 74 0 73 75 0 74 76 0 75 77 0 76 78 0 77 79 0 78 72 0 79 73 0
		 80 81 0 82 83 0 84 85 0 86 87 0 80 82 0 81 83 0 82 84 0 83 85 0 84 86 0 85 87 0 86 80 0
		 87 81 0 88 89 0 90 91 0 92 93 0 94 95 0 88 90 0 89 91 0 90 92 0 91 93 0 92 94 0 93 95 0
		 94 88 0 95 89 0 96 97 0 98 99 0 100 101 0 102 103 0 96 98 0 97 99 0 98 100 0 99 101 0
		 100 102 0 101 103 0 102 96 0 103 97 0 104 105 0 106 107 0 108 109 0 110 111 0 104 106 0
		 105 107 0 106 108 0 107 109 0 108 110 0 109 111 0;
	setAttr ".ed[166:179]" 110 104 0 111 105 0 112 113 0 114 115 0 116 117 0 118 119 0
		 112 114 0 113 115 0 114 116 0 115 117 0 116 118 0 117 119 0 118 112 0 119 113 0;
	setAttr -s 90 -ch 360 ".fc[0:89]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69
		f 4 60 65 -62 -65
		mu 0 4 70 71 72 73
		f 4 61 67 -63 -67
		mu 0 4 73 72 74 75
		f 4 62 69 -64 -69
		mu 0 4 75 74 76 77
		f 4 63 71 -61 -71
		mu 0 4 77 76 78 79
		f 4 -72 -70 -68 -66
		mu 0 4 71 80 81 72
		f 4 70 64 66 68
		mu 0 4 82 70 73 83
		f 4 72 77 -74 -77
		mu 0 4 84 85 86 87
		f 4 73 79 -75 -79
		mu 0 4 87 86 88 89
		f 4 74 81 -76 -81
		mu 0 4 89 88 90 91
		f 4 75 83 -73 -83
		mu 0 4 91 90 92 93
		f 4 -84 -82 -80 -78
		mu 0 4 85 94 95 86
		f 4 82 76 78 80
		mu 0 4 96 84 87 97
		f 4 84 89 -86 -89
		mu 0 4 98 99 100 101
		f 4 85 91 -87 -91
		mu 0 4 101 100 102 103
		f 4 86 93 -88 -93
		mu 0 4 103 102 104 105
		f 4 87 95 -85 -95
		mu 0 4 105 104 106 107
		f 4 -96 -94 -92 -90
		mu 0 4 99 108 109 100
		f 4 94 88 90 92
		mu 0 4 110 98 101 111
		f 4 96 101 -98 -101
		mu 0 4 112 113 114 115
		f 4 97 103 -99 -103
		mu 0 4 115 114 116 117
		f 4 98 105 -100 -105
		mu 0 4 117 116 118 119
		f 4 99 107 -97 -107
		mu 0 4 119 118 120 121
		f 4 -108 -106 -104 -102
		mu 0 4 113 122 123 114
		f 4 106 100 102 104
		mu 0 4 124 112 115 125
		f 4 108 113 -110 -113
		mu 0 4 126 127 128 129
		f 4 109 115 -111 -115
		mu 0 4 129 128 130 131
		f 4 110 117 -112 -117
		mu 0 4 131 130 132 133
		f 4 111 119 -109 -119
		mu 0 4 133 132 134 135
		f 4 -120 -118 -116 -114
		mu 0 4 127 136 137 128
		f 4 118 112 114 116
		mu 0 4 138 126 129 139
		f 4 120 125 -122 -125
		mu 0 4 140 141 142 143
		f 4 121 127 -123 -127
		mu 0 4 143 142 144 145
		f 4 122 129 -124 -129
		mu 0 4 145 144 146 147
		f 4 123 131 -121 -131
		mu 0 4 147 146 148 149
		f 4 -132 -130 -128 -126
		mu 0 4 141 150 151 142
		f 4 130 124 126 128
		mu 0 4 152 140 143 153
		f 4 132 137 -134 -137
		mu 0 4 154 155 156 157
		f 4 133 139 -135 -139
		mu 0 4 157 156 158 159
		f 4 134 141 -136 -141
		mu 0 4 159 158 160 161
		f 4 135 143 -133 -143
		mu 0 4 161 160 162 163
		f 4 -144 -142 -140 -138
		mu 0 4 155 164 165 156
		f 4 142 136 138 140
		mu 0 4 166 154 157 167
		f 4 144 149 -146 -149
		mu 0 4 168 169 170 171
		f 4 145 151 -147 -151
		mu 0 4 171 170 172 173
		f 4 146 153 -148 -153
		mu 0 4 173 172 174 175
		f 4 147 155 -145 -155
		mu 0 4 175 174 176 177
		f 4 -156 -154 -152 -150
		mu 0 4 169 178 179 170
		f 4 154 148 150 152
		mu 0 4 180 168 171 181
		f 4 156 161 -158 -161
		mu 0 4 182 183 184 185
		f 4 157 163 -159 -163
		mu 0 4 185 184 186 187
		f 4 158 165 -160 -165
		mu 0 4 187 186 188 189
		f 4 159 167 -157 -167
		mu 0 4 189 188 190 191
		f 4 -168 -166 -164 -162
		mu 0 4 183 192 193 184
		f 4 166 160 162 164
		mu 0 4 194 182 185 195
		f 4 168 173 -170 -173
		mu 0 4 196 197 198 199
		f 4 169 175 -171 -175
		mu 0 4 199 198 200 201
		f 4 170 177 -172 -177
		mu 0 4 201 200 202 203
		f 4 171 179 -169 -179
		mu 0 4 203 202 204 205
		f 4 -180 -178 -176 -174
		mu 0 4 197 206 207 198
		f 4 178 172 174 176
		mu 0 4 208 196 199 209;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2DB3D70F-467B-027A-DF8F-72AE3089A873";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7D70FA38-4DFB-92BA-F26B-76AB28A4C55F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "867938BC-4B58-46D7-2286-1688A935F454";
createNode displayLayerManager -n "layerManager";
	rename -uid "CA53DA8E-42BA-F676-5826-52ADE602B398";
createNode displayLayer -n "defaultLayer";
	rename -uid "5F8C796E-46B2-0CC9-8843-2E900652128F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "60077B89-440F-4740-E435-4090087EFFB6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F30D049A-42FE-CFE4-1BBC-DABB85491F4B";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C74144F2-459D-A1C2-2109-8BA2435B46E5";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 924\n            -height 740\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 924\n            -height 740\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n"
		+ "            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 924\\n    -height 740\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 924\\n    -height 740\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 70 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "76CD0C3D-44CD-258F-DFE3-0EB600A8A695";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode skinCluster -n "skinCluster1";
	rename -uid "E6A0D4D2-442D-0752-9CDC-10BA868BF17A";
	setAttr -s 120 ".wl";
	setAttr ".wl[0:99].w"
		5 0 0.20109514412842666 1 0.20109514412842666 2 0.19656983480786708 
		16 0.20888171918448226 17 0.19235815775079737
		5 0 0.20038974705807719 1 0.20038974705807719 2 0.19637654994897949 
		12 0.20971630607244571 16 0.19312764986242037
		5 0 0.19983399493047896 1 0.20050250735007924 2 0.19910753957399357 
		6 0.19386019065245036 16 0.20669576749299784
		5 0 0.19907089878449419 1 0.19964822871857102 2 0.19843757359677255 
		9 0.19546314504848891 12 0.20738015385167333
		5 0 0.19942495137165686 1 0.20038522585039634 2 0.19841285919269669 
		3 0.19011734261007698 16 0.21165962097517327
		5 0 0.19854273772077652 1 0.19932570068392816 2 0.19770252622841136 
		9 0.19157448816577172 12 0.21285454720111224
		5 0 0.20031749520795175 1 0.20031749520795175 2 0.19432541926381855 
		16 0.21566130587444843 17 0.18937828444582958
		5 0 0.19927633224410243 1 0.19927633224410243 2 0.19416476075358363 
		12 0.21690224296888297 16 0.19038033178932856
		5 0 0.20374641673012989 1 0.20090212056113829 2 0.1999804641597818 
		3 0.19162748891808218 16 0.20374350963086801
		5 0 0.20459793161787754 1 0.19993261625883013 2 0.19916065240946662 
		3 0.19171857709868162 12 0.20459022261514401
		5 0 0.19959491827213757 1 0.2021219943737135 2 0.20217181540416695 
		3 0.19651801714651981 16 0.19959325480346216
		5 0 0.2005258857171352 1 0.20125191300440493 2 0.20129335722291 
		9 0.19640737208165437 12 0.20052147197389547
		5 0 0.19926515867184466 1 0.20313705465473084 2 0.20321934567635411 
		3 0.19511566710390876 16 0.19926277389316152
		5 0 0.20066350001223829 1 0.20172492483917392 2 0.20178666102043649 
		3 0.19516775616184559 12 0.20065715796630568
		5 0 0.20593053519047988 1 0.20068003115743027 2 0.19920879247102777 
		3 0.18825622472903866 16 0.20592441645202347
		5 0 0.20718910287861927 1 0.19908599648783792 2 0.19796405234839345 
		3 0.1885879978862631 12 0.20717285039888619
		5 1 0.20171411764108799 2 0.20196426786115407 3 0.19812456005165222 
		6 0.19867727059003057 16 0.19951978385607522
		5 1 0.20087432890075008 2 0.20108616716549402 3 0.19775074992246036 
		9 0.19999285269916575 12 0.20029590131212982
		5 1 0.19778582277983778 2 0.20074601393425578 3 0.20011788808078473 
		4 0.19787586590767298 6 0.20347440929744873
		5 1 0.19732261462568232 2 0.19987953982181733 3 0.19934603537107928 
		4 0.19900686119308944 9 0.20444494898833168
		5 1 0.19878342835063109 2 0.20309178293270838 3 0.20212520396764569 
		4 0.19540709946594273 6 0.20059248528307211
		5 1 0.19845002939790993 2 0.20195873770540904 3 0.20119717642254459 
		4 0.19682430269930387 9 0.20156975377483269
		5 0 0.19544794889612327 1 0.20311088655593632 2 0.203498266675294 
		3 0.19802934217889179 16 0.19991355569375455
		5 1 0.20196660587764906 2 0.20226976865810797 3 0.19777227238611853 
		9 0.1968386522858902 12 0.20115270079223432
		5 2 0.19866362997605749 3 0.19859370514982569 4 0.19976333564323015 
		6 0.20665488885424316 7 0.19632444037664357
		5 2 0.19727162177124341 3 0.19721159966399171 4 0.20056387447313084 
		9 0.20702213845633002 10 0.19793076563530407
		5 2 0.19316560042102132 3 0.19703141463141222 4 0.20909896031520339 
		5 0.19012897172957269 6 0.21057505290279038
		5 2 0.19187437273654734 3 0.19526948774803285 4 0.21123585738590983 
		9 0.21163558592150722 10 0.18998469620800282
		5 2 0.19472245380481826 3 0.20000338677664131 4 0.20653380706280791 
		5 0.19099255287871333 6 0.20774779947701932
		5 2 0.19416812681364318 3 0.19863414390512216 4 0.20805377953456325 
		5 0.19081745320812138 9 0.20832649653855018
		5 1 0.19623335648739726 2 0.20103265232609402 3 0.2009298407399652 
		4 0.19777815169096752 6 0.20402599875557589
		5 2 0.19993509471950099 3 0.19985181959484299 4 0.19902417439064252 
		9 0.20454522588324256 10 0.19664368541177099
		5 3 0.1992289858180423 4 0.20483655156573385 5 0.20031552334995409 
		6 0.20372504657387547 9 0.19189389269239429
		5 3 0.19875096080413693 4 0.20407178259174413 5 0.19972348018418348 
		6 0.19392649516456084 9 0.20352728125537453
		5 3 0.1944074744889896 4 0.20927993643868853 5 0.20927993643868842 
		6 0.19562831829361549 9 0.19140433434001802
		5 3 0.19461090476096329 4 0.20836169422747153 5 0.20836169422747142 
		6 0.19266931500315126 9 0.19599639178094252
		5 3 0.19276661848514651 4 0.21304864993546921 5 0.21304864993546921 
		6 0.19265534739598481 9 0.18848073424793033
		5 3 0.19342250529323643 4 0.21145345582394817 5 0.21145345582394817 
		6 0.19029030209626921 9 0.19338028096259802
		5 3 0.20000334421118154 4 0.21040601458534158 5 0.20168491551150594 
		6 0.19954081580922853 9 0.18836490988274235
		5 3 0.19984464007911285 4 0.20795088185596813 5 0.2012724362171262 
		6 0.19124574358975577 9 0.19968629825803702
		5 4 0.18874112472212978 9 0.21514135741644808 10 0.21515827515473371 
		11 0.19141810397851111 12 0.18954113872817735
		5 4 0.19066808817500963 9 0.21535259373676785 10 0.21534230108764754 
		11 0.19256171921362908 12 0.1860752977869459
		5 2 0.19506998971308695 3 0.19561503183987533 4 0.20576660157043281 
		9 0.21135095330453171 10 0.1921974235720732
		5 2 0.19021955358526388 3 0.19230071506341179 4 0.20914984912223053 
		9 0.21496853221377463 10 0.19336135001531915
		5 2 0.19783145501440302 3 0.19857027623544724 4 0.20381760169798971 
		9 0.20808773128060115 10 0.19169293577155894
		5 2 0.19226501665547327 3 0.19472268438143259 4 0.20756142109631037 
		9 0.21185241322717005 10 0.19359846463961383
		5 4 0.18982491787107889 9 0.21282076227792721 10 0.21283240237924378 
		11 0.19242098298577337 12 0.19210093448597679
		5 4 0.19166773086585806 9 0.2134178057094136 10 0.21341037758658357 
		11 0.1935045350828534 12 0.18799955075529137
		5 9 0.19480126916974463 10 0.21890345777356338 11 0.21850402677769074 
		12 0.18655899372901785 13 0.1812322525499834
		5 4 0.18287270562773431 9 0.19708010959184541 10 0.21751833724888789 
		11 0.21697964575958839 12 0.18554920177194395
		5 4 0.18797255499320348 9 0.21406393159876508 10 0.21475134996163459 
		11 0.19303874368178772 12 0.19017341976460919
		5 4 0.18925641474939064 9 0.21542760507426867 10 0.21579671609951909 
		11 0.19356793507939316 12 0.18595132899742831
		5 4 0.18895061693911427 9 0.21203148296727098 10 0.21252006697049147 
		11 0.19385770536907032 12 0.19264012775405287
		5 4 0.19035511333637303 9 0.21344112372016702 10 0.21370272060090154 
		11 0.19453522778643501 12 0.18796581455612346
		5 9 0.1958943961156869 10 0.21635187034685988 11 0.21608344118361753 
		12 0.18866661187618877 13 0.18300368047764698
		5 4 0.18392150853286146 9 0.19786152442735347 10 0.21573246343669622 
		11 0.21532995708298741 12 0.18715454652010147
		5 4 0.18916484366802921 6 0.21612757628996923 7 0.21613937491047724 
		8 0.19264336299038295 16 0.18592484214114136
		5 4 0.18851664340480861 6 0.21489115579369375 7 0.21489114660522535 
		8 0.19161344185371881 16 0.1900876123425535
		5 2 0.19196279925792564 3 0.19414322045342297 4 0.20526271569457294 
		6 0.21387497655937443 7 0.19475628803470413
		5 2 0.19571285075465436 3 0.19624218755766856 4 0.20346229281065698 
		6 0.21245213339052993 7 0.19213053548649023
		5 2 0.19337138669600185 3 0.19596156971079798 4 0.20436524164873729 
		6 0.2118423205860907 7 0.19445948135837215
		5 2 0.19816761998312513 3 0.1988982550273197 4 0.20196529383941569 
		6 0.20962762139545452 7 0.19134120975468505
		5 4 0.18981829019753693 6 0.21480494638502723 7 0.2148144727378283 
		8 0.1932418768517857 16 0.18732041382782191
		5 2 0.18924621709522443 6 0.21345218286852721 7 0.21345217541040248 
		8 0.19204708539015553 16 0.19180233923569032
		5 4 0.18105571466296105 6 0.19581207469327097 7 0.21981444669689529 
		8 0.21930441320936758 16 0.18401335073750516
		5 1 0.1829886540863902 6 0.19615896747740943 7 0.21699684952592765 
		8 0.21649321422152554 16 0.18736231468874703
		5 4 0.18766711280600568 6 0.215351374169963 7 0.21664088492479891 
		8 0.19452667757971537 16 0.1858139505195171
		5 4 0.18740026345103941 6 0.21377867260606875 7 0.21469451185473676 
		8 0.19379329748160917 16 0.19033325460654596
		5 4 0.18833959265393768 6 0.21416178012304471 7 0.21520379356642683 
		8 0.19508504422858358 16 0.18720978942800712
		5 2 0.18840558033908666 6 0.21245148905565084 7 0.213208184465876 
		8 0.19404324558733543 16 0.19189150055205101
		5 4 0.18189915356712058 6 0.19652474693474331 7 0.21833367598850378 
		8 0.21793057797012455 16 0.18531184553950772
		5 1 0.18388925083393254 6 0.19652190096431033 7 0.21575782454004688 
		8 0.21533659594151103 16 0.18849442772019928
		5 12 0.19207629096223541 13 0.19201709482788304 16 0.21189640193662265 
		17 0.21143986405220996 18 0.19257034822104899
		5 0 0.19054573768911956 12 0.19668106050726919 13 0.19655724802472452 
		16 0.20831197521058623 17 0.20790397856830059
		5 0 0.20010569669718339 1 0.20010569669718339 2 0.19400075634167083 
		16 0.21133501161363508 17 0.19445283865032736
		5 0 0.20477801171980595 1 0.20294009076051439 2 0.19295278873800364 
		12 0.1938286994249209 16 0.20550040935675509
		5 0 0.19850308752886214 1 0.19850308752886214 2 0.19114073263675857 
		16 0.220198961310237 17 0.1916541309952802
		5 0 0.20765676831870181 1 0.2036385922567869 2 0.18905821131250697 
		12 0.19011431808599497 16 0.20953211002600933
		5 12 0.18768789121440418 13 0.18762356280769607 16 0.21952545005227272 
		17 0.21792160786929507 18 0.18724148805633212
		5 0 0.18683417902052066 12 0.19390735952740479 13 0.19375549040880571 
		16 0.21328808291756216 17 0.2122148881257066
		5 14 0.18506142877600698 16 0.1877799660059539 17 0.20308832312780697 
		18 0.21623598658855184 19 0.20783429550168039
		5 14 0.19121031085900056 15 0.19016341438892712 17 0.20112608625810502 
		18 0.21218201842418105 19 0.20531817006978628
		5 13 0.19099526894434091 16 0.21058678535152728 17 0.21070590695685543 
		18 0.19427411244223716 19 0.19343792630503934
		5 12 0.19561954963634492 13 0.19564688060560842 16 0.2081148795250625 
		17 0.20821555652869855 18 0.19240313370428566
		5 12 0.18728097774311173 13 0.18729751372932088 16 0.21771929203126889 
		17 0.21811721446961038 18 0.18958500202668799
		5 12 0.19254370977799393 13 0.19257683075106188 16 0.21355871080842606 
		17 0.21385407285684113 18 0.18746667580567702
		5 13 0.18659055002495098 16 0.19085357904430475 17 0.21749497793630115 
		18 0.21387463153742292 19 0.19118626145702025
		5 13 0.19289680748010032 14 0.19250703510237083 17 0.21378317318379109 
		18 0.21081484356089411 19 0.18999814067284376
		5 13 0.20086061662713742 14 0.21254375947583498 15 0.20541068793042919 
		18 0.19111950704376376 19 0.19006542892283465
		5 12 0.18741767346867905 13 0.20290342007180209 14 0.21679022739885054 
		15 0.20796904134203323 18 0.18491963771863504
		5 12 0.20777988761698782 13 0.20794934302520937 14 0.19259847123927537 
		16 0.19581191709222431 17 0.19586038102630318
		5 12 0.21053034081029345 13 0.21070665281106749 14 0.1943123143929866 
		15 0.19345984382177661 17 0.19099084816387601
		5 12 0.21285799651507151 13 0.21333163956438267 14 0.18782714166056352 
		16 0.19296204883883555 17 0.19302117342114694
		5 12 0.21781884668740242 13 0.21843142187589298 14 0.18946181147757316 
		16 0.18713168368314809 17 0.18715623627598338
		5 13 0.21357017384888871 14 0.21108794967954281 15 0.18996095354616746 
		17 0.19285256622287864 18 0.19252835670252247
		5 12 0.19057097478743423 13 0.2175061786619725 14 0.21424123991449878 
		15 0.19114759252851102 17 0.18653401410758338
		5 12 0.20882464551720481 13 0.20867559718494871 14 0.19101607901509718 
		16 0.19576113644136284 17 0.19572254184138649
		5 12 0.21141239200504486 13 0.21124602210541696 14 0.19319981712840242 
		15 0.19248947969465263 16 0.1916522890664831
		5 0 0.20485629758839621 1 0.20140227118562434 2 0.19250245953160508 
		12 0.20700050142101328 16 0.19423847027336114
		5 0 0.19897244180536144 1 0.19897244180536144 2 0.19363067771110909 
		12 0.21221427861773842 13 0.19621016006042957;
	setAttr ".wl[100:119].w"
		5 0 0.20708305798553589 1 0.20067188611859649 2 0.18881886450644697 
		12 0.21255444702283585 16 0.19087174436658463
		5 0 0.19722397411029255 1 0.19722397411029255 2 0.19103510890174535 
		12 0.22056818742414078 13 0.19394875545352888
		5 12 0.2147747719829057 13 0.21431991541767118 14 0.18598713966495661 
		16 0.1924823139636149 17 0.19243585897085153
		5 12 0.2182321469695544 13 0.21770452776203569 14 0.18845162402414425 
		16 0.18781741092697696 17 0.18779429031728861
		5 14 0.18482149302202966 15 0.18482149302202966 17 0.19168597087822306 
		18 0.21933552153885877 19 0.21933552153885877
		5 14 0.19069415891374192 15 0.19069415891374192 17 0.18994577895194972 
		18 0.21433295161028323 19 0.21433295161028323
		5 14 0.18565897772585629 15 0.18565897772585629 17 0.19286696001774978 
		18 0.21790754226526887 19 0.21790754226526876
		5 14 0.19123869467021545 15 0.19123869467021545 17 0.19091640395837889 
		18 0.2133031033505951 19 0.2133031033505951
		5 13 0.18679883299376895 16 0.1899819840917131 17 0.2166509972816745 
		18 0.21519025900296837 19 0.1913779266298751
		5 13 0.19267624456827798 14 0.19251662248531695 17 0.21309832022523725 
		18 0.21184376726819595 19 0.18986504545297195
		5 13 0.18778520629864912 14 0.18778520629864912 17 0.21591536966357744 
		18 0.21591536966357733 19 0.19259884807554706
		5 13 0.19291413613333488 14 0.19291413613333488 17 0.21188536648481132 
		18 0.21188536648481154 19 0.19040099476370723
		5 13 0.19012626218077253 14 0.21372050195645539 15 0.21372050195645539 
		18 0.19121636695315838 19 0.19121636695315838
		5 13 0.19126124073119283 14 0.2198373348143878 15 0.2198373348143878 
		18 0.18453204482001581 19 0.18453204482001581
		5 13 0.19101257385937409 14 0.21273023378753314 15 0.21273023378753314 
		18 0.19176347928277981 19 0.19176347928277981
		5 13 0.19253277228391863 14 0.21824755381479866 15 0.21824755381479866 
		18 0.18548606004324206 19 0.18548606004324206
		5 13 0.21253153006828901 14 0.21140658242051089 15 0.18994199188693031 
		17 0.19313904230364429 18 0.19298085332062556
		5 12 0.18976220557493792 13 0.21701566015705273 14 0.215393369660933 
		15 0.19111301952350879 17 0.18671574508356759
		5 13 0.21147444577104207 14 0.21147444577104185 15 0.190469974468329 
		17 0.19329056699479355 18 0.19329056699479355
		5 13 0.21613837582316528 14 0.21613837582316528 15 0.19235737382464208 
		17 0.18768293726451363 18 0.18768293726451363;
	setAttr -s 20 ".pm";
	setAttr ".pm[0]" -type "matrix" 0 -1 0 -0 1 0 -0 0 0 -0 1 -0 -3.8521120087063281 -0.063369909663159696 0.19422791483994795 1;
	setAttr ".pm[1]" -type "matrix" 0 -1 0 -0 1 0 -0 0 0 -0 1 -0 -3.8521120087063281 -0.063369909663159696 0.19422791483994795 1;
	setAttr ".pm[2]" -type "matrix" 0 -1 0 -0 1 0 -0 0 0 -0 1 -0 -4.6777783004979607 -0.063369909663159252 0.19422791483994795 1;
	setAttr ".pm[3]" -type "matrix" 0 -1 0 -0 1 0 -0 0 0 -0 1 -0 -5.6212823349268719 -0.063369909663159252 0.19422791483994795 1;
	setAttr ".pm[4]" -type "matrix" 0 -1 0 -0 1 0 -0 0 0 -0 1 -0 -6.4973355904987509 -0.063369909663159252 0.19422791483994795 1;
	setAttr ".pm[5]" -type "matrix" 0 -1 0 -0 1 0 -0 0 0 -0 1 -0 -7.8190427280145149 -0.063369909663159252 0.19422791483994795 1;
	setAttr ".pm[6]" -type "matrix" -0.80455496714232788 0.59387819024325839 0 -0 -0.59387819024325839 -0.80455496714232788 -0 0
		 0 -0 1 -0 3.306370301488855 5.6351083079876734 -0.035275199230312193 1;
	setAttr ".pm[7]" -type "matrix" -0.80455496714232788 0.59387819024325839 0 -0 -0.59387819024325839 -0.80455496714232788 -0 0
		 0 -0 1 -0 1.3031497865501063 5.6351083079876734 -0.035275199230312228 1;
	setAttr ".pm[8]" -type "matrix" -0.80455496714232788 0.59387819024325839 0 -0 -0.59387819024325839 -0.80455496714232788 -0 0
		 0 -0 1 -0 -0.37195115360021269 5.6351083079876743 -0.035275199230312165 1;
	setAttr ".pm[9]" -type "matrix" 0.73468702406876352 0.67840620329193901 0 -0 -0.67840620329193901 0.73468702406876352 -0 0
		 0 -0 1 -0 3.7929991064960857 -5.3412423780656546 -0.05852191332862812 1;
	setAttr ".pm[10]" -type "matrix" 0.73468702406876352 0.67840620329193901 0 -0 -0.67840620329193901 0.73468702406876352 -0 0
		 0 -0 1 -0 1.968864073800302 -5.3412423780656537 -0.05852191332862812 1;
	setAttr ".pm[11]" -type "matrix" 0.73468702406876352 0.67840620329193901 0 -0 -0.67840620329193901 0.73468702406876352 -0 0
		 0 -0 1 -0 0.36664413982280647 -5.3412423780656555 -0.05852191332862812 1;
	setAttr ".pm[12]" -type "matrix" 0 1 -0 -0 -1 -0 0 0 0 -0 1 -0 3.8521120087063272 -0.80173094156780689 0.19422791483994795 1;
	setAttr ".pm[13]" -type "matrix" 0 1 -0 -0 -1 0 -0 0 0 -0 1 -0 1.8985635934762719 -0.801730941567807 0.19422791483994795 1;
	setAttr ".pm[14]" -type "matrix" 0 1 -0 -0 -0.049774528634421111 0 0.9987604799446268 0
		 0.9987604799446268 -0 0.049774528634421111 -0 0.20343062112525795 -0.80173094156780744 -0.17982189276542021 1;
	setAttr ".pm[15]" -type "matrix" 0 1 0 -0 -0.049774528634421111 0 0.9987604799446268 0
		 0.9987604799446268 -0 0.049774528634421111 -0 -0.91456734087805036 -0.80173094156780744 -0.17982189276542029 1;
	setAttr ".pm[16]" -type "matrix" 0 1 -0 -0 -1 0 0 0 0 -0 1 -0 3.8521120087063268 0.79255882212394679 0.19422791483994795 1;
	setAttr ".pm[17]" -type "matrix" 0 1 -0 -0 -1 0 -0 0 0 -0 1 -0 1.8985635934762715 0.79255882212394668 0.19422791483994795 1;
	setAttr ".pm[18]" -type "matrix" 0 1 -0 -0 -0.049774528634421111 0 0.9987604799446268 0
		 0.9987604799446268 -0 0.049774528634421111 -0 0.20343062112525792 0.79255882212394646 -0.17982189276541977 1;
	setAttr ".pm[19]" -type "matrix" 0 1 0 -0 -0.049774528634421111 0 0.9987604799446268 0
		 0.9987604799446268 -0 0.049774528634421111 -0 -0.91456734087805036 0.79255882212394646 -0.17982189276541985 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 20 ".ma";
	setAttr -s 20 ".dpf[0:19]"  0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 
		0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1;
	setAttr -s 20 ".lw";
	setAttr -s 20 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 20 ".ifcl";
	setAttr -s 20 ".ifcl";
createNode groupId -n "groupId1";
	rename -uid "D65E68AE-43B9-DF8F-DF4C-CE8BCD548F91";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "F947374B-431C-FD2E-9515-D890E896D76C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:89]";
createNode dagPose -n "bindPose1";
	rename -uid "A9227914-488A-6A10-DF25-7289857CB8A2";
	setAttr -s 21 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.063369909663159696 3.8521120087063281 -0.19422791483994795 1;
	setAttr -s 21 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.063369909663159696
		 3.8521120087063281 -0.19422791483994795 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 1.5707963267948966 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 1.5707963267948966 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654757 0.70710678118654757 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.8256662917916322 -4.4408920985006262e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.94350403442891118 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.87605325557187896 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3217071375157641 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 2.206666933450498 0 -1.2434497875801753e-14
		 0.62304136483457551 0.22950311407026014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0032205149387483 -2.7755575615628914e-16
		 2.7755575615628914e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.675100940150319 -8.8817841970012523e-16
		 -5.5511151231257827e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 -2.3163874279434586 0 0 -0.90023464638159989
		 0.25274982816857605 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.8241350326957835 -8.3266726846886741e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.6022199339774956 9.9920072216264089e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 -1.5707963267948966 0 -8.8817841970012523e-16
		 -0.86510085123096658 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654757 0.70710678118654757 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.9535484152300553 9.9963440303163509e-17
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 -1.5210012224496818 0 0 1.7088389302770124
		 3.4000580129145419e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1179979620033083 0
		 7.8062556418956319e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 -1.5707963267948966 0 -1.3322676295501878e-15
		 0.7291889124607871 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654757 0.70710678118654757 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.9535484152300553 9.9963440303163509e-17
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 -1.5210012224496818 0 0 1.7088389302770124
		 3.4000580129145419e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1179979620033083 0
		 7.8062556418956319e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 21 ".m";
	setAttr -s 21 ".p";
	setAttr -s 21 ".g[0:20]" yes no no no no no no no no no no no no no 
		no no no no no no no;
	setAttr ".bp" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".wsn" -type "string" "ACEScg";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "pos.s" "cog.is";
connectAttr "cog.s" "|skel|pos|cog|joint2.is";
connectAttr "|skel|pos|cog|joint2.s" "|skel|pos|cog|joint2|joint3.is";
connectAttr "|skel|pos|cog|joint2|joint3.s" "|skel|pos|cog|joint2|joint3|joint5.is"
		;
connectAttr "|skel|pos|cog|joint2|joint3|joint5.s" "|skel|pos|cog|joint2|joint3|joint5|joint6.is"
		;
connectAttr "|skel|pos|cog|joint2|joint3|joint5.s" "joint7.is";
connectAttr "joint7.s" "|skel|pos|cog|joint2|joint3|joint5|joint7|joint6.is";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint7|joint6.s" "joint10.is";
connectAttr "|skel|pos|cog|joint2|joint3|joint5.s" "joint8.is";
connectAttr "joint8.s" "|skel|pos|cog|joint2|joint3|joint5|joint8|joint6.is";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint8|joint6.s" "joint9.is";
connectAttr "pos.s" "leg_l.is";
connectAttr "leg_l.s" "|skel|pos|leg_l|joint2.is";
connectAttr "|skel|pos|leg_l|joint2.s" "|skel|pos|leg_l|joint2|joint3.is";
connectAttr "|skel|pos|leg_l|joint2|joint3.s" "|skel|pos|leg_l|joint2|joint3|joint5.is"
		;
connectAttr "pos.s" "leg_r.is";
connectAttr "leg_r.s" "|skel|pos|leg_r|joint2.is";
connectAttr "|skel|pos|leg_r|joint2.s" "|skel|pos|leg_r|joint2|joint3.is";
connectAttr "|skel|pos|leg_r|joint2|joint3.s" "|skel|pos|leg_r|joint2|joint3|joint5.is"
		;
connectAttr "skinCluster1.og[0]" "SquareManShape.i";
connectAttr "groupId1.id" "SquareManShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SquareManShape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "SquareManShapeOrig.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "pos.wm" "skinCluster1.ma[0]";
connectAttr "cog.wm" "skinCluster1.ma[1]";
connectAttr "|skel|pos|cog|joint2.wm" "skinCluster1.ma[2]";
connectAttr "|skel|pos|cog|joint2|joint3.wm" "skinCluster1.ma[3]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5.wm" "skinCluster1.ma[4]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint6.wm" "skinCluster1.ma[5]";
connectAttr "joint7.wm" "skinCluster1.ma[6]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint7|joint6.wm" "skinCluster1.ma[7]"
		;
connectAttr "joint10.wm" "skinCluster1.ma[8]";
connectAttr "joint8.wm" "skinCluster1.ma[9]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint8|joint6.wm" "skinCluster1.ma[10]"
		;
connectAttr "joint9.wm" "skinCluster1.ma[11]";
connectAttr "leg_l.wm" "skinCluster1.ma[12]";
connectAttr "|skel|pos|leg_l|joint2.wm" "skinCluster1.ma[13]";
connectAttr "|skel|pos|leg_l|joint2|joint3.wm" "skinCluster1.ma[14]";
connectAttr "|skel|pos|leg_l|joint2|joint3|joint5.wm" "skinCluster1.ma[15]";
connectAttr "leg_r.wm" "skinCluster1.ma[16]";
connectAttr "|skel|pos|leg_r|joint2.wm" "skinCluster1.ma[17]";
connectAttr "|skel|pos|leg_r|joint2|joint3.wm" "skinCluster1.ma[18]";
connectAttr "|skel|pos|leg_r|joint2|joint3|joint5.wm" "skinCluster1.ma[19]";
connectAttr "pos.liw" "skinCluster1.lw[0]";
connectAttr "cog.liw" "skinCluster1.lw[1]";
connectAttr "|skel|pos|cog|joint2.liw" "skinCluster1.lw[2]";
connectAttr "|skel|pos|cog|joint2|joint3.liw" "skinCluster1.lw[3]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5.liw" "skinCluster1.lw[4]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint6.liw" "skinCluster1.lw[5]"
		;
connectAttr "joint7.liw" "skinCluster1.lw[6]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint7|joint6.liw" "skinCluster1.lw[7]"
		;
connectAttr "joint10.liw" "skinCluster1.lw[8]";
connectAttr "joint8.liw" "skinCluster1.lw[9]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint8|joint6.liw" "skinCluster1.lw[10]"
		;
connectAttr "joint9.liw" "skinCluster1.lw[11]";
connectAttr "leg_l.liw" "skinCluster1.lw[12]";
connectAttr "|skel|pos|leg_l|joint2.liw" "skinCluster1.lw[13]";
connectAttr "|skel|pos|leg_l|joint2|joint3.liw" "skinCluster1.lw[14]";
connectAttr "|skel|pos|leg_l|joint2|joint3|joint5.liw" "skinCluster1.lw[15]";
connectAttr "leg_r.liw" "skinCluster1.lw[16]";
connectAttr "|skel|pos|leg_r|joint2.liw" "skinCluster1.lw[17]";
connectAttr "|skel|pos|leg_r|joint2|joint3.liw" "skinCluster1.lw[18]";
connectAttr "|skel|pos|leg_r|joint2|joint3|joint5.liw" "skinCluster1.lw[19]";
connectAttr "pos.obcc" "skinCluster1.ifcl[0]";
connectAttr "cog.obcc" "skinCluster1.ifcl[1]";
connectAttr "|skel|pos|cog|joint2.obcc" "skinCluster1.ifcl[2]";
connectAttr "|skel|pos|cog|joint2|joint3.obcc" "skinCluster1.ifcl[3]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5.obcc" "skinCluster1.ifcl[4]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint6.obcc" "skinCluster1.ifcl[5]"
		;
connectAttr "joint7.obcc" "skinCluster1.ifcl[6]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint7|joint6.obcc" "skinCluster1.ifcl[7]"
		;
connectAttr "joint10.obcc" "skinCluster1.ifcl[8]";
connectAttr "joint8.obcc" "skinCluster1.ifcl[9]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint8|joint6.obcc" "skinCluster1.ifcl[10]"
		;
connectAttr "joint9.obcc" "skinCluster1.ifcl[11]";
connectAttr "leg_l.obcc" "skinCluster1.ifcl[12]";
connectAttr "|skel|pos|leg_l|joint2.obcc" "skinCluster1.ifcl[13]";
connectAttr "|skel|pos|leg_l|joint2|joint3.obcc" "skinCluster1.ifcl[14]";
connectAttr "|skel|pos|leg_l|joint2|joint3|joint5.obcc" "skinCluster1.ifcl[15]";
connectAttr "leg_r.obcc" "skinCluster1.ifcl[16]";
connectAttr "|skel|pos|leg_r|joint2.obcc" "skinCluster1.ifcl[17]";
connectAttr "|skel|pos|leg_r|joint2|joint3.obcc" "skinCluster1.ifcl[18]";
connectAttr "|skel|pos|leg_r|joint2|joint3|joint5.obcc" "skinCluster1.ifcl[19]";
connectAttr "SquareManShapeOrig.w" "skinCluster1GroupParts.ig";
connectAttr "groupId1.id" "skinCluster1GroupParts.gi";
connectAttr "skel.msg" "bindPose1.m[0]";
connectAttr "pos.msg" "bindPose1.m[1]";
connectAttr "cog.msg" "bindPose1.m[2]";
connectAttr "|skel|pos|cog|joint2.msg" "bindPose1.m[3]";
connectAttr "|skel|pos|cog|joint2|joint3.msg" "bindPose1.m[4]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5.msg" "bindPose1.m[5]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint6.msg" "bindPose1.m[6]";
connectAttr "joint7.msg" "bindPose1.m[7]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint7|joint6.msg" "bindPose1.m[8]"
		;
connectAttr "joint10.msg" "bindPose1.m[9]";
connectAttr "joint8.msg" "bindPose1.m[10]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint8|joint6.msg" "bindPose1.m[11]"
		;
connectAttr "joint9.msg" "bindPose1.m[12]";
connectAttr "leg_l.msg" "bindPose1.m[13]";
connectAttr "|skel|pos|leg_l|joint2.msg" "bindPose1.m[14]";
connectAttr "|skel|pos|leg_l|joint2|joint3.msg" "bindPose1.m[15]";
connectAttr "|skel|pos|leg_l|joint2|joint3|joint5.msg" "bindPose1.m[16]";
connectAttr "leg_r.msg" "bindPose1.m[17]";
connectAttr "|skel|pos|leg_r|joint2.msg" "bindPose1.m[18]";
connectAttr "|skel|pos|leg_r|joint2|joint3.msg" "bindPose1.m[19]";
connectAttr "|skel|pos|leg_r|joint2|joint3|joint5.msg" "bindPose1.m[20]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[5]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[5]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[1]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[1]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "pos.bps" "bindPose1.wm[1]";
connectAttr "cog.bps" "bindPose1.wm[2]";
connectAttr "|skel|pos|cog|joint2.bps" "bindPose1.wm[3]";
connectAttr "|skel|pos|cog|joint2|joint3.bps" "bindPose1.wm[4]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5.bps" "bindPose1.wm[5]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint6.bps" "bindPose1.wm[6]";
connectAttr "joint7.bps" "bindPose1.wm[7]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint7|joint6.bps" "bindPose1.wm[8]"
		;
connectAttr "joint10.bps" "bindPose1.wm[9]";
connectAttr "joint8.bps" "bindPose1.wm[10]";
connectAttr "|skel|pos|cog|joint2|joint3|joint5|joint8|joint6.bps" "bindPose1.wm[11]"
		;
connectAttr "joint9.bps" "bindPose1.wm[12]";
connectAttr "leg_l.bps" "bindPose1.wm[13]";
connectAttr "|skel|pos|leg_l|joint2.bps" "bindPose1.wm[14]";
connectAttr "|skel|pos|leg_l|joint2|joint3.bps" "bindPose1.wm[15]";
connectAttr "|skel|pos|leg_l|joint2|joint3|joint5.bps" "bindPose1.wm[16]";
connectAttr "leg_r.bps" "bindPose1.wm[17]";
connectAttr "|skel|pos|leg_r|joint2.bps" "bindPose1.wm[18]";
connectAttr "|skel|pos|leg_r|joint2|joint3.bps" "bindPose1.wm[19]";
connectAttr "|skel|pos|leg_r|joint2|joint3|joint5.bps" "bindPose1.wm[20]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "SquareManShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
// End of squareMAN.ma
