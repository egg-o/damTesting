//Maya ASCII 2023 scene
//Name: squareMAN-test-attack.ma
//Last modified: Wed, Jan 18, 2023 12:30:27 AM
//Codeset: 1252
requires maya "2023";
requires "mtoa" "5.1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19044)";
fileInfo "UUID" "9A4DD077-4F4B-7B94-E831-D19295B0297A";
createNode transform -s -n "persp";
	rename -uid "521C9BA0-41E7-E96D-1680-5F9A9B7A2606";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.3258266522313411 9.9709042056838904 10.753185774132628 ;
	setAttr ".r" -type "double3" -24.749805490489077 18.599999999998499 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "62C2B949-4A26-85E3-9B30-139A54522D39";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 15.298376946343295;
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
	setAttr ".bps" -type "matrix" 0.73468702406876385 -0.67840620329193935 0 0 0.67840620329193935 0.73468702406876385 0 0
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
	setAttr ".jo" -type "double3" 0 0 -3.1805546814635168e-15 ;
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
	setAttr ".bps" -type "matrix" 0 -1 0 0 1 0 0 0 0 0 1 0 0.80173094156780689 3.8521120087063272 -0.19422791483994795 1;
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
	setAttr ".bps" -type "matrix" 0 -1 0 0 1 0 0 0 0 0 1 0 -0.79255882212394679 3.8521120087063268 -0.19422791483994795 1;
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
	rename -uid "AE67CCAC-4451-40FE-C5B2-E0A0EE179881";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6694EBE0-469A-DD2E-FAC2-B89FB0A9D2B9";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C681EC84-44D4-1517-0077-D5A50F50FC96";
createNode displayLayerManager -n "layerManager";
	rename -uid "B5D13677-4580-B459-5F9D-2F955A9BB5C2";
createNode displayLayer -n "defaultLayer";
	rename -uid "5F8C796E-46B2-0CC9-8843-2E900652128F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D8B38AD8-4689-E135-AC36-F2B77641060A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F30D049A-42FE-CFE4-1BBC-DABB85491F4B";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C74144F2-459D-A1C2-2109-8BA2435B46E5";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1022\n            -height 559\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n"
		+ "                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1022\\n    -height 559\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1022\\n    -height 559\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 70 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "76CD0C3D-44CD-258F-DFE3-0EB600A8A695";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 200 -ast 1 -aet 200 ";
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
	setAttr ".pm[0]" -type "matrix" 0 -1 0 0 1 0 0 0 0 0 1 0 -3.8521120087063281 -0.063369909663159696 0.19422791483994795 1;
	setAttr ".pm[1]" -type "matrix" 0 -1 0 0 1 0 0 0 0 0 1 0 -3.8521120087063281 -0.063369909663159696 0.19422791483994795 1;
	setAttr ".pm[2]" -type "matrix" 0 -1 0 0 1 0 0 0 0 0 1 0 -4.6777783004979607 -0.063369909663159252 0.19422791483994795 1;
	setAttr ".pm[3]" -type "matrix" 0 -1 0 0 1 0 0 0 0 0 1 0 -5.6212823349268719 -0.063369909663159252 0.19422791483994795 1;
	setAttr ".pm[4]" -type "matrix" 0 -1 0 0 1 0 0 0 0 0 1 0 -6.4973355904987509 -0.063369909663159252 0.19422791483994795 1;
	setAttr ".pm[5]" -type "matrix" 0 -1 0 0 1 0 0 0 0 0 1 0 -7.8190427280145149 -0.063369909663159252 0.19422791483994795 1;
	setAttr ".pm[6]" -type "matrix" -0.80455496714232788 0.59387819024325839 0 0 -0.59387819024325839 -0.80455496714232788 0 0
		 0 0 1 0 3.306370301488855 5.6351083079876734 -0.035275199230312193 1;
	setAttr ".pm[7]" -type "matrix" -0.80455496714232788 0.59387819024325839 0 0 -0.59387819024325839 -0.80455496714232788 0 0
		 0 0 1 0 1.3031497865501063 5.6351083079876734 -0.035275199230312228 1;
	setAttr ".pm[8]" -type "matrix" -0.80455496714232788 0.59387819024325839 0 0 -0.59387819024325839 -0.80455496714232788 0 0
		 0 0 1 0 -0.37195115360021269 5.6351083079876743 -0.035275199230312165 1;
	setAttr ".pm[9]" -type "matrix" 0.73468702406876352 0.67840620329193901 0 0 -0.67840620329193901 0.73468702406876352 0 0
		 0 0 1 0 3.7929991064960857 -5.3412423780656546 -0.05852191332862812 1;
	setAttr ".pm[10]" -type "matrix" 0.73468702406876352 0.67840620329193901 0 0 -0.67840620329193901 0.73468702406876352 0 0
		 0 0 1 0 1.968864073800302 -5.3412423780656537 -0.05852191332862812 1;
	setAttr ".pm[11]" -type "matrix" 0.73468702406876352 0.67840620329193901 0 0 -0.67840620329193901 0.73468702406876352 0 0
		 0 0 1 0 0.36664413982280647 -5.3412423780656555 -0.05852191332862812 1;
	setAttr ".pm[12]" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 3.8521120087063272 -0.80173094156780689 0.19422791483994795 1;
	setAttr ".pm[13]" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 1.8985635934762719 -0.801730941567807 0.19422791483994795 1;
	setAttr ".pm[14]" -type "matrix" 0 1 0 0 -0.049774528634421111 0 0.9987604799446268 0
		 0.9987604799446268 0 0.049774528634421111 0 0.20343062112525795 -0.80173094156780744 -0.17982189276542021 1;
	setAttr ".pm[15]" -type "matrix" 0 1 0 0 -0.049774528634421111 0 0.9987604799446268 0
		 0.9987604799446268 0 0.049774528634421111 0 -0.91456734087805036 -0.80173094156780744 -0.17982189276542029 1;
	setAttr ".pm[16]" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 3.8521120087063268 0.79255882212394679 0.19422791483994795 1;
	setAttr ".pm[17]" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 1.8985635934762715 0.79255882212394668 0.19422791483994795 1;
	setAttr ".pm[18]" -type "matrix" 0 1 0 0 -0.049774528634421111 0 0.9987604799446268 0
		 0.9987604799446268 0 0.049774528634421111 0 0.20343062112525792 0.79255882212394646 -0.17982189276541977 1;
	setAttr ".pm[19]" -type "matrix" 0 1 0 0 -0.049774528634421111 0 0.9987604799446268 0
		 0.9987604799446268 0 0.049774528634421111 0 -0.91456734087805036 0.79255882212394646 -0.17982189276541985 1;
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
createNode animCurveTA -n "pos_rotateX";
	rename -uid "168A3615-489A-A2CF-1AE2-12A5A7E3027F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pos_rotateY";
	rename -uid "475F616B-407B-6327-9BCB-7997BDC1F8A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pos_rotateZ";
	rename -uid "9E0A9B79-4669-A8A6-248C-F7A3DF5B498C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 90;
createNode animCurveTA -n "thigh_l_rotateX";
	rename -uid "7FE3042E-483F-DD79-A7A8-99BA6EC0269B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "thigh_l_rotateY";
	rename -uid "12A6AD30-4058-7122-D9B9-CC8588B1094A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "thigh_l_rotateZ";
	rename -uid "03D7D8E9-4110-CF1B-7DD4-D2A3D04206E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -90;
createNode animCurveTA -n "knee_l_rotateX";
	rename -uid "7FD7A480-447C-3667-BF50-51BAC02DF8B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "knee_l_rotateY";
	rename -uid "D218799E-4C8B-0409-FB26-12A77489BAE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "knee_l_rotateZ";
	rename -uid "CD447762-4A7E-0A18-970F-688FF9748F04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ball_l_rotateX";
	rename -uid "6A7CF6DD-4EE2-141C-4A33-3D8B1B0B6BFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ball_l_rotateY";
	rename -uid "38481DC8-4607-FB0E-4369-B686F3534534";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -87.146950680605656;
createNode animCurveTA -n "ball_l_rotateZ";
	rename -uid "36C0544D-4B48-629F-B947-FAB6F2593730";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "toe_l_rotateX";
	rename -uid "98FAADE3-4BC2-98EA-CB9D-66B5ED6E528C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "toe_l_rotateY";
	rename -uid "B3FF8016-4F90-D008-A3D5-C889AFC64836";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "toe_l_rotateZ";
	rename -uid "259DF05A-4FC2-947C-1F10-389171A4AEFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "thigh_r_rotateX";
	rename -uid "7BD2551F-4CD8-B9A3-48BD-60BF353C0514";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "thigh_r_rotateY";
	rename -uid "7039DE1B-4CF1-46ED-7537-DAAB3E002A7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "thigh_r_rotateZ";
	rename -uid "6776B900-46F7-56DC-9837-E38D686305ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -90;
createNode animCurveTA -n "knee_r_rotateX";
	rename -uid "98E64060-44E9-AA0F-E36A-B684BFFBF13E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "knee_r_rotateY";
	rename -uid "CEE6C78F-41AB-ECF5-157C-E69EFE7816B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "knee_r_rotateZ";
	rename -uid "84544595-4668-A206-B25B-75AB6E65807B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ball_r_rotateX";
	rename -uid "04A96D59-4AE2-FCF1-1F0A-459FD0662A32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ball_r_rotateY";
	rename -uid "D432697D-46BD-0EF0-BFA9-AE9F27ADF3D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -87.146950680605656;
createNode animCurveTA -n "ball_r_rotateZ";
	rename -uid "4481D2DA-4666-F6F7-4F01-BB9D90146FEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "toe_r_rotateX";
	rename -uid "77C55A8E-41F7-32F8-4A22-7DA6DCA6E6EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "toe_r_rotateY";
	rename -uid "E07DAA65-40A6-7C96-0C8A-F88CEA91FDA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "toe_r_rotateZ";
	rename -uid "390907A1-4177-D36A-A0DC-4C9A27A2E9C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "ball_l_visibility";
	rename -uid "BC47A1FE-42BE-4113-6901-1982B1E5469A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "ball_l_translateX";
	rename -uid "63D32180-4798-F3D5-DEF4-C29CF26BEC0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.7088389302770124;
createNode animCurveTL -n "ball_l_translateY";
	rename -uid "08B91B3D-4899-416D-3143-20BBD12D1BEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.4000580129145419e-16;
createNode animCurveTL -n "ball_l_translateZ";
	rename -uid "3BD95AE8-4587-C2D3-B608-0688CC370C91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "ball_l_scaleX";
	rename -uid "16043DFB-4291-BF6D-BEAE-1AA676A74616";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "ball_l_scaleY";
	rename -uid "EBED3807-429A-5262-4101-FEA306F3714A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "ball_l_scaleZ";
	rename -uid "3E4BE015-4A9B-1BEF-F7AC-40A18BF47744";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "ball_r_visibility";
	rename -uid "C62592A4-41C1-C577-6C07-9DA6F9333770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "ball_r_translateX";
	rename -uid "1B1DA7D6-4433-DA9B-636E-A1A240E827B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.7088389302770124;
createNode animCurveTL -n "ball_r_translateY";
	rename -uid "B9923111-4FB0-CEC7-98D4-36A9D7190E01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.4000580129145419e-16;
createNode animCurveTL -n "ball_r_translateZ";
	rename -uid "32C2CBEB-4AE9-79CF-DA4E-F9A16524952B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "ball_r_scaleX";
	rename -uid "CAAA2001-4C1D-84DD-0546-AF9D38EFD987";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "ball_r_scaleY";
	rename -uid "ABF29A7B-456F-BC49-4881-748CBD252E00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "ball_r_scaleZ";
	rename -uid "8DAC82F8-4E72-F367-D625-9D8B82F5F0BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "knee_l_visibility";
	rename -uid "65ECA06E-4A6D-E36E-C863-5AB1811251A5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "knee_l_translateX";
	rename -uid "1CCE5B03-4127-AAD3-F11E-5CB579AC8F4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.9535484152300553;
createNode animCurveTL -n "knee_l_translateY";
	rename -uid "AD59AD3E-44BC-220C-C50F-6EAC8CED2DEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 9.9963440303163509e-17;
createNode animCurveTL -n "knee_l_translateZ";
	rename -uid "F8D379C8-4302-73F1-39B8-4BA100587DD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "knee_l_scaleX";
	rename -uid "532A236B-4BDA-6CB2-195B-D88CBEAE25DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "knee_l_scaleY";
	rename -uid "B0CFC7AE-41D5-2941-CA5D-7F9EDFAA30CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "knee_l_scaleZ";
	rename -uid "DD421FFE-4345-CDA4-ADC3-559EA90CB4C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "knee_r_visibility";
	rename -uid "7B0BEC82-4FD2-6BBF-D1DB-4DBAEA298918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "knee_r_translateX";
	rename -uid "C22EF087-43D6-B446-22A4-C5895F7C8323";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.9535484152300553;
createNode animCurveTL -n "knee_r_translateY";
	rename -uid "EF5F0A1E-4501-69CA-55E6-459AB56D2AD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 9.9963440303163509e-17;
createNode animCurveTL -n "knee_r_translateZ";
	rename -uid "B65E33C5-4DC0-EEF0-1A09-9E8F2D88FC1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "knee_r_scaleX";
	rename -uid "9D7266F1-488D-9BBF-DD4E-94B12C179DEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "knee_r_scaleY";
	rename -uid "46AFB61D-4796-C1E5-E59C-A9ABBFC0DBCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "knee_r_scaleZ";
	rename -uid "0006CE0D-4D1F-711E-DE4E-79BA8A185759";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pos_visibility";
	rename -uid "8ED4D6E0-49C6-E81E-3885-2F8B8BAF3A19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pos_translateX";
	rename -uid "162E900C-4AAF-AE6A-CAB8-D0AA9E76749D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pos_translateY";
	rename -uid "B8B06E8A-4803-BF5F-4AE7-16B955108D1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pos_translateZ";
	rename -uid "4D5B5EEE-4DBD-4F80-A254-409148A2E0CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "pos_scaleX";
	rename -uid "3DD09B34-4821-ED62-F11C-B9AE6D7512B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pos_scaleY";
	rename -uid "C1DEFAAC-43E6-5469-2253-A48A5C923480";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pos_scaleZ";
	rename -uid "35A50F43-4B83-3EB2-C6E7-9989041DDA27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "thigh_l_visibility";
	rename -uid "82F772D0-4DFB-E64D-B382-F9A10D84F3AC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "thigh_l_translateX";
	rename -uid "FE93AEA2-4003-620B-60AF-6D9A4EC5FA36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -8.8817841970012523e-16;
createNode animCurveTL -n "thigh_l_translateY";
	rename -uid "7E07A8EF-4BDA-38F6-4885-32887B1BCD76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.86510085123096658;
createNode animCurveTL -n "thigh_l_translateZ";
	rename -uid "511BBBF2-470E-B674-A61C-30BA3B4A10FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "thigh_l_scaleX";
	rename -uid "C68456C0-45C1-E4A4-EDE6-53A1B360080E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "thigh_l_scaleY";
	rename -uid "D95266DC-4457-2BCF-1F0D-3B992FE9EB76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "thigh_l_scaleZ";
	rename -uid "8B07FE1E-4F0B-0BE1-8353-B29060502C70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "thigh_r_visibility";
	rename -uid "ED99BB81-4F0A-F570-326C-A4B426AEF7D3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "thigh_r_translateX";
	rename -uid "9950D339-457E-E07D-2DCA-CA80886CF416";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.3322676295501878e-15;
createNode animCurveTL -n "thigh_r_translateY";
	rename -uid "D53EDB4F-4FBB-98EE-078A-1E9663883D87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.7291889124607871;
createNode animCurveTL -n "thigh_r_translateZ";
	rename -uid "E67B1C78-44CA-7B96-C437-02BF4AD6213F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "thigh_r_scaleX";
	rename -uid "C87DC9CA-453F-578E-BEEA-F387139EA443";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "thigh_r_scaleY";
	rename -uid "A83121A9-4ECA-8C56-D5FF-44B1A7706D1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "thigh_r_scaleZ";
	rename -uid "4CC2B4A3-4B0C-F81F-723C-988C5185660F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "toe_l_visibility";
	rename -uid "D5E09BF8-4571-8FE6-3535-4292DD85C0FC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "toe_l_translateX";
	rename -uid "FD68C930-47FC-7BF1-ABE5-60B66353E389";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.1179979620033083;
createNode animCurveTL -n "toe_l_translateY";
	rename -uid "8653F2EF-4CC1-78CD-BACA-EDA0C70BF9EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "toe_l_translateZ";
	rename -uid "180663F2-4B38-952D-FD2D-B29C839FF377";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 7.8062556418956319e-17;
createNode animCurveTU -n "toe_l_scaleX";
	rename -uid "8590762C-408F-B568-8832-418D495A8FE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "toe_l_scaleY";
	rename -uid "C45CCE8C-48AB-2D82-AF20-A7983FA63E6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "toe_l_scaleZ";
	rename -uid "24979D22-444E-CFB4-9503-EE906C9C1737";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "toe_r_visibility";
	rename -uid "564312BE-4D68-4EB5-470F-E4B83E737B46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "toe_r_translateX";
	rename -uid "C114810F-455A-3DC9-B8FC-1193887D0B65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.1179979620033083;
createNode animCurveTL -n "toe_r_translateY";
	rename -uid "D956A95A-43AB-62EE-03EB-8EAEB514B1C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "toe_r_translateZ";
	rename -uid "2FA8369E-4398-A96B-48D6-08B15A416CBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 7.8062556418956319e-17;
createNode animCurveTU -n "toe_r_scaleX";
	rename -uid "1C677959-47D1-C8AB-C2EC-65AF30A93359";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "toe_r_scaleY";
	rename -uid "B7D54DCB-45A0-038A-6B02-C986A0A3BD56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "toe_r_scaleZ";
	rename -uid "F65422C5-4244-AEE7-3F01-C89A4475A81F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "spine_base_rotateY";
	rename -uid "809FF0D5-4720-AB92-8EE2-BF81BE878302";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 40 0 80 0 85 0 125 0 150 0;
createNode animCurveTA -n "spine_base_rotateZ";
	rename -uid "20106919-44B8-9459-AA05-7583CAF6D8B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 90 40 90 80 90 85 90 125 90 150 90;
createNode animCurveTA -n "spine_base_rotateX";
	rename -uid "F3FF0F92-4FD5-9B76-AF3A-3CA6CAEDC269";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 40 0 80 -35.939219452990343 85 -35.939219452990343
		 125 13.430730591795154 150 0;
createNode animCurveTU -n "spine_base_scaleX";
	rename -uid "D3DCC42B-490B-D403-9AA1-7993C0C13218";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 40 1 80 1 85 1 125 1 150 1;
createNode animCurveTL -n "spine_base_translateZ";
	rename -uid "FF1BB4AD-4F4C-4149-2E47-14AD2829A142";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 40 0 80 0 85 0 125 0 150 0;
createNode animCurveTL -n "spine_base_translateY";
	rename -uid "6EB7B8BA-4AC3-A098-7963-E2803D14666F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 40 0 80 0 85 0 125 0 150 0;
createNode animCurveTL -n "spine_base_translateX";
	rename -uid "70685854-4C13-DE99-F481-03A46C45860C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 40 0 80 0 85 0 125 0 150 0;
createNode animCurveTU -n "spine_base_visibility";
	rename -uid "78AF2B84-4A5B-E103-6CD7-B397AA17CB61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 40 1 80 1 85 1 125 1 150 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "spine_base_scaleZ";
	rename -uid "37F28029-4D8B-EA23-3DAA-47A404FE359F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 40 1 80 1 85 1 125 1 150 1;
createNode animCurveTU -n "spine_base_scaleY";
	rename -uid "815832DD-442D-405B-238A-2E9E06F2FEF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 40 1 80 1 85 1 125 1 150 1;
createNode animCurveTU -n "joint2_scaleZ";
	rename -uid "56FFE45B-4DC7-6863-C0EC-618A18853C02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "joint2_rotateY";
	rename -uid "0530E70C-4284-1CA9-A7F2-E8A664C288B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint2_rotateX";
	rename -uid "B5F92BFD-4B1B-33C3-8B97-D9B85BCB3213";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint2_rotateZ";
	rename -uid "3CC46A5F-4D17-CBA5-54EE-22921F9E3229";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "joint2_visibility";
	rename -uid "6B72B28B-4B8F-CD47-26A7-9AA5074ACB30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint2_translateY";
	rename -uid "2E8B0EF8-462F-DC14-A646-F1AD672204F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -4.4408920985006262e-16;
createNode animCurveTL -n "joint2_translateX";
	rename -uid "9A848D0B-4FD9-D856-DD44-D5B1B676CC36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.8256662917916322;
createNode animCurveTL -n "joint2_translateZ";
	rename -uid "D0D93F45-4B08-9BE8-20C2-A9B0AF45F6EA";
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
createNode animCurveTA -n "spine_2_rotateZ";
	rename -uid "391065A3-42AA-1B37-EF08-6F8145A88CAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "spine_2_rotateY";
	rename -uid "176F0427-4A21-AAE3-0B5C-3B97DF2605C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "spine_2_rotateX";
	rename -uid "1A769E59-4F76-A85B-B4A6-FBA8FA4183DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "spine_2_scaleZ";
	rename -uid "8B0B61F9-4577-3E4C-9F38-C79F94863B8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "spine_2_visibility";
	rename -uid "AA831D41-45DB-ED2F-EB65-BEBED9D69CB8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "spine_2_scaleY";
	rename -uid "5D9CB7AB-41B2-3954-A933-D4A024CDA6C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "spine_2_scaleX";
	rename -uid "E2DA71C8-4FC3-EA4F-95F3-8CB6350D9538";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTL -n "spine_2_translateY";
	rename -uid "A40967FD-44CE-3858-9D87-3B95525C28F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "spine_2_translateZ";
	rename -uid "D5E4337B-4013-B113-92E2-5AB45E4D807D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "spine_2_translateX";
	rename -uid "C1F63D75-4775-E740-781B-2DB247855E8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.94350403442891118;
createNode animCurveTU -n "spine_top_visibility";
	rename -uid "08BE389D-4122-4E95-B6D3-328235767019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 50 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "spine_top_translateX";
	rename -uid "4DC6247D-40AC-5836-BCD6-3080DD664B8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.87605325557187896 50 0.87605325557187896;
createNode animCurveTU -n "spine_top_scaleY";
	rename -uid "170EB25F-457D-C1B4-F040-E99799987091";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 50 1;
createNode animCurveTU -n "spine_top_scaleX";
	rename -uid "E965611F-4D46-FA3E-8CDF-34B7F64D2E67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 50 1;
createNode animCurveTU -n "spine_top_scaleZ";
	rename -uid "51CBF924-4FF7-C35F-B459-BA9818DEFD11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 50 1;
createNode animCurveTL -n "spine_top_translateY";
	rename -uid "838611CB-4323-9235-A8B6-2CAD63FF63B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 50 0;
createNode animCurveTL -n "spine_top_translateZ";
	rename -uid "E31294C8-4A2F-915C-A850-F88EE50477D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 50 0;
createNode animCurveTA -n "spine_top_rotateX";
	rename -uid "4C3422DB-4FC0-AD1C-913A-E78DE4D6F230";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 50 0;
createNode animCurveTA -n "spine_top_rotateZ";
	rename -uid "CABC5999-4C22-E01D-EAF8-C5A883CE3FC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 50 0;
createNode animCurveTA -n "spine_top_rotateY";
	rename -uid "6E1C4C21-451F-0601-23DE-F1B0DE3791D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 50 0;
createNode animCurveTU -n "head_visibility";
	rename -uid "9486CECF-44E9-1C8F-6F36-0E8A87D6DB14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "head_scaleX";
	rename -uid "27AD8117-4CF0-4301-5708-3ABA61B49E5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTL -n "head_translateZ";
	rename -uid "6279B2E4-49E2-59CA-1E18-E2BFF5D9436D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "head_translateY";
	rename -uid "0547CA0C-4E6E-93F8-64F2-648CEA3B0572";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "head_translateX";
	rename -uid "CDB6F67B-4A71-AAF6-1E70-558E32DD1BB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.3217071375157641;
createNode animCurveTU -n "head_scaleY";
	rename -uid "223B5609-405B-A074-83D0-61AF0226CF9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "head_scaleZ";
	rename -uid "1E279084-496D-2AB2-14D9-1B9F255A181D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "head_rotateY";
	rename -uid "11D057DE-47CF-4B64-0616-AB9D500CA461";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "head_rotateX";
	rename -uid "FD7EE258-4AED-7D04-686E-5597E46C1098";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "head_rotateZ";
	rename -uid "E2D54DDA-4B4C-218C-66C1-D9A3F53637B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "shoulder_r_rotateX";
	rename -uid "A9DD49E2-408D-AE79-052F-4DB78D9AED4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.14079631966271472;
createNode animCurveTA -n "shoulder_r_rotateY";
	rename -uid "6E689121-48CA-A8C1-F82F-E3BC35C335B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -4.1713696627319976;
createNode animCurveTA -n "shoulder_r_rotateZ";
	rename -uid "BB6B21E6-4968-F317-829A-C8B446866370";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 146.19267785234621;
createNode animCurveTU -n "shoulder_r_scaleY";
	rename -uid "53CD9E89-4502-4533-B3AD-2CB0B77B1635";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTL -n "shoulder_r_translateZ";
	rename -uid "E8D152E5-4221-C630-5843-AF98F522018D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.22950311407026014;
createNode animCurveTL -n "shoulder_r_translateY";
	rename -uid "E8406741-46C6-84E7-3C7C-8E81AFD02A12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.62304136483457551;
createNode animCurveTL -n "shoulder_r_translateX";
	rename -uid "1DE599FF-4E99-2908-BF27-A7A861129730";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.2434497875801753e-14;
createNode animCurveTU -n "shoulder_r_scaleX";
	rename -uid "79915685-476E-B1A6-512A-ECB67C79959B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "shoulder_r_visibility";
	rename -uid "FA3E3C49-4061-E422-C130-FDADF8DBA142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "shoulder_r_scaleZ";
	rename -uid "A42E2D73-4AEE-AFEF-E9CB-0890EDF3088A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "elbow_r_scaleX";
	rename -uid "F904F0F8-4AD3-1E24-576C-5D981C90058A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTL -n "elbow_r_translateX";
	rename -uid "7E2AAAD7-4B94-4AD3-42FB-7995380EB98F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.0032205149387483;
createNode animCurveTL -n "elbow_r_translateY";
	rename -uid "43CF707A-48CC-E0C6-53BF-B8A1A2183E99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.7755575615628914e-16;
createNode animCurveTU -n "elbow_r_scaleY";
	rename -uid "BE45CACA-4D1A-14B7-2D9B-97BB182B3F98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTL -n "elbow_r_translateZ";
	rename -uid "BA09A8FE-4797-9041-2945-8DB1CBF3013B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.7755575615628914e-17;
createNode animCurveTU -n "elbow_r_scaleZ";
	rename -uid "B6DCA96A-41E9-175A-AA96-E4A697C83463";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "elbow_r_visibility";
	rename -uid "062A1619-494E-DEB0-B157-EE9B5F3DCCA7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "elbow_r_rotateZ";
	rename -uid "73884F29-46C6-86C0-2F4E-A98ACD7D613A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "elbow_r_rotateY";
	rename -uid "D601D7A7-4BC6-4A75-D30F-42907B075CA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "elbow_r_rotateX";
	rename -uid "D12BB776-471C-16AA-2A70-E0B9AA126786";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "wrist_r_rotateY";
	rename -uid "AC04340A-4ED0-CFDB-5E56-508406F7C6D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "wrist_r_rotateZ";
	rename -uid "668013FE-4E7B-7054-CE0B-DBB59A4F5B13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "wrist_r_rotateX";
	rename -uid "2EA89768-472F-D0A5-4FD1-21919FB369D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "wrist_r_scaleY";
	rename -uid "2E909859-4DF6-3B5D-005F-6FBABED28A04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTL -n "wrist_r_translateY";
	rename -uid "1146CCB2-427B-00EE-9B90-4DB0CA0F2B5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -8.8817841970012523e-16;
createNode animCurveTL -n "wrist_r_translateX";
	rename -uid "F4F3378E-4556-484D-A82D-A7A17304DDCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.675100940150319;
createNode animCurveTU -n "wrist_r_scaleX";
	rename -uid "F7A6365F-46B4-005D-CAB2-8F8EFF75CB32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "wrist_r_visibility";
	rename -uid "A2B4D5CF-4581-04D0-5D81-E3968ACFCE15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "wrist_r_scaleZ";
	rename -uid "A8CB57EB-4F82-DDD4-573B-D590395EE6D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTL -n "wrist_r_translateZ";
	rename -uid "E2ABC04D-4E61-9EF5-4F02-D098C6ED2446";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -5.5511151231257827e-17;
createNode animCurveTA -n "shoulder_l_rotateY";
	rename -uid "1DF4FA92-485D-F40A-A41C-6A87EAF895D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 50 -13.700147966064387 70 -57.469452864136663
		 80 -57.469452864136663 85 -57.469452864136663 105 -31.245072851954134 120 21.261864246743833
		 150 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTA -n "shoulder_l_rotateX";
	rename -uid "441F9D3B-4CEC-E0FF-CFA6-B3B62D7901CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 50 -49.65088376282214 70 0.093427060945009813
		 80 0.093427060945009813 85 0.093427060945009813 105 0.058763590415306148 120 0.053909800177128195
		 150 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTA -n "shoulder_l_rotateZ";
	rename -uid "95D1EDCD-448E-600C-4F2F-5FB844FE9828";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -158.78448238953496 50 -34.867721568770833
		 70 -113.6108511038378 80 -113.6108511038378 85 -113.6108511038378 105 -113.5625629407516
		 120 -113.51253290305989 150 -158.78448238953496;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTL -n "shoulder_l_translateY";
	rename -uid "95A65975-43AD-6584-7D97-ABA27FFE1B57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -0.90023464638159989 50 -0.90023464638159989
		 70 -0.90023464638159989 80 -1.4528075588167475 85 -1.7557946809351181 105 -1.3250454823015667
		 120 -1.3250454823015667 150 -0.90023464638159989;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTU -n "shoulder_l_scaleX";
	rename -uid "EB0C5B0B-47F5-799F-09EE-1690ED87E725";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 50 1 70 1 80 1 85 1 105 1 120 1 150 1;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTU -n "shoulder_l_scaleY";
	rename -uid "A98B5035-4513-B135-3E2D-A888A8CE832A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 50 1 70 1 80 1 85 1 105 1 120 1 150 1;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTL -n "shoulder_l_translateX";
	rename -uid "04621849-4DA6-7B03-E773-7B8182974924";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 50 0 70 0 80 0 85 0 105 0 120 0 150 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTU -n "shoulder_l_scaleZ";
	rename -uid "55A5D580-4CFD-A6F0-F743-229B3048D042";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 50 1 70 1 80 1 85 1 105 1 120 1 150 1;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTL -n "shoulder_l_translateZ";
	rename -uid "1E9CF02A-438A-7B27-FF79-6BA21074A6AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0.25274982816857605 50 0.25274982816857605
		 70 0.25274982816857605 80 1.0150003336730049 85 1.4329580036902909 105 0.021263421920636814
		 120 0.021263421920636814 150 0.25274982816857605;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTU -n "shoulder_l_visibility";
	rename -uid "A3692186-498B-17A2-10DC-DBA8B5F5E9E0";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 50 1 70 1 80 1 85 1 105 1 120 1 150 1;
	setAttr -s 8 ".kit[0:7]"  9 9 9 9 9 9 9 1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTU -n "elbow_l_scaleZ";
	rename -uid "87BD0C5F-4B54-790F-9799-C484CA7D738B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 50 1 80 1 110 1 120 1 150 1;
createNode animCurveTA -n "elbow_l_rotateX";
	rename -uid "67484D88-484A-3D11-D333-2DA9B1C8CC95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 50 0 80 0 110 0 120 0 150 0;
createNode animCurveTA -n "elbow_l_rotateY";
	rename -uid "00C125EE-4D6D-17CA-F922-9D85D78F20FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 50 0 80 0 110 0 120 -36.921324030721109
		 150 0;
createNode animCurveTA -n "elbow_l_rotateZ";
	rename -uid "87E8C448-4671-EA9A-F0B6-60A86C163A1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 50 0 80 0 110 0 120 0 150 0;
createNode animCurveTL -n "elbow_l_translateX";
	rename -uid "C07167D3-47E9-10B1-E61E-C39FE0FEEB41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1.8241350326957835 50 1.8241350326957835
		 80 2.7563489176658247 110 1.8284036894290825 120 1.8284036894290825 150 1.824;
createNode animCurveTU -n "elbow_l_visibility";
	rename -uid "79D5A368-4B2C-636F-77A0-D9AD3362A9BB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 50 1 80 1 110 1 120 1 150 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTL -n "elbow_l_translateZ";
	rename -uid "ABE8C53E-45D0-DEE4-5631-24B335CD5735";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 50 0 80 -0.017665757427423677 110 -0.033921167900469229
		 120 -0.033921167900469229 150 0;
createNode animCurveTL -n "elbow_l_translateY";
	rename -uid "73F5B394-480B-C772-5DC7-94AFACBC69C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -8.3266726846886741e-16 50 -8.3266726846886741e-16
		 80 0.2254708738555859 110 -0.11677959066612725 120 -0.11677959066612725 150 0;
createNode animCurveTU -n "elbow_l_scaleX";
	rename -uid "96EA213C-4EFF-015D-58FC-13AD761448DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 50 1 80 1 110 1 120 1 150 1;
createNode animCurveTU -n "elbow_l_scaleY";
	rename -uid "E31B7AE4-44DF-88A5-5166-8F84FFB789CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 50 1 80 1 110 1 120 1 150 1;
createNode animCurveTA -n "wrist_l_rotateY";
	rename -uid "35D26CD0-4D36-F78B-4153-61BB709DFCC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 50 0;
createNode animCurveTA -n "wrist_l_rotateZ";
	rename -uid "10A83B7D-4C60-6CB9-6D77-8B8A5CD85AB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 50 0;
createNode animCurveTA -n "wrist_l_rotateX";
	rename -uid "4B2A6BCB-4198-4666-21C5-31B032F06ADF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 50 0;
createNode animCurveTU -n "wrist_l_scaleY";
	rename -uid "4CB6809D-4A2D-6E3A-7153-14B0A3439EDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 50 1;
createNode animCurveTU -n "wrist_l_scaleZ";
	rename -uid "8D53E593-4C26-5E96-D5EF-F3BA0BE9788B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 50 1;
createNode animCurveTU -n "wrist_l_scaleX";
	rename -uid "9C407962-45D0-232E-9913-BFB6E5E42CFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 50 1;
createNode animCurveTL -n "wrist_l_translateZ";
	rename -uid "0ECE85A8-4BC2-6DBF-3034-1BB04AE9853F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 50 0;
createNode animCurveTL -n "wrist_l_translateY";
	rename -uid "8F4F6614-468F-C7F1-8F7B-3292B58CE157";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 9.9920072216264089e-16 50 9.9920072216264089e-16;
createNode animCurveTL -n "wrist_l_translateX";
	rename -uid "2B5DB261-43DB-EAD5-E294-D787A1F64D4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.6022199339774956 50 1.6022199339774956;
createNode animCurveTU -n "wrist_l_visibility";
	rename -uid "37B0C9FD-4428-5AC5-3B16-2299302D759D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 50 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
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
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "pos_scaleX.o" "pos.sx";
connectAttr "pos_scaleY.o" "pos.sy";
connectAttr "pos_scaleZ.o" "pos.sz";
connectAttr "pos_rotateX.o" "pos.rx";
connectAttr "pos_rotateY.o" "pos.ry";
connectAttr "pos_rotateZ.o" "pos.rz";
connectAttr "pos_visibility.o" "pos.v";
connectAttr "pos_translateX.o" "pos.tx";
connectAttr "pos_translateY.o" "pos.ty";
connectAttr "pos_translateZ.o" "pos.tz";
connectAttr "pos.s" "spine_base.is";
connectAttr "spine_base_scaleX.o" "spine_base.sx";
connectAttr "spine_base_scaleY.o" "spine_base.sy";
connectAttr "spine_base_scaleZ.o" "spine_base.sz";
connectAttr "spine_base_rotateX.o" "spine_base.rx";
connectAttr "spine_base_rotateY.o" "spine_base.ry";
connectAttr "spine_base_rotateZ.o" "spine_base.rz";
connectAttr "spine_base_visibility.o" "spine_base.v";
connectAttr "spine_base_translateX.o" "spine_base.tx";
connectAttr "spine_base_translateY.o" "spine_base.ty";
connectAttr "spine_base_translateZ.o" "spine_base.tz";
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
connectAttr "spine_2_rotateX.o" "spine_2.rx";
connectAttr "spine_2_rotateY.o" "spine_2.ry";
connectAttr "spine_2_rotateZ.o" "spine_2.rz";
connectAttr "spine_2_visibility.o" "spine_2.v";
connectAttr "spine_2_translateX.o" "spine_2.tx";
connectAttr "spine_2_translateY.o" "spine_2.ty";
connectAttr "spine_2_translateZ.o" "spine_2.tz";
connectAttr "spine_2.s" "spine_top.is";
connectAttr "spine_top_scaleX.o" "spine_top.sx";
connectAttr "spine_top_scaleY.o" "spine_top.sy";
connectAttr "spine_top_scaleZ.o" "spine_top.sz";
connectAttr "spine_top_rotateX.o" "spine_top.rx";
connectAttr "spine_top_rotateY.o" "spine_top.ry";
connectAttr "spine_top_rotateZ.o" "spine_top.rz";
connectAttr "spine_top_visibility.o" "spine_top.v";
connectAttr "spine_top_translateX.o" "spine_top.tx";
connectAttr "spine_top_translateY.o" "spine_top.ty";
connectAttr "spine_top_translateZ.o" "spine_top.tz";
connectAttr "spine_top.s" "head.is";
connectAttr "head_rotateX.o" "head.rx";
connectAttr "head_rotateY.o" "head.ry";
connectAttr "head_rotateZ.o" "head.rz";
connectAttr "head_visibility.o" "head.v";
connectAttr "head_translateX.o" "head.tx";
connectAttr "head_translateY.o" "head.ty";
connectAttr "head_translateZ.o" "head.tz";
connectAttr "head_scaleX.o" "head.sx";
connectAttr "head_scaleY.o" "head.sy";
connectAttr "head_scaleZ.o" "head.sz";
connectAttr "spine_top.s" "shoulder_r.is";
connectAttr "shoulder_r_scaleX.o" "shoulder_r.sx";
connectAttr "shoulder_r_scaleY.o" "shoulder_r.sy";
connectAttr "shoulder_r_scaleZ.o" "shoulder_r.sz";
connectAttr "shoulder_r_rotateX.o" "shoulder_r.rx";
connectAttr "shoulder_r_rotateY.o" "shoulder_r.ry";
connectAttr "shoulder_r_rotateZ.o" "shoulder_r.rz";
connectAttr "shoulder_r_visibility.o" "shoulder_r.v";
connectAttr "shoulder_r_translateX.o" "shoulder_r.tx";
connectAttr "shoulder_r_translateY.o" "shoulder_r.ty";
connectAttr "shoulder_r_translateZ.o" "shoulder_r.tz";
connectAttr "shoulder_r.s" "elbow_r.is";
connectAttr "elbow_r_scaleX.o" "elbow_r.sx";
connectAttr "elbow_r_scaleY.o" "elbow_r.sy";
connectAttr "elbow_r_scaleZ.o" "elbow_r.sz";
connectAttr "elbow_r_rotateX.o" "elbow_r.rx";
connectAttr "elbow_r_rotateY.o" "elbow_r.ry";
connectAttr "elbow_r_rotateZ.o" "elbow_r.rz";
connectAttr "elbow_r_visibility.o" "elbow_r.v";
connectAttr "elbow_r_translateX.o" "elbow_r.tx";
connectAttr "elbow_r_translateY.o" "elbow_r.ty";
connectAttr "elbow_r_translateZ.o" "elbow_r.tz";
connectAttr "elbow_r.s" "wrist_r.is";
connectAttr "wrist_r_rotateX.o" "wrist_r.rx";
connectAttr "wrist_r_rotateY.o" "wrist_r.ry";
connectAttr "wrist_r_rotateZ.o" "wrist_r.rz";
connectAttr "wrist_r_visibility.o" "wrist_r.v";
connectAttr "wrist_r_translateX.o" "wrist_r.tx";
connectAttr "wrist_r_translateY.o" "wrist_r.ty";
connectAttr "wrist_r_translateZ.o" "wrist_r.tz";
connectAttr "wrist_r_scaleX.o" "wrist_r.sx";
connectAttr "wrist_r_scaleY.o" "wrist_r.sy";
connectAttr "wrist_r_scaleZ.o" "wrist_r.sz";
connectAttr "spine_top.s" "shoulder_l.is";
connectAttr "shoulder_l_scaleX.o" "shoulder_l.sx";
connectAttr "shoulder_l_scaleY.o" "shoulder_l.sy";
connectAttr "shoulder_l_scaleZ.o" "shoulder_l.sz";
connectAttr "shoulder_l_rotateX.o" "shoulder_l.rx";
connectAttr "shoulder_l_rotateY.o" "shoulder_l.ry";
connectAttr "shoulder_l_rotateZ.o" "shoulder_l.rz";
connectAttr "shoulder_l_visibility.o" "shoulder_l.v";
connectAttr "shoulder_l_translateX.o" "shoulder_l.tx";
connectAttr "shoulder_l_translateY.o" "shoulder_l.ty";
connectAttr "shoulder_l_translateZ.o" "shoulder_l.tz";
connectAttr "shoulder_l.s" "elbow_l.is";
connectAttr "elbow_l_scaleX.o" "elbow_l.sx";
connectAttr "elbow_l_scaleY.o" "elbow_l.sy";
connectAttr "elbow_l_scaleZ.o" "elbow_l.sz";
connectAttr "elbow_l_rotateX.o" "elbow_l.rx";
connectAttr "elbow_l_rotateY.o" "elbow_l.ry";
connectAttr "elbow_l_rotateZ.o" "elbow_l.rz";
connectAttr "elbow_l_visibility.o" "elbow_l.v";
connectAttr "elbow_l_translateX.o" "elbow_l.tx";
connectAttr "elbow_l_translateY.o" "elbow_l.ty";
connectAttr "elbow_l_translateZ.o" "elbow_l.tz";
connectAttr "elbow_l.s" "wrist_l.is";
connectAttr "wrist_l_rotateX.o" "wrist_l.rx";
connectAttr "wrist_l_rotateY.o" "wrist_l.ry";
connectAttr "wrist_l_rotateZ.o" "wrist_l.rz";
connectAttr "wrist_l_visibility.o" "wrist_l.v";
connectAttr "wrist_l_translateX.o" "wrist_l.tx";
connectAttr "wrist_l_translateY.o" "wrist_l.ty";
connectAttr "wrist_l_translateZ.o" "wrist_l.tz";
connectAttr "wrist_l_scaleX.o" "wrist_l.sx";
connectAttr "wrist_l_scaleY.o" "wrist_l.sy";
connectAttr "wrist_l_scaleZ.o" "wrist_l.sz";
connectAttr "pos.s" "thigh_l.is";
connectAttr "thigh_l_scaleX.o" "thigh_l.sx";
connectAttr "thigh_l_scaleY.o" "thigh_l.sy";
connectAttr "thigh_l_scaleZ.o" "thigh_l.sz";
connectAttr "thigh_l_rotateX.o" "thigh_l.rx";
connectAttr "thigh_l_rotateY.o" "thigh_l.ry";
connectAttr "thigh_l_rotateZ.o" "thigh_l.rz";
connectAttr "thigh_l_visibility.o" "thigh_l.v";
connectAttr "thigh_l_translateX.o" "thigh_l.tx";
connectAttr "thigh_l_translateY.o" "thigh_l.ty";
connectAttr "thigh_l_translateZ.o" "thigh_l.tz";
connectAttr "thigh_l.s" "knee_l.is";
connectAttr "knee_l_scaleX.o" "knee_l.sx";
connectAttr "knee_l_scaleY.o" "knee_l.sy";
connectAttr "knee_l_scaleZ.o" "knee_l.sz";
connectAttr "knee_l_rotateX.o" "knee_l.rx";
connectAttr "knee_l_rotateY.o" "knee_l.ry";
connectAttr "knee_l_rotateZ.o" "knee_l.rz";
connectAttr "knee_l_visibility.o" "knee_l.v";
connectAttr "knee_l_translateX.o" "knee_l.tx";
connectAttr "knee_l_translateY.o" "knee_l.ty";
connectAttr "knee_l_translateZ.o" "knee_l.tz";
connectAttr "knee_l.s" "ball_l.is";
connectAttr "ball_l_scaleX.o" "ball_l.sx";
connectAttr "ball_l_scaleY.o" "ball_l.sy";
connectAttr "ball_l_scaleZ.o" "ball_l.sz";
connectAttr "ball_l_rotateX.o" "ball_l.rx";
connectAttr "ball_l_rotateY.o" "ball_l.ry";
connectAttr "ball_l_rotateZ.o" "ball_l.rz";
connectAttr "ball_l_visibility.o" "ball_l.v";
connectAttr "ball_l_translateX.o" "ball_l.tx";
connectAttr "ball_l_translateY.o" "ball_l.ty";
connectAttr "ball_l_translateZ.o" "ball_l.tz";
connectAttr "ball_l.s" "toe_l.is";
connectAttr "toe_l_rotateX.o" "toe_l.rx";
connectAttr "toe_l_rotateY.o" "toe_l.ry";
connectAttr "toe_l_rotateZ.o" "toe_l.rz";
connectAttr "toe_l_visibility.o" "toe_l.v";
connectAttr "toe_l_translateX.o" "toe_l.tx";
connectAttr "toe_l_translateY.o" "toe_l.ty";
connectAttr "toe_l_translateZ.o" "toe_l.tz";
connectAttr "toe_l_scaleX.o" "toe_l.sx";
connectAttr "toe_l_scaleY.o" "toe_l.sy";
connectAttr "toe_l_scaleZ.o" "toe_l.sz";
connectAttr "pos.s" "thigh_r.is";
connectAttr "thigh_r_scaleX.o" "thigh_r.sx";
connectAttr "thigh_r_scaleY.o" "thigh_r.sy";
connectAttr "thigh_r_scaleZ.o" "thigh_r.sz";
connectAttr "thigh_r_rotateX.o" "thigh_r.rx";
connectAttr "thigh_r_rotateY.o" "thigh_r.ry";
connectAttr "thigh_r_rotateZ.o" "thigh_r.rz";
connectAttr "thigh_r_visibility.o" "thigh_r.v";
connectAttr "thigh_r_translateX.o" "thigh_r.tx";
connectAttr "thigh_r_translateY.o" "thigh_r.ty";
connectAttr "thigh_r_translateZ.o" "thigh_r.tz";
connectAttr "thigh_r.s" "knee_r.is";
connectAttr "knee_r_scaleX.o" "knee_r.sx";
connectAttr "knee_r_scaleY.o" "knee_r.sy";
connectAttr "knee_r_scaleZ.o" "knee_r.sz";
connectAttr "knee_r_rotateX.o" "knee_r.rx";
connectAttr "knee_r_rotateY.o" "knee_r.ry";
connectAttr "knee_r_rotateZ.o" "knee_r.rz";
connectAttr "knee_r_visibility.o" "knee_r.v";
connectAttr "knee_r_translateX.o" "knee_r.tx";
connectAttr "knee_r_translateY.o" "knee_r.ty";
connectAttr "knee_r_translateZ.o" "knee_r.tz";
connectAttr "knee_r.s" "ball_r.is";
connectAttr "ball_r_scaleX.o" "ball_r.sx";
connectAttr "ball_r_scaleY.o" "ball_r.sy";
connectAttr "ball_r_scaleZ.o" "ball_r.sz";
connectAttr "ball_r_rotateX.o" "ball_r.rx";
connectAttr "ball_r_rotateY.o" "ball_r.ry";
connectAttr "ball_r_rotateZ.o" "ball_r.rz";
connectAttr "ball_r_visibility.o" "ball_r.v";
connectAttr "ball_r_translateX.o" "ball_r.tx";
connectAttr "ball_r_translateY.o" "ball_r.ty";
connectAttr "ball_r_translateZ.o" "ball_r.tz";
connectAttr "ball_r.s" "toe_r.is";
connectAttr "toe_r_rotateX.o" "toe_r.rx";
connectAttr "toe_r_rotateY.o" "toe_r.ry";
connectAttr "toe_r_rotateZ.o" "toe_r.rz";
connectAttr "toe_r_visibility.o" "toe_r.v";
connectAttr "toe_r_translateX.o" "toe_r.tx";
connectAttr "toe_r_translateY.o" "toe_r.ty";
connectAttr "toe_r_translateZ.o" "toe_r.tz";
connectAttr "toe_r_scaleX.o" "toe_r.sx";
connectAttr "toe_r_scaleY.o" "toe_r.sy";
connectAttr "toe_r_scaleZ.o" "toe_r.sz";
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
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "SquareManShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
// End of squareMAN-test-attack.ma
