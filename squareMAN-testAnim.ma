//Maya ASCII 2022 scene
//Name: squareMAN-testAnim.ma
//Last modified: Sun, Dec 18, 2022 06:52:50 PM
//Codeset: 1252
requires maya "2022";
requires "mtoa" "4.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19044)";
fileInfo "UUID" "257077B8-4CB0-14AA-0CD6-87AE55B034B5";
createNode transform -s -n "persp";
	rename -uid "521C9BA0-41E7-E96D-1680-5F9A9B7A2606";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.16058209160122405 5.8584058214755874 12.830638401967587 ;
	setAttr ".r" -type "double3" -8.5498054904867757 0.99999999999841793 1.2425934254440173e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "62C2B949-4A26-85E3-9B30-139A54522D39";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 15.418599331596479;
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -0.063369909663159696 3.8521120087063281 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "spine_base" -p "pos";
	rename -uid "060627D8-4440-FAFA-A572-498032BDAA25";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90 ;
	setAttr ".bps" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -0.063369909663159696 3.8521120087063281 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "spine_1" -p "spine_base";
	rename -uid "A50BF14D-4022-CC23-1812-CDB71F8F168E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -0.063369909663159252 4.6777783004979607 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "spine_2" -p "spine_1";
	rename -uid "5F6A1AC5-4AA5-AA83-9001-02B422159631";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -0.063369909663159252 5.6212823349268719 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "spine_top" -p "spine_2";
	rename -uid "F7555021-476E-A72E-4B28-B2AB5B2C526C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -0.063369909663159252 6.4973355904987509 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "head" -p "spine_top";
	rename -uid "7B17FE05-4F30-5F30-B5C1-3AB92755A52E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -0.063369909663159252 7.8190427280145149 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "shoulder_r" -p "spine_top";
	rename -uid "222ACD22-4095-53B5-01D3-EA9854E0497A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.80455496714232788 -0.59387819024325839 0 0 0.59387819024325839 -0.80455496714232788 0 0
		 0 0 1 0 -0.68641127449773476 6.4973355904987384 0.035275199230312193 1;
	setAttr ".radi" 0.5;
createNode joint -n "elbow_r" -p "shoulder_r";
	rename -uid "DF9C8AC8-4127-2535-144E-92B92D59A6E9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.80455496714232788 -0.59387819024325839 0 0 0.59387819024325839 -0.80455496714232788 0 0
		 0 0 1 0 -2.2981122900731168 5.3076666164287465 0.035275199230312221 1;
	setAttr ".radi" 0.5;
createNode joint -n "wrist_r" -p "elbow_r";
	rename -uid "23DEB356-4186-C102-58C0-5DAB85594581";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.80455496714232788 -0.59387819024325839 0 0 0.59387819024325839 -0.80455496714232788 0 0
		 0 0 1 0 -3.6458230719358395 4.3128607016174954 0.035275199230312165 1;
	setAttr ".radi" 0.5;
createNode joint -n "shoulder_l" -p "spine_top";
	rename -uid "8901C7C5-4746-DBE4-D92C-33911C984DA6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.73468702406876385 -0.67840620329193935 -0 0 0.67840620329193935 0.73468702406876385 0 0
		 0 0 1 0 0.83686473671844064 6.4973355904987509 0.058521913328628106 1;
	setAttr ".radi" 0.5;
createNode joint -n "elbow_l" -p "shoulder_l";
	rename -uid "BF84B88F-4816-14A2-9B3E-92814B9BE679";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.73468702406876385 -0.67840620329193935 0 0 0.67840620329193935 0.73468702406876385 0 0
		 0 0 1 0 2.1770330753892826 5.2598310686757861 0.058521913328628106 1;
	setAttr ".radi" 0.5;
createNode joint -n "wrist_l" -p "elbow_l";
	rename -uid "4BF2C98C-448E-948C-5406-CFBFF6202E6D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.73468702406876385 -0.67840620329193935 0 0 0.67840620329193935 0.73468702406876385 0 0
		 0 0 1 0 3.3541632705868607 4.172875126427452 0.058521913328628106 1;
	setAttr ".radi" 0.5;
createNode joint -n "thigh_l" -p "pos";
	rename -uid "7270EADB-4EA1-9F88-4CD2-4480D8740231";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90 ;
	setAttr ".bps" -type "matrix" -0 -1 0 0 1 0 0 0 0 0 1 0 0.80173094156780689 3.8521120087063272 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "knee_l" -p "thigh_l";
	rename -uid "FC4BD281-4A08-128A-0664-5187202768FB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 -1 0 0 1 0 0 0 0 0 1 0 0.801730941567807 1.8985635934762719 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "ball_l" -p "knee_l";
	rename -uid "3F445F3B-48CC-7DCD-EBB0-07839FCF4329";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 -0.049774528634421111 0.9987604799446268 0 1 0 0 0
		 0 0.9987604799446268 0.049774528634421111 0 0.80173094156780733 0.18972466319925951 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "toe_l" -p "ball_l";
	rename -uid "74BA92AE-456B-2E17-0D40-C6816B4225EF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 -0.049774528634421111 0.9987604799446268 0 1 0 0 0
		 0 0.9987604799446268 0.049774528634421111 0 0.80173094156780733 0.13407684162630149 0.92238426626759074 1;
	setAttr ".radi" 0.5;
createNode joint -n "thigh_r" -p "pos";
	rename -uid "30EC8F9D-4A08-3768-C9BB-D69B92D029A8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90 ;
	setAttr ".pa" -type "double3" 0 0 -90 ;
	setAttr ".bps" -type "matrix" -0 -1 0 0 1 0 0 0 0 0 1 0 -0.79255882212394679 3.8521120087063268 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "knee_r" -p "thigh_r";
	rename -uid "626AA422-4550-C41F-048E-55995AB8E659";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 -1 0 0 1 0 0 0 0 0 1 0 -0.79255882212394668 1.8985635934762715 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "ball_r" -p "knee_r";
	rename -uid "41210FF1-4ECF-3289-A040-33883F6183AC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -87.146950680605656 0 ;
	setAttr ".bps" -type "matrix" 0 -0.049774528634421111 0.9987604799446268 0 1 0 0 0
		 0 0.9987604799446268 0.049774528634421111 0 -0.79255882212394635 0.18972466319925907 -0.19422791483994795 1;
	setAttr ".radi" 0.5;
createNode joint -n "toe_r" -p "ball_r";
	rename -uid "4820AC3A-42A0-8143-4852-089AA54D1C2B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
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
	setAttr ".wl[0:119].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1;
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
createNode animCurveTU -n "joint2_visibility";
	rename -uid "6B72B28B-4B8F-CD47-26A7-9AA5074ACB30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint2_translateX";
	rename -uid "9A848D0B-4FD9-D856-DD44-D5B1B676CC36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.8256662917916322;
createNode animCurveTL -n "joint2_translateY";
	rename -uid "2E8B0EF8-462F-DC14-A646-F1AD672204F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -4.4408920985006262e-16;
createNode animCurveTL -n "joint2_translateZ";
	rename -uid "D0D93F45-4B08-9BE8-20C2-A9B0AF45F6EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint2_rotateX";
	rename -uid "B5F92BFD-4B1B-33C3-8B97-D9B85BCB3213";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint2_rotateY";
	rename -uid "0530E70C-4284-1CA9-A7F2-E8A664C288B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint2_rotateZ";
	rename -uid "3CC46A5F-4D17-CBA5-54EE-22921F9E3229";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "joint2_scaleX";
	rename -uid "36D3667E-4B2F-51BF-BC9C-12B012FA1FCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint2_scaleY";
	rename -uid "E038C8E1-47AE-FE2F-06E9-80BC13EB8B6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint2_scaleZ";
	rename -uid "56FFE45B-4DC7-6863-C0EC-618A18853C02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pos_visibility";
	rename -uid "AC341AFF-4D52-27B3-38FC-D9996BF13DF4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pos_translateX";
	rename -uid "90F9EA28-4B38-E3EF-5417-9AAD5749DA22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pos_translateY";
	rename -uid "BCCCAA98-441A-D3B5-9AD5-5F99B7F21A9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pos_translateZ";
	rename -uid "7A181822-4059-887D-4B30-81AB5846F6C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pos_rotateX";
	rename -uid "6987BFC1-4774-E9EE-624F-9FA632D670AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pos_rotateY";
	rename -uid "34D1EBBC-4E30-8794-2ADE-50B7A2567197";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pos_rotateZ";
	rename -uid "27709284-4132-F77F-CE08-BEAC35BAB8DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 90;
createNode animCurveTU -n "pos_scaleX";
	rename -uid "A23AFB93-4139-7D83-BE4E-2E91B95C59EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pos_scaleY";
	rename -uid "97C7DFCC-4689-0634-A1E0-5E949572F29A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pos_scaleZ";
	rename -uid "0C950CC8-49AA-4772-233E-73A8B6545431";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "spine_base_visibility";
	rename -uid "725D026C-4609-EA1C-9043-BCA6DCF828BF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "spine_base_translateX";
	rename -uid "D359D6D2-4D30-CF5A-2152-9FA25FA4E52E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "spine_base_translateY";
	rename -uid "BBE1746D-4F61-D2CA-501C-77B0DE9B0609";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "spine_base_translateZ";
	rename -uid "DDD09E7F-4CC0-8D5C-56BD-5BA5F510341B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "spine_base_rotateX";
	rename -uid "C049D10E-4B79-42ED-DB3A-B88FFF9CD820";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "spine_base_rotateY";
	rename -uid "F67B922B-43B6-9B75-FB4A-D5982C349A88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "spine_base_rotateZ";
	rename -uid "52783645-4F71-818E-3798-86B8A09C1EAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 90;
createNode animCurveTU -n "spine_base_scaleX";
	rename -uid "E265BF0B-4B1B-6CCE-A8D3-C2AC2F9411BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "spine_base_scaleY";
	rename -uid "0186739F-4A5C-3661-9E68-80ABE3D5601C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "spine_base_scaleZ";
	rename -uid "D031B371-4297-A772-EF44-298DCA5D65B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "spine_2_visibility";
	rename -uid "A95BBCC5-4FCA-EF12-493A-878EBBC1D061";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "spine_2_translateX";
	rename -uid "41C9CFB6-415F-3B7C-C5A3-57A80C89C3AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.94350403442891118;
createNode animCurveTL -n "spine_2_translateY";
	rename -uid "059BAB8C-4A8D-D2BD-41BA-4E86753C9766";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "spine_2_translateZ";
	rename -uid "A1E3B6F4-419B-5171-17BA-AAB0392A5947";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "spine_2_rotateX";
	rename -uid "4700C9B8-4C4A-6CA6-B9C0-EDA46610D9E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "spine_2_rotateY";
	rename -uid "62FCAF80-46D4-6D13-A6F4-04AB09B936A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "spine_2_rotateZ";
	rename -uid "D1AAEC9E-49E2-45E8-7385-8884D5763E80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "spine_2_scaleX";
	rename -uid "01FE82DA-4980-0AEE-30C1-C793004FC147";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "spine_2_scaleY";
	rename -uid "24BCBF24-4C9B-0DD4-36E3-A48341F90B32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "spine_2_scaleZ";
	rename -uid "D82BC829-423D-B714-9C43-C3B5D19B377B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "spine_top_visibility";
	rename -uid "04689C10-4AE3-A8F3-13D1-D78B76B1313C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "spine_top_translateX";
	rename -uid "190047C5-44C2-6509-F514-61B07D360DE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.87605325557187896;
createNode animCurveTL -n "spine_top_translateY";
	rename -uid "1F30A0E8-483D-2700-716C-CAA14DED47AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "spine_top_translateZ";
	rename -uid "59D0342E-47BC-9906-3462-AC97BB86B105";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "spine_top_rotateX";
	rename -uid "2D894961-4535-22F7-27E5-EC8DEE6357E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "spine_top_rotateY";
	rename -uid "30D54991-41BB-5462-60C3-79A7A746017B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "spine_top_rotateZ";
	rename -uid "5B247F00-4E55-D7F5-7629-C8AB161CB3BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "spine_top_scaleX";
	rename -uid "B30430F8-49E4-4944-58DC-6DB0E7A50C83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "spine_top_scaleY";
	rename -uid "CD7B1628-4226-1AEC-956C-F1865A74CDD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "spine_top_scaleZ";
	rename -uid "0AF19727-4841-0814-62F6-16B11369A932";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "head_visibility";
	rename -uid "3C97F42F-4752-4025-1D01-4DBEB5867480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "head_translateX";
	rename -uid "1F70E678-4142-0F69-B4F9-DD9196D0C04C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.3217071375157641;
createNode animCurveTL -n "head_translateY";
	rename -uid "C1B50FDC-4409-7D7C-2DD3-C3A190C8D325";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "head_translateZ";
	rename -uid "4FDE5D9D-47A2-D6D9-86F1-A19D1F05E2EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "head_rotateX";
	rename -uid "03BCBA1D-42DD-8C9A-2A31-509965018A71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "head_rotateY";
	rename -uid "F36AAE41-4E47-FC0E-A813-D2B287C9D4FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "head_rotateZ";
	rename -uid "11955BFA-40F8-901F-4475-14BF0D0BBA0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "head_scaleX";
	rename -uid "B519E1A0-43D1-CF63-9711-0B8876725F8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "head_scaleY";
	rename -uid "069B5E7A-453B-33C0-5BCF-589DC59C7A6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "head_scaleZ";
	rename -uid "9047072B-4493-61BF-56EC-EBB573C8CCE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "shoulder_r_visibility";
	rename -uid "5AE2112E-445D-7750-7343-47A976C4FA49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 50 1 100 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "shoulder_r_translateX";
	rename -uid "C8316B21-4726-2A15-1707-9E8F04659EA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2434497875801753e-14 50 -1.2434497875801753e-14
		 100 -1.2434497875801753e-14;
createNode animCurveTL -n "shoulder_r_translateY";
	rename -uid "A013925D-4D20-0E2B-6B21-9CAF75F7BA0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.62304136483457551 50 0.62304136483457551
		 100 0.62304136483457551;
createNode animCurveTL -n "shoulder_r_translateZ";
	rename -uid "91B7E397-45A9-2967-BB8D-C881E1F0C102";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.22950311407026014 50 0.22950311407026014
		 100 0.22950311407026014;
createNode animCurveTA -n "shoulder_r_rotateX";
	rename -uid "509FD3C3-4324-3789-9F9E-609608270D05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 50 0 100 0;
createNode animCurveTA -n "shoulder_r_rotateY";
	rename -uid "FD35C269-460D-5BF6-A2DA-EBB8485ECCC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 50 0 100 0;
createNode animCurveTA -n "shoulder_r_rotateZ";
	rename -uid "90B6C81D-443A-1B73-253F-0581E8E563B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 126.43270207778924 50 42.800718219075165
		 100 126;
createNode animCurveTU -n "shoulder_r_scaleX";
	rename -uid "5657C2DC-4EF9-5200-3403-2D9AAF635178";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 50 1 100 1;
createNode animCurveTU -n "shoulder_r_scaleY";
	rename -uid "878DC613-41E1-D1D3-44E1-D8B0D8698CDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 50 1 100 1;
createNode animCurveTU -n "shoulder_r_scaleZ";
	rename -uid "2EFFC61C-4CE8-0C76-F804-1B93BC18C75E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 50 1 100 1;
createNode animCurveTU -n "elbow_r_visibility";
	rename -uid "1C6A60B7-4BAC-CCD3-5EC9-E098A1902749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "elbow_r_translateX";
	rename -uid "8BD7585F-4C97-BA18-D599-F38AE368CC08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.0032205149387483;
createNode animCurveTL -n "elbow_r_translateY";
	rename -uid "E9146BED-40DD-2AE1-912C-1AA4E33BA8D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.7755575615628914e-16;
createNode animCurveTL -n "elbow_r_translateZ";
	rename -uid "4DFA0A86-4567-0C80-A1D7-AFA2ADFC163D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.7755575615628914e-17;
createNode animCurveTA -n "elbow_r_rotateX";
	rename -uid "625B4543-40A1-31B5-1365-BF8FA2CCB16B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "elbow_r_rotateY";
	rename -uid "D3AF9D80-436C-0261-025E-CFA68E2B9C13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "elbow_r_rotateZ";
	rename -uid "A3957A10-42FE-059B-9BC3-2A9C109568A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "elbow_r_scaleX";
	rename -uid "5DB195BC-4AC1-2C9C-30F2-EB94F2A74B4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "elbow_r_scaleY";
	rename -uid "A345D89D-4713-2406-0DDA-DBBEA572112A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "elbow_r_scaleZ";
	rename -uid "AB336ADE-4B0E-37F9-D8E2-32951DEDEA5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "wrist_r_visibility";
	rename -uid "AF89DF90-4BED-5331-BA22-22A1507FBBC3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "wrist_r_translateX";
	rename -uid "D8D2FEA1-4E50-F423-94F5-CCA825C26289";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.675100940150319;
createNode animCurveTL -n "wrist_r_translateY";
	rename -uid "C51FA24C-43F5-367A-614C-5C94688F183A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -8.8817841970012523e-16;
createNode animCurveTL -n "wrist_r_translateZ";
	rename -uid "65660783-4EEA-A0C6-57D4-AFB272BF98D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -5.5511151231257827e-17;
createNode animCurveTA -n "wrist_r_rotateX";
	rename -uid "9AB60E6D-4CB6-B898-B90F-158AA61F9852";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "wrist_r_rotateY";
	rename -uid "02DEC651-4434-6CED-B542-1BB0E616202D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "wrist_r_rotateZ";
	rename -uid "A1BBD2CD-4DC2-AA24-9803-9AB87F04762E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "wrist_r_scaleX";
	rename -uid "B77BB200-4E3A-F0DE-34AF-928F6C43CA40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "wrist_r_scaleY";
	rename -uid "E0D01527-4821-667D-93C9-40B4E5AE129A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "wrist_r_scaleZ";
	rename -uid "8F0F7F46-4283-BE6F-3EB2-07ADABB242AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "shoulder_l_visibility";
	rename -uid "E696E03A-466F-0700-3179-58A6999131CD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 50 1 100 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "shoulder_l_translateX";
	rename -uid "657F5071-4243-8814-7F7A-868C6F9367CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 50 0 100 0;
createNode animCurveTL -n "shoulder_l_translateY";
	rename -uid "03654130-4021-796F-C115-BFA94890DA3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.90023464638159989 50 -0.90023464638159989
		 100 -0.90023464638159989;
createNode animCurveTL -n "shoulder_l_translateZ";
	rename -uid "7D1BE16B-4D41-2D5F-C53F-83AD3CF51DE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.25274982816857605 50 0.25274982816857605
		 100 0.25274982816857605;
createNode animCurveTA -n "shoulder_l_rotateX";
	rename -uid "4936F320-47C4-5352-2B77-99A540AFFB08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 50 0 100 0;
createNode animCurveTA -n "shoulder_l_rotateY";
	rename -uid "3788F64D-4299-47E3-BF75-C0996C2F4AE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 50 0 100 0;
createNode animCurveTA -n "shoulder_l_rotateZ";
	rename -uid "5EAD2DB0-48C4-324D-E538-77B45FA6B498";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -132.71922333832427 50 -40.183883705252555
		 100 -132;
createNode animCurveTU -n "shoulder_l_scaleX";
	rename -uid "38ED5579-421F-0A19-C0D2-4089B73DBBEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 50 1 100 1;
createNode animCurveTU -n "shoulder_l_scaleY";
	rename -uid "F1DB4BEA-46F6-5E9A-C74B-03AF5ADAF3C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 50 1 100 1;
createNode animCurveTU -n "shoulder_l_scaleZ";
	rename -uid "E0D08FC3-4C81-C443-5123-75BE5073A39B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 50 1 100 1;
createNode animCurveTU -n "elbow_l_visibility";
	rename -uid "F916655E-44C7-845E-0DA0-509ABA8E3093";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "elbow_l_translateX";
	rename -uid "9146AD46-438B-5255-A6EE-C1B2D4BB63B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.8241350326957835;
createNode animCurveTL -n "elbow_l_translateY";
	rename -uid "67BC3196-43A1-5142-4D26-5A96DACF1B55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -8.3266726846886741e-16;
createNode animCurveTL -n "elbow_l_translateZ";
	rename -uid "E792CD1B-4336-2539-7604-DAB9F52AAA66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "elbow_l_rotateX";
	rename -uid "95FFF4CA-4A63-E874-DBAD-0F9444E770A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "elbow_l_rotateY";
	rename -uid "8C943932-48A4-402D-015F-58B1A00CBE9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "elbow_l_rotateZ";
	rename -uid "8C6FB279-45C6-744A-4F8D-89BF9DD4DD53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "elbow_l_scaleX";
	rename -uid "123112C8-4FBE-4D95-2882-849BD7CBA3D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "elbow_l_scaleY";
	rename -uid "6BA63CAD-4001-3A0E-BF19-0AB2ACBB2E28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "elbow_l_scaleZ";
	rename -uid "3E5BD337-4A70-A760-8514-72A42B9475F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "wrist_l_visibility";
	rename -uid "F33A95F0-45CF-E9FC-99B0-1D8C2B2D23AA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "wrist_l_translateX";
	rename -uid "14FDF218-4C6A-FE69-8760-CEAED428F7C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.6022199339774956;
createNode animCurveTL -n "wrist_l_translateY";
	rename -uid "CD9E603F-407F-4931-253F-62AA850E913C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 9.9920072216264089e-16;
createNode animCurveTL -n "wrist_l_translateZ";
	rename -uid "0DE3D50A-46B2-DF4F-F6F4-D8A6A2152D4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "wrist_l_rotateX";
	rename -uid "D07D6606-43EB-E206-BEE5-0FAA1D19D3AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "wrist_l_rotateY";
	rename -uid "3013D6C7-4F86-6E4B-44A7-549D7FE7B83C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "wrist_l_rotateZ";
	rename -uid "77513194-4D81-7D89-B639-EC8DB2F493EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "wrist_l_scaleX";
	rename -uid "B33D83FA-478F-B062-2E03-82A7BBEA3448";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "wrist_l_scaleY";
	rename -uid "2612453A-49D3-21B6-7EC7-59AE7990C62F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "wrist_l_scaleZ";
	rename -uid "F7D0EB7A-4604-D8F8-769D-F68C15185226";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "thigh_l_visibility";
	rename -uid "6A25E98B-411B-21FC-6636-5593F06F7350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "thigh_l_translateX";
	rename -uid "E850522D-4259-51AB-493F-A283419597E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -8.8817841970012523e-16;
createNode animCurveTL -n "thigh_l_translateY";
	rename -uid "84868F7D-4745-A23B-F44B-319A04D2758C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.86510085123096658;
createNode animCurveTL -n "thigh_l_translateZ";
	rename -uid "8352D1B4-473B-C074-4640-F0B04B443DA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "thigh_l_rotateX";
	rename -uid "E898FE0B-473F-D07B-BFF3-D4A1C6E22CCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "thigh_l_rotateY";
	rename -uid "F223E7B6-45FE-7AE2-1B1D-3E9EF0E8EA66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "thigh_l_rotateZ";
	rename -uid "ADB08917-435C-55EE-B9FC-929EFFB4DF5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -90;
createNode animCurveTU -n "thigh_l_scaleX";
	rename -uid "A7B15DCA-4E8A-730B-23B9-EC8359A53B27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "thigh_l_scaleY";
	rename -uid "79325FFD-4204-9394-A111-A686FAA6122F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "thigh_l_scaleZ";
	rename -uid "94C233FC-4450-1309-E244-E7A39FD2467C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "knee_l_visibility";
	rename -uid "03B29240-44FB-BD59-2A04-2EA5788AD69B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "knee_l_translateX";
	rename -uid "219E0536-4E7B-A0E6-8558-FFA751420C75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.9535484152300553;
createNode animCurveTL -n "knee_l_translateY";
	rename -uid "4C1C9DA1-4861-1C3D-7CB2-F38A481C238B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 9.9963440303163509e-17;
createNode animCurveTL -n "knee_l_translateZ";
	rename -uid "71696093-4C40-D74F-0E1A-5CBC4269EE45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "knee_l_rotateX";
	rename -uid "00940424-46A2-53E9-3EDC-D19D3573BB8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "knee_l_rotateY";
	rename -uid "FC2164CB-4C85-74FF-57D8-36A235D64A29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "knee_l_rotateZ";
	rename -uid "1C2AEAAA-4A9A-ED8C-EDF0-FD9AE3306FD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "knee_l_scaleX";
	rename -uid "DB8F420C-4874-45C4-9767-B9B5835514DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "knee_l_scaleY";
	rename -uid "FD07BF5D-4BBA-9ED3-0C46-7EA7C4A9122B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "knee_l_scaleZ";
	rename -uid "3DAE8D8C-4C9F-A4E0-E782-148C153D189A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "ball_l_visibility";
	rename -uid "029ABAB4-437B-D75C-484E-6FAEAE821B88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "ball_l_translateX";
	rename -uid "60CE998F-4CB8-34BA-594E-F98C0558D7B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.7088389302770124;
createNode animCurveTL -n "ball_l_translateY";
	rename -uid "9A04F806-4EFC-5967-CABC-5FA1F3242CE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.4000580129145419e-16;
createNode animCurveTL -n "ball_l_translateZ";
	rename -uid "0D33B91C-4528-0DBF-96A8-12B42C13EDD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ball_l_rotateX";
	rename -uid "8BCE91B5-4FAC-C9F0-D19F-5FA1729A00F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ball_l_rotateY";
	rename -uid "224B3A90-41BA-CCEA-4BA9-C885D502FC28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -87.146950680605656;
createNode animCurveTA -n "ball_l_rotateZ";
	rename -uid "9406E54E-4190-76C8-8315-1B940C1DF401";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "ball_l_scaleX";
	rename -uid "9711AAE8-439C-20D6-D80F-89BCAA15E7BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "ball_l_scaleY";
	rename -uid "A40D9CA6-49B1-C4F4-B550-2BADF6942C4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "ball_l_scaleZ";
	rename -uid "B5C4378E-4D19-5D77-B73E-C0B653A93087";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "toe_l_visibility";
	rename -uid "8E86466F-4F8C-E662-9885-959307C3E41C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "toe_l_translateX";
	rename -uid "56FBF859-4835-C9D8-BB7E-DD935680E950";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.1179979620033083;
createNode animCurveTL -n "toe_l_translateY";
	rename -uid "31758B5F-4678-7BBE-6A78-E2BA75C5789B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "toe_l_translateZ";
	rename -uid "FCDB3A2B-4790-270A-187F-94AD9473AA9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 7.8062556418956319e-17;
createNode animCurveTA -n "toe_l_rotateX";
	rename -uid "7AFA5677-48C7-88B3-668D-22AAF6487B62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "toe_l_rotateY";
	rename -uid "2F3E010A-4491-2D59-657F-0DA7D1E04301";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "toe_l_rotateZ";
	rename -uid "CC362A42-4168-47FC-3067-86BA797F4E1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "toe_l_scaleX";
	rename -uid "546F7A63-4A76-A8CA-CA53-B9A11503B9DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "toe_l_scaleY";
	rename -uid "D2C42325-4096-F351-D703-918DB1B695C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "toe_l_scaleZ";
	rename -uid "8023AEAD-41DB-BEF7-B493-97889B464BAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "thigh_r_visibility";
	rename -uid "3C0912F7-4F3B-21BA-9D31-B3B78EA18C69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "thigh_r_translateX";
	rename -uid "5C39DDE1-4D4C-4F29-A891-B784CB3B8269";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.3322676295501878e-15;
createNode animCurveTL -n "thigh_r_translateY";
	rename -uid "5BBB7CE8-4D64-9BF7-2D7F-FD9F4DC0DF13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.7291889124607871;
createNode animCurveTL -n "thigh_r_translateZ";
	rename -uid "A2F33689-43E6-75A2-5173-6EB04D59F518";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "thigh_r_rotateX";
	rename -uid "C9B48BB0-40B9-78B8-8F69-27A81479CBF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "thigh_r_rotateY";
	rename -uid "1812E112-4ECF-8A50-FA27-ED93C2C266D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "thigh_r_rotateZ";
	rename -uid "03E8C2FC-482E-D529-BD47-24994CB893D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -90;
createNode animCurveTU -n "thigh_r_scaleX";
	rename -uid "E5B8E0EC-4779-58E0-3D71-11B5F463F4C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "thigh_r_scaleY";
	rename -uid "369A469B-4179-7AEA-ED4E-E885F594D0AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "thigh_r_scaleZ";
	rename -uid "C7608079-4AB6-7DA9-AE95-78B31DFB7F40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "knee_r_visibility";
	rename -uid "870B4ABE-438D-8A1F-8FA2-FA8516ED151E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "knee_r_translateX";
	rename -uid "349AE9B5-4B90-15D2-7EE0-889C971260B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.9535484152300553;
createNode animCurveTL -n "knee_r_translateY";
	rename -uid "9800F0D6-4A4A-7E0D-2628-CFA4510ACF5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 9.9963440303163509e-17;
createNode animCurveTL -n "knee_r_translateZ";
	rename -uid "B93EE339-439F-326D-EB19-FB98673678B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "knee_r_rotateX";
	rename -uid "B5BA0D68-4429-BBAD-4F3F-91A98972E2EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "knee_r_rotateY";
	rename -uid "09FA53F6-4B16-0F70-2919-6E81352D6FE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "knee_r_rotateZ";
	rename -uid "7FC274D4-4F4E-C781-517C-39A922670BE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "knee_r_scaleX";
	rename -uid "FD5E19BB-4187-821D-ABA9-DE928991AB85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "knee_r_scaleY";
	rename -uid "780275EC-4066-185A-97EC-EC87BBB1B5F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "knee_r_scaleZ";
	rename -uid "DF162A57-4FCF-31A2-AA02-5ABB4B0852FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "ball_r_visibility";
	rename -uid "A4168241-490D-20F4-FC8A-B0BC2EDBE18B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "ball_r_translateX";
	rename -uid "A4799D26-4A3B-AC27-21F5-0CB37A071B5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.7088389302770124;
createNode animCurveTL -n "ball_r_translateY";
	rename -uid "2CD89C6D-4E95-05FD-490A-3BABAC126641";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.4000580129145419e-16;
createNode animCurveTL -n "ball_r_translateZ";
	rename -uid "522A9384-4C74-61B1-9785-C3B4B9B9C529";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ball_r_rotateX";
	rename -uid "FBF80A3A-44AC-34E9-0647-26941B9FD1C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ball_r_rotateY";
	rename -uid "6B47EEEC-430D-C9FC-9BD4-08BF04734A37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -87.146950680605656;
createNode animCurveTA -n "ball_r_rotateZ";
	rename -uid "EB17DB6C-4F27-5946-6313-45BCA8B79269";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "ball_r_scaleX";
	rename -uid "D1A262CB-4CFC-E56A-3B8E-71ADA623BBC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "ball_r_scaleY";
	rename -uid "11B2F954-4D19-4CB9-E730-459B718552AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "ball_r_scaleZ";
	rename -uid "01B64B76-4642-95E2-E828-AB9B2994C028";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "toe_r_visibility";
	rename -uid "851794BF-4CE6-4C18-8164-8A9310F89ED6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "toe_r_translateX";
	rename -uid "AACACA72-4659-DFE3-889B-98AF1AB598E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.1179979620033083;
createNode animCurveTL -n "toe_r_translateY";
	rename -uid "5FBB484F-42B3-7B0D-D3D1-6199DE3C67F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "toe_r_translateZ";
	rename -uid "99A5EF30-4A84-6A93-9F7D-01B51AFDFF4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 7.8062556418956319e-17;
createNode animCurveTA -n "toe_r_rotateX";
	rename -uid "9AF2BBB8-41F9-D56E-9E46-AF88DFE1D1CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "toe_r_rotateY";
	rename -uid "D2E8C432-4B37-C70D-93A5-9482E4B9344F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "toe_r_rotateZ";
	rename -uid "DD2154F8-45D1-991E-C9D9-D6849DDD1168";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "toe_r_scaleX";
	rename -uid "9E6FFBDA-4C93-B462-6BC5-ECA4317D6EDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "toe_r_scaleY";
	rename -uid "81FB67C2-455D-B2B0-F4F8-DF95DC93C04C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "toe_r_scaleZ";
	rename -uid "B257C2EE-4117-ED7F-7692-FDBE3A957DFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode timeEditor -s -n "timeEditor";
	rename -uid "73B7020A-4AE9-ECB2-F906-FF93F12E85A4";
	setAttr ".ac" 0;
createNode timeEditorTracks -n "Composition1";
	rename -uid "7090A6A3-4CF4-BDDD-B4E9-7E90BACDF827";
createNode trackInfoManager -n "trackInfoManager1";
	rename -uid "695425B0-40A6-990C-A53C-878E973FED96";
select -ne :time1;
	setAttr ".o" 102;
	setAttr ".unw" 102;
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
connectAttr "pos_scaleX.o" "pos.sx";
connectAttr "pos_scaleY.o" "pos.sy";
connectAttr "pos_scaleZ.o" "pos.sz";
connectAttr "pos_visibility.o" "pos.v";
connectAttr "pos_translateX.o" "pos.tx";
connectAttr "pos_translateY.o" "pos.ty";
connectAttr "pos_translateZ.o" "pos.tz";
connectAttr "pos_rotateX.o" "pos.rx";
connectAttr "pos_rotateY.o" "pos.ry";
connectAttr "pos_rotateZ.o" "pos.rz";
connectAttr "spine_base_scaleX.o" "spine_base.sx";
connectAttr "spine_base_scaleY.o" "spine_base.sy";
connectAttr "spine_base_scaleZ.o" "spine_base.sz";
connectAttr "pos.s" "spine_base.is";
connectAttr "spine_base_visibility.o" "spine_base.v";
connectAttr "spine_base_translateX.o" "spine_base.tx";
connectAttr "spine_base_translateY.o" "spine_base.ty";
connectAttr "spine_base_translateZ.o" "spine_base.tz";
connectAttr "spine_base_rotateX.o" "spine_base.rx";
connectAttr "spine_base_rotateY.o" "spine_base.ry";
connectAttr "spine_base_rotateZ.o" "spine_base.rz";
connectAttr "spine_base.s" "spine_1.is";
connectAttr "joint2_scaleX.o" "spine_1.sx";
connectAttr "joint2_scaleY.o" "spine_1.sy";
connectAttr "joint2_scaleZ.o" "spine_1.sz";
connectAttr "joint2_visibility.o" "spine_1.v";
connectAttr "joint2_translateX.o" "spine_1.tx";
connectAttr "joint2_translateY.o" "spine_1.ty";
connectAttr "joint2_translateZ.o" "spine_1.tz";
connectAttr "joint2_rotateX.o" "spine_1.rx";
connectAttr "joint2_rotateY.o" "spine_1.ry";
connectAttr "joint2_rotateZ.o" "spine_1.rz";
connectAttr "spine_1.s" "spine_2.is";
connectAttr "spine_2_scaleX.o" "spine_2.sx";
connectAttr "spine_2_scaleY.o" "spine_2.sy";
connectAttr "spine_2_scaleZ.o" "spine_2.sz";
connectAttr "spine_2_visibility.o" "spine_2.v";
connectAttr "spine_2_translateX.o" "spine_2.tx";
connectAttr "spine_2_translateY.o" "spine_2.ty";
connectAttr "spine_2_translateZ.o" "spine_2.tz";
connectAttr "spine_2_rotateX.o" "spine_2.rx";
connectAttr "spine_2_rotateY.o" "spine_2.ry";
connectAttr "spine_2_rotateZ.o" "spine_2.rz";
connectAttr "spine_2.s" "spine_top.is";
connectAttr "spine_top_scaleX.o" "spine_top.sx";
connectAttr "spine_top_scaleY.o" "spine_top.sy";
connectAttr "spine_top_scaleZ.o" "spine_top.sz";
connectAttr "spine_top_visibility.o" "spine_top.v";
connectAttr "spine_top_translateX.o" "spine_top.tx";
connectAttr "spine_top_translateY.o" "spine_top.ty";
connectAttr "spine_top_translateZ.o" "spine_top.tz";
connectAttr "spine_top_rotateX.o" "spine_top.rx";
connectAttr "spine_top_rotateY.o" "spine_top.ry";
connectAttr "spine_top_rotateZ.o" "spine_top.rz";
connectAttr "spine_top.s" "head.is";
connectAttr "head_visibility.o" "head.v";
connectAttr "head_translateX.o" "head.tx";
connectAttr "head_translateY.o" "head.ty";
connectAttr "head_translateZ.o" "head.tz";
connectAttr "head_rotateX.o" "head.rx";
connectAttr "head_rotateY.o" "head.ry";
connectAttr "head_rotateZ.o" "head.rz";
connectAttr "head_scaleX.o" "head.sx";
connectAttr "head_scaleY.o" "head.sy";
connectAttr "head_scaleZ.o" "head.sz";
connectAttr "spine_top.s" "shoulder_r.is";
connectAttr "shoulder_r_scaleX.o" "shoulder_r.sx";
connectAttr "shoulder_r_scaleY.o" "shoulder_r.sy";
connectAttr "shoulder_r_scaleZ.o" "shoulder_r.sz";
connectAttr "shoulder_r_visibility.o" "shoulder_r.v";
connectAttr "shoulder_r_translateX.o" "shoulder_r.tx";
connectAttr "shoulder_r_translateY.o" "shoulder_r.ty";
connectAttr "shoulder_r_translateZ.o" "shoulder_r.tz";
connectAttr "shoulder_r_rotateX.o" "shoulder_r.rx";
connectAttr "shoulder_r_rotateY.o" "shoulder_r.ry";
connectAttr "shoulder_r_rotateZ.o" "shoulder_r.rz";
connectAttr "shoulder_r.s" "elbow_r.is";
connectAttr "elbow_r_scaleX.o" "elbow_r.sx";
connectAttr "elbow_r_scaleY.o" "elbow_r.sy";
connectAttr "elbow_r_scaleZ.o" "elbow_r.sz";
connectAttr "elbow_r_visibility.o" "elbow_r.v";
connectAttr "elbow_r_translateX.o" "elbow_r.tx";
connectAttr "elbow_r_translateY.o" "elbow_r.ty";
connectAttr "elbow_r_translateZ.o" "elbow_r.tz";
connectAttr "elbow_r_rotateX.o" "elbow_r.rx";
connectAttr "elbow_r_rotateY.o" "elbow_r.ry";
connectAttr "elbow_r_rotateZ.o" "elbow_r.rz";
connectAttr "elbow_r.s" "wrist_r.is";
connectAttr "wrist_r_visibility.o" "wrist_r.v";
connectAttr "wrist_r_translateX.o" "wrist_r.tx";
connectAttr "wrist_r_translateY.o" "wrist_r.ty";
connectAttr "wrist_r_translateZ.o" "wrist_r.tz";
connectAttr "wrist_r_rotateX.o" "wrist_r.rx";
connectAttr "wrist_r_rotateY.o" "wrist_r.ry";
connectAttr "wrist_r_rotateZ.o" "wrist_r.rz";
connectAttr "wrist_r_scaleX.o" "wrist_r.sx";
connectAttr "wrist_r_scaleY.o" "wrist_r.sy";
connectAttr "wrist_r_scaleZ.o" "wrist_r.sz";
connectAttr "spine_top.s" "shoulder_l.is";
connectAttr "shoulder_l_scaleX.o" "shoulder_l.sx";
connectAttr "shoulder_l_scaleY.o" "shoulder_l.sy";
connectAttr "shoulder_l_scaleZ.o" "shoulder_l.sz";
connectAttr "shoulder_l_visibility.o" "shoulder_l.v";
connectAttr "shoulder_l_translateX.o" "shoulder_l.tx";
connectAttr "shoulder_l_translateY.o" "shoulder_l.ty";
connectAttr "shoulder_l_translateZ.o" "shoulder_l.tz";
connectAttr "shoulder_l_rotateX.o" "shoulder_l.rx";
connectAttr "shoulder_l_rotateY.o" "shoulder_l.ry";
connectAttr "shoulder_l_rotateZ.o" "shoulder_l.rz";
connectAttr "shoulder_l.s" "elbow_l.is";
connectAttr "elbow_l_scaleX.o" "elbow_l.sx";
connectAttr "elbow_l_scaleY.o" "elbow_l.sy";
connectAttr "elbow_l_scaleZ.o" "elbow_l.sz";
connectAttr "elbow_l_visibility.o" "elbow_l.v";
connectAttr "elbow_l_translateX.o" "elbow_l.tx";
connectAttr "elbow_l_translateY.o" "elbow_l.ty";
connectAttr "elbow_l_translateZ.o" "elbow_l.tz";
connectAttr "elbow_l_rotateX.o" "elbow_l.rx";
connectAttr "elbow_l_rotateY.o" "elbow_l.ry";
connectAttr "elbow_l_rotateZ.o" "elbow_l.rz";
connectAttr "elbow_l.s" "wrist_l.is";
connectAttr "wrist_l_visibility.o" "wrist_l.v";
connectAttr "wrist_l_translateX.o" "wrist_l.tx";
connectAttr "wrist_l_translateY.o" "wrist_l.ty";
connectAttr "wrist_l_translateZ.o" "wrist_l.tz";
connectAttr "wrist_l_rotateX.o" "wrist_l.rx";
connectAttr "wrist_l_rotateY.o" "wrist_l.ry";
connectAttr "wrist_l_rotateZ.o" "wrist_l.rz";
connectAttr "wrist_l_scaleX.o" "wrist_l.sx";
connectAttr "wrist_l_scaleY.o" "wrist_l.sy";
connectAttr "wrist_l_scaleZ.o" "wrist_l.sz";
connectAttr "thigh_l_scaleX.o" "thigh_l.sx";
connectAttr "thigh_l_scaleY.o" "thigh_l.sy";
connectAttr "thigh_l_scaleZ.o" "thigh_l.sz";
connectAttr "pos.s" "thigh_l.is";
connectAttr "thigh_l_visibility.o" "thigh_l.v";
connectAttr "thigh_l_translateX.o" "thigh_l.tx";
connectAttr "thigh_l_translateY.o" "thigh_l.ty";
connectAttr "thigh_l_translateZ.o" "thigh_l.tz";
connectAttr "thigh_l_rotateX.o" "thigh_l.rx";
connectAttr "thigh_l_rotateY.o" "thigh_l.ry";
connectAttr "thigh_l_rotateZ.o" "thigh_l.rz";
connectAttr "thigh_l.s" "knee_l.is";
connectAttr "knee_l_scaleX.o" "knee_l.sx";
connectAttr "knee_l_scaleY.o" "knee_l.sy";
connectAttr "knee_l_scaleZ.o" "knee_l.sz";
connectAttr "knee_l_visibility.o" "knee_l.v";
connectAttr "knee_l_translateX.o" "knee_l.tx";
connectAttr "knee_l_translateY.o" "knee_l.ty";
connectAttr "knee_l_translateZ.o" "knee_l.tz";
connectAttr "knee_l_rotateX.o" "knee_l.rx";
connectAttr "knee_l_rotateY.o" "knee_l.ry";
connectAttr "knee_l_rotateZ.o" "knee_l.rz";
connectAttr "knee_l.s" "ball_l.is";
connectAttr "ball_l_scaleX.o" "ball_l.sx";
connectAttr "ball_l_scaleY.o" "ball_l.sy";
connectAttr "ball_l_scaleZ.o" "ball_l.sz";
connectAttr "ball_l_visibility.o" "ball_l.v";
connectAttr "ball_l_translateX.o" "ball_l.tx";
connectAttr "ball_l_translateY.o" "ball_l.ty";
connectAttr "ball_l_translateZ.o" "ball_l.tz";
connectAttr "ball_l_rotateX.o" "ball_l.rx";
connectAttr "ball_l_rotateY.o" "ball_l.ry";
connectAttr "ball_l_rotateZ.o" "ball_l.rz";
connectAttr "ball_l.s" "toe_l.is";
connectAttr "toe_l_scaleX.o" "toe_l.sx";
connectAttr "toe_l_scaleY.o" "toe_l.sy";
connectAttr "toe_l_scaleZ.o" "toe_l.sz";
connectAttr "toe_l_visibility.o" "toe_l.v";
connectAttr "toe_l_translateX.o" "toe_l.tx";
connectAttr "toe_l_translateY.o" "toe_l.ty";
connectAttr "toe_l_translateZ.o" "toe_l.tz";
connectAttr "toe_l_rotateX.o" "toe_l.rx";
connectAttr "toe_l_rotateY.o" "toe_l.ry";
connectAttr "toe_l_rotateZ.o" "toe_l.rz";
connectAttr "thigh_r_scaleX.o" "thigh_r.sx";
connectAttr "thigh_r_scaleY.o" "thigh_r.sy";
connectAttr "thigh_r_scaleZ.o" "thigh_r.sz";
connectAttr "pos.s" "thigh_r.is";
connectAttr "thigh_r_visibility.o" "thigh_r.v";
connectAttr "thigh_r_translateX.o" "thigh_r.tx";
connectAttr "thigh_r_translateY.o" "thigh_r.ty";
connectAttr "thigh_r_translateZ.o" "thigh_r.tz";
connectAttr "thigh_r_rotateX.o" "thigh_r.rx";
connectAttr "thigh_r_rotateY.o" "thigh_r.ry";
connectAttr "thigh_r_rotateZ.o" "thigh_r.rz";
connectAttr "thigh_r.s" "knee_r.is";
connectAttr "knee_r_scaleX.o" "knee_r.sx";
connectAttr "knee_r_scaleY.o" "knee_r.sy";
connectAttr "knee_r_scaleZ.o" "knee_r.sz";
connectAttr "knee_r_visibility.o" "knee_r.v";
connectAttr "knee_r_translateX.o" "knee_r.tx";
connectAttr "knee_r_translateY.o" "knee_r.ty";
connectAttr "knee_r_translateZ.o" "knee_r.tz";
connectAttr "knee_r_rotateX.o" "knee_r.rx";
connectAttr "knee_r_rotateY.o" "knee_r.ry";
connectAttr "knee_r_rotateZ.o" "knee_r.rz";
connectAttr "knee_r.s" "ball_r.is";
connectAttr "ball_r_scaleX.o" "ball_r.sx";
connectAttr "ball_r_scaleY.o" "ball_r.sy";
connectAttr "ball_r_scaleZ.o" "ball_r.sz";
connectAttr "ball_r_visibility.o" "ball_r.v";
connectAttr "ball_r_translateX.o" "ball_r.tx";
connectAttr "ball_r_translateY.o" "ball_r.ty";
connectAttr "ball_r_translateZ.o" "ball_r.tz";
connectAttr "ball_r_rotateX.o" "ball_r.rx";
connectAttr "ball_r_rotateY.o" "ball_r.ry";
connectAttr "ball_r_rotateZ.o" "ball_r.rz";
connectAttr "ball_r.s" "toe_r.is";
connectAttr "toe_r_scaleX.o" "toe_r.sx";
connectAttr "toe_r_scaleY.o" "toe_r.sy";
connectAttr "toe_r_scaleZ.o" "toe_r.sz";
connectAttr "toe_r_visibility.o" "toe_r.v";
connectAttr "toe_r_translateX.o" "toe_r.tx";
connectAttr "toe_r_translateY.o" "toe_r.ty";
connectAttr "toe_r_translateZ.o" "toe_r.tz";
connectAttr "toe_r_rotateX.o" "toe_r.rx";
connectAttr "toe_r_rotateY.o" "toe_r.ry";
connectAttr "toe_r_rotateZ.o" "toe_r.rz";
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
connectAttr "spine_base.wm" "skinCluster1.ma[1]";
connectAttr "spine_1.wm" "skinCluster1.ma[2]";
connectAttr "spine_2.wm" "skinCluster1.ma[3]";
connectAttr "spine_top.wm" "skinCluster1.ma[4]";
connectAttr "head.wm" "skinCluster1.ma[5]";
connectAttr "shoulder_r.wm" "skinCluster1.ma[6]";
connectAttr "elbow_r.wm" "skinCluster1.ma[7]";
connectAttr "wrist_r.wm" "skinCluster1.ma[8]";
connectAttr "shoulder_l.wm" "skinCluster1.ma[9]";
connectAttr "elbow_l.wm" "skinCluster1.ma[10]";
connectAttr "wrist_l.wm" "skinCluster1.ma[11]";
connectAttr "thigh_l.wm" "skinCluster1.ma[12]";
connectAttr "knee_l.wm" "skinCluster1.ma[13]";
connectAttr "ball_l.wm" "skinCluster1.ma[14]";
connectAttr "toe_l.wm" "skinCluster1.ma[15]";
connectAttr "thigh_r.wm" "skinCluster1.ma[16]";
connectAttr "knee_r.wm" "skinCluster1.ma[17]";
connectAttr "ball_r.wm" "skinCluster1.ma[18]";
connectAttr "toe_r.wm" "skinCluster1.ma[19]";
connectAttr "pos.liw" "skinCluster1.lw[0]";
connectAttr "spine_base.liw" "skinCluster1.lw[1]";
connectAttr "spine_1.liw" "skinCluster1.lw[2]";
connectAttr "spine_2.liw" "skinCluster1.lw[3]";
connectAttr "spine_top.liw" "skinCluster1.lw[4]";
connectAttr "head.liw" "skinCluster1.lw[5]";
connectAttr "shoulder_r.liw" "skinCluster1.lw[6]";
connectAttr "elbow_r.liw" "skinCluster1.lw[7]";
connectAttr "wrist_r.liw" "skinCluster1.lw[8]";
connectAttr "shoulder_l.liw" "skinCluster1.lw[9]";
connectAttr "elbow_l.liw" "skinCluster1.lw[10]";
connectAttr "wrist_l.liw" "skinCluster1.lw[11]";
connectAttr "thigh_l.liw" "skinCluster1.lw[12]";
connectAttr "knee_l.liw" "skinCluster1.lw[13]";
connectAttr "ball_l.liw" "skinCluster1.lw[14]";
connectAttr "toe_l.liw" "skinCluster1.lw[15]";
connectAttr "thigh_r.liw" "skinCluster1.lw[16]";
connectAttr "knee_r.liw" "skinCluster1.lw[17]";
connectAttr "ball_r.liw" "skinCluster1.lw[18]";
connectAttr "toe_r.liw" "skinCluster1.lw[19]";
connectAttr "pos.obcc" "skinCluster1.ifcl[0]";
connectAttr "spine_base.obcc" "skinCluster1.ifcl[1]";
connectAttr "spine_1.obcc" "skinCluster1.ifcl[2]";
connectAttr "spine_2.obcc" "skinCluster1.ifcl[3]";
connectAttr "spine_top.obcc" "skinCluster1.ifcl[4]";
connectAttr "head.obcc" "skinCluster1.ifcl[5]";
connectAttr "shoulder_r.obcc" "skinCluster1.ifcl[6]";
connectAttr "elbow_r.obcc" "skinCluster1.ifcl[7]";
connectAttr "wrist_r.obcc" "skinCluster1.ifcl[8]";
connectAttr "shoulder_l.obcc" "skinCluster1.ifcl[9]";
connectAttr "elbow_l.obcc" "skinCluster1.ifcl[10]";
connectAttr "wrist_l.obcc" "skinCluster1.ifcl[11]";
connectAttr "thigh_l.obcc" "skinCluster1.ifcl[12]";
connectAttr "knee_l.obcc" "skinCluster1.ifcl[13]";
connectAttr "ball_l.obcc" "skinCluster1.ifcl[14]";
connectAttr "toe_l.obcc" "skinCluster1.ifcl[15]";
connectAttr "thigh_r.obcc" "skinCluster1.ifcl[16]";
connectAttr "knee_r.obcc" "skinCluster1.ifcl[17]";
connectAttr "ball_r.obcc" "skinCluster1.ifcl[18]";
connectAttr "toe_r.obcc" "skinCluster1.ifcl[19]";
connectAttr "toe_r.msg" "skinCluster1.ptt";
connectAttr "SquareManShapeOrig.w" "skinCluster1GroupParts.ig";
connectAttr "groupId1.id" "skinCluster1GroupParts.gi";
connectAttr "skel.msg" "bindPose1.m[0]";
connectAttr "pos.msg" "bindPose1.m[1]";
connectAttr "spine_base.msg" "bindPose1.m[2]";
connectAttr "spine_1.msg" "bindPose1.m[3]";
connectAttr "spine_2.msg" "bindPose1.m[4]";
connectAttr "spine_top.msg" "bindPose1.m[5]";
connectAttr "head.msg" "bindPose1.m[6]";
connectAttr "shoulder_r.msg" "bindPose1.m[7]";
connectAttr "elbow_r.msg" "bindPose1.m[8]";
connectAttr "wrist_r.msg" "bindPose1.m[9]";
connectAttr "shoulder_l.msg" "bindPose1.m[10]";
connectAttr "elbow_l.msg" "bindPose1.m[11]";
connectAttr "wrist_l.msg" "bindPose1.m[12]";
connectAttr "thigh_l.msg" "bindPose1.m[13]";
connectAttr "knee_l.msg" "bindPose1.m[14]";
connectAttr "ball_l.msg" "bindPose1.m[15]";
connectAttr "toe_l.msg" "bindPose1.m[16]";
connectAttr "thigh_r.msg" "bindPose1.m[17]";
connectAttr "knee_r.msg" "bindPose1.m[18]";
connectAttr "ball_r.msg" "bindPose1.m[19]";
connectAttr "toe_r.msg" "bindPose1.m[20]";
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
connectAttr "spine_base.bps" "bindPose1.wm[2]";
connectAttr "spine_1.bps" "bindPose1.wm[3]";
connectAttr "spine_2.bps" "bindPose1.wm[4]";
connectAttr "spine_top.bps" "bindPose1.wm[5]";
connectAttr "head.bps" "bindPose1.wm[6]";
connectAttr "shoulder_r.bps" "bindPose1.wm[7]";
connectAttr "elbow_r.bps" "bindPose1.wm[8]";
connectAttr "wrist_r.bps" "bindPose1.wm[9]";
connectAttr "shoulder_l.bps" "bindPose1.wm[10]";
connectAttr "elbow_l.bps" "bindPose1.wm[11]";
connectAttr "wrist_l.bps" "bindPose1.wm[12]";
connectAttr "thigh_l.bps" "bindPose1.wm[13]";
connectAttr "knee_l.bps" "bindPose1.wm[14]";
connectAttr "ball_l.bps" "bindPose1.wm[15]";
connectAttr "toe_l.bps" "bindPose1.wm[16]";
connectAttr "thigh_r.bps" "bindPose1.wm[17]";
connectAttr "knee_r.bps" "bindPose1.wm[18]";
connectAttr "ball_r.bps" "bindPose1.wm[19]";
connectAttr "toe_r.bps" "bindPose1.wm[20]";
connectAttr ":timeEditor.cmp[0]" "Composition1.cmp";
connectAttr "trackInfoManager1.msg" ":sequenceManager1.tim";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "SquareManShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
// End of squareMAN-testAnim.ma
