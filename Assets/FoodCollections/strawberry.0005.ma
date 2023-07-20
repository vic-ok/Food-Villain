//Maya ASCII 2016 scene
//Name: strawberry.0005.ma
//Last modified: Wed, Nov 01, 2017 08:14:53 PM
//Codeset: 1252
requires maya "2016";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2016.0 - 3.13.1.2 ";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "exportedFrom" "E:/Maya Projects/LowPoly/scenes/strawberry.ma";
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 , 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "CB8F9ABF-4FC6-F311-B143-BB9895C03862";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.861211237840859 2.5871923884769865 -3.1413896501451135 ;
	setAttr ".r" -type "double3" -15.938352621012129 3351.3999999950993 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "EE7D4105-4C98-FE85-DCAD-6D8F7F30DB7C";
	setAttr -k off ".v" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 9.2472104574889773;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dfg" yes;
createNode transform -s -n "top";
	rename -uid "5E330D39-427E-14B0-7D4F-5685F3CED777";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A6EBB0F8-4E99-DEAD-E73B-C8BE0F4BE451";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "B3D7C2CE-461E-6701-2835-D1BDF62CF8F4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1081BBE0-43D4-639B-BF1E-2A98A8FDAC38";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "C3221D45-48DB-48C3-6721-D8A4146D4893";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "45ED091A-4069-A955-C58B-2E9AF0195AE7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pSphere1";
	rename -uid "6C2A1FD7-4886-5255-3FC5-A38E69D87AB9";
	setAttr ".s" -type "double3" 1.4395144769453883 1.4395144769453883 1.4395144769453883 ;
createNode transform -n "transform3" -p "pSphere1";
	rename -uid "E665EDED-49E4-AAFB-28F5-DC85AD9809C1";
	setAttr ".v" no;
createNode mesh -n "pSphereShape1" -p "transform3";
	rename -uid "8123CBF7-4DFF-BA29-0015-90A1F0D58EC1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.49999095126986504 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1118 ".pt";
	setAttr ".pt[5297]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5299]" -type "float3" 0 0 -5.8207661e-011 ;
	setAttr ".pt[5302]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5303]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5305]" -type "float3" -1.8189894e-012 0 0 ;
	setAttr ".pt[5306]" -type "float3" 7.2759576e-012 0 0 ;
	setAttr ".pt[5308]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5310]" -type "float3" -2.910383e-011 0 0 ;
	setAttr ".pt[5311]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5312]" -type "float3" -5.8207661e-011 0 1.1641532e-010 ;
	setAttr ".pt[5313]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5314]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5315]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5317]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5319]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5320]" -type "float3" 1.1641532e-010 0 -5.8207661e-011 ;
	setAttr ".pt[5321]" -type "float3" 0 0 7.2759576e-012 ;
	setAttr ".pt[5324]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5325]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5326]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5327]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5328]" -type "float3" 0 0 -5.8207661e-011 ;
	setAttr ".pt[5329]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5330]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5331]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5332]" -type "float3" 1.1641532e-010 0 1.1641532e-010 ;
	setAttr ".pt[5333]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5338]" -type "float3" -7.2759576e-012 0 -1.1641532e-010 ;
	setAttr ".pt[5339]" -type "float3" 3.6379788e-012 0 1.1641532e-010 ;
	setAttr ".pt[5341]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5342]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5343]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5344]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5345]" -type "float3" 0 0 5.8207661e-011 ;
	setAttr ".pt[5346]" -type "float3" 0 0 -5.8207661e-011 ;
	setAttr ".pt[5347]" -type "float3" 1.1641532e-010 0 -1.1641532e-010 ;
	setAttr ".pt[5348]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5349]" -type "float3" 1.1641532e-010 0 -2.910383e-011 ;
	setAttr ".pt[5350]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5351]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5352]" -type "float3" 1.1641532e-010 0 2.910383e-011 ;
	setAttr ".pt[5356]" -type "float3" 1.1641532e-010 0 -2.910383e-011 ;
	setAttr ".pt[5357]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[5358]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5359]" -type "float3" 0 0 5.8207661e-011 ;
	setAttr ".pt[5361]" -type "float3" 1.1641532e-010 0 1.1641532e-010 ;
	setAttr ".pt[5366]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[5367]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5368]" -type "float3" 0 0 5.8207661e-011 ;
	setAttr ".pt[5369]" -type "float3" -5.8207661e-011 0 -1.1641532e-010 ;
	setAttr ".pt[5370]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5372]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5374]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5375]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5376]" -type "float3" 7.2759576e-012 0 0 ;
	setAttr ".pt[5377]" -type "float3" -7.2759576e-012 0 0 ;
	setAttr ".pt[5378]" -type "float3" -1.4551915e-011 0 0 ;
	setAttr ".pt[5379]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5381]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5382]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5384]" -type "float3" 2.910383e-011 0 0 ;
	setAttr ".pt[5385]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5386]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5388]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5389]" -type "float3" 0 0 5.8207661e-011 ;
	setAttr ".pt[5390]" -type "float3" 5.8207661e-011 0 -5.8207661e-011 ;
	setAttr ".pt[5391]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5395]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5396]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5397]" -type "float3" 1.1641532e-010 0 2.910383e-011 ;
	setAttr ".pt[5398]" -type "float3" 0 0 -5.8207661e-011 ;
	setAttr ".pt[5399]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5400]" -type "float3" 0 0 2.910383e-011 ;
	setAttr ".pt[5401]" -type "float3" -1.1641532e-010 0 -2.910383e-011 ;
	setAttr ".pt[5402]" -type "float3" 0 0 2.910383e-011 ;
	setAttr ".pt[5403]" -type "float3" -1.1641532e-010 0 -2.910383e-011 ;
	setAttr ".pt[5404]" -type "float3" 2.3283064e-010 0 -1.4551915e-011 ;
	setAttr ".pt[5405]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5408]" -type "float3" 0 0 1.3877788e-017 ;
	setAttr ".pt[5410]" -type "float3" 0 0 2.910383e-011 ;
	setAttr ".pt[5412]" -type "float3" -1.1641532e-010 0 2.910383e-011 ;
	setAttr ".pt[5413]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5414]" -type "float3" 0 0 5.8207661e-011 ;
	setAttr ".pt[5415]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5417]" -type "float3" 0 0 -5.8207661e-011 ;
	setAttr ".pt[5419]" -type "float3" -1.1641532e-010 0 -1.1641532e-010 ;
	setAttr ".pt[5421]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5422]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5423]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5424]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5425]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5427]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[5428]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5430]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5432]" -type "float3" -2.910383e-011 0 0 ;
	setAttr ".pt[5433]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5434]" -type "float3" -2.910383e-011 0 1.1641532e-010 ;
	setAttr ".pt[5435]" -type "float3" 1.4551915e-011 0 -2.3283064e-010 ;
	setAttr ".pt[5436]" -type "float3" -1.4551915e-011 0 1.1641532e-010 ;
	setAttr ".pt[5438]" -type "float3" 7.2759576e-012 0 1.1641532e-010 ;
	setAttr ".pt[5439]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5441]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5442]" -type "float3" 5.8207661e-011 0 -1.1641532e-010 ;
	setAttr ".pt[5443]" -type "float3" -2.910383e-011 0 0 ;
	setAttr ".pt[5444]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5446]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5447]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5448]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[5449]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5451]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[5454]" -type "float3" 1.1641532e-010 0 5.8207661e-011 ;
	setAttr ".pt[5455]" -type "float3" 5.8207661e-011 0 5.8207661e-011 ;
	setAttr ".pt[5456]" -type "float3" 0 0 5.8207661e-011 ;
	setAttr ".pt[5457]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5458]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5459]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5460]" -type "float3" -1.1641532e-010 0 -5.8207661e-011 ;
	setAttr ".pt[5461]" -type "float3" -1.1641532e-010 0 -1.4551915e-011 ;
	setAttr ".pt[5464]" -type "float3" 0 0 -2.910383e-011 ;
	setAttr ".pt[5465]" -type "float3" 2.3283064e-010 0 7.2759576e-012 ;
	setAttr ".pt[5467]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5468]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5470]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5472]" -type "float3" 0 0 -1.4551915e-011 ;
	setAttr ".pt[5475]" -type "float3" 0 0 -5.8207661e-011 ;
	setAttr ".pt[5476]" -type "float3" -1.1641532e-010 0 -5.8207661e-011 ;
	setAttr ".pt[5478]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5481]" -type "float3" 1.1641532e-010 0 1.1641532e-010 ;
	setAttr ".pt[5482]" -type "float3" 1.1641532e-010 0 2.3283064e-010 ;
	setAttr ".pt[5484]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5487]" -type "float3" -1.1641532e-010 0 -1.1641532e-010 ;
	setAttr ".pt[5489]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[5491]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[5494]" -type "float3" 1.4551915e-011 0 0 ;
	setAttr ".pt[5495]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5496]" -type "float3" 1.4551915e-011 0 0 ;
	setAttr ".pt[5497]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5498]" -type "float3" -2.910383e-011 0 0 ;
	setAttr ".pt[5499]" -type "float3" 2.910383e-011 0 2.3283064e-010 ;
	setAttr ".pt[5501]" -type "float3" 5.8207661e-011 0 2.3283064e-010 ;
	setAttr ".pt[5502]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5503]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5504]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5505]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5506]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5508]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5509]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5510]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5511]" -type "float3" -1.1641532e-010 0 1.1641532e-010 ;
	setAttr ".pt[5512]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5513]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5514]" -type "float3" 2.3283064e-010 0 2.3283064e-010 ;
	setAttr ".pt[5517]" -type "float3" 0 0 5.8207661e-011 ;
	setAttr ".pt[5518]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5519]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5521]" -type "float3" -2.3283064e-010 0 -5.8207661e-011 ;
	setAttr ".pt[5522]" -type "float3" 2.3283064e-010 0 5.8207661e-011 ;
	setAttr ".pt[5523]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5524]" -type "float3" 0 0 -2.910383e-011 ;
	setAttr ".pt[5525]" -type "float3" 0 0 7.2759576e-012 ;
	setAttr ".pt[5526]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5527]" -type "float3" 0 0 7.2759576e-012 ;
	setAttr ".pt[5528]" -type "float3" 0 0 -1.3877788e-017 ;
	setAttr ".pt[5529]" -type "float3" 0 0 5.8207661e-011 ;
	setAttr ".pt[5531]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5532]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5533]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5534]" -type "float3" -2.3283064e-010 0 5.8207661e-011 ;
	setAttr ".pt[5536]" -type "float3" -1.1641532e-010 0 5.8207661e-011 ;
	setAttr ".pt[5537]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5538]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5541]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5542]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5543]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5544]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5547]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5548]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5549]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5550]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5551]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5552]" -type "float3" -5.8207661e-011 0 -1.1641532e-010 ;
	setAttr ".pt[5553]" -type "float3" 5.8207661e-011 0 2.3283064e-010 ;
	setAttr ".pt[5554]" -type "float3" -2.910383e-011 0 0 ;
	setAttr ".pt[5555]" -type "float3" 2.910383e-011 0 0 ;
	setAttr ".pt[5557]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5560]" -type "float3" -1.4551915e-011 0 0 ;
	setAttr ".pt[5562]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5563]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[5564]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5565]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5567]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5568]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[5572]" -type "float3" 1.1641532e-010 0 -1.1641532e-010 ;
	setAttr ".pt[5574]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5575]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5576]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5577]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5579]" -type "float3" -2.3283064e-010 0 -5.8207661e-011 ;
	setAttr ".pt[5584]" -type "float3" 0 0 -2.910383e-011 ;
	setAttr ".pt[5585]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5586]" -type "float3" 0 0 -1.3877788e-017 ;
	setAttr ".pt[5588]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5590]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5593]" -type "float3" 0 0 5.8207661e-011 ;
	setAttr ".pt[5595]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5597]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5598]" -type "float3" -2.3283064e-010 0 -2.3283064e-010 ;
	setAttr ".pt[5599]" -type "float3" 2.3283064e-010 0 2.3283064e-010 ;
	setAttr ".pt[5600]" -type "float3" -2.3283064e-010 0 -1.1641532e-010 ;
	setAttr ".pt[5601]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5604]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5606]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5607]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5609]" -type "float3" 1.1641532e-010 0 4.6566129e-010 ;
	setAttr ".pt[5611]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[5612]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[5613]" -type "float3" 7.2759576e-012 0 0 ;
	setAttr ".pt[5614]" -type "float3" -2.910383e-011 0 4.6566129e-010 ;
	setAttr ".pt[5615]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5617]" -type "float3" 1.4551915e-011 0 0 ;
	setAttr ".pt[5619]" -type "float3" -2.910383e-011 0 0 ;
	setAttr ".pt[5621]" -type "float3" -1.1641532e-010 0 2.3283064e-010 ;
	setAttr ".pt[5624]" -type "float3" -5.8207661e-011 0 2.3283064e-010 ;
	setAttr ".pt[5625]" -type "float3" 1.1641532e-010 0 2.3283064e-010 ;
	setAttr ".pt[5626]" -type "float3" 2.3283064e-010 0 -2.3283064e-010 ;
	setAttr ".pt[5628]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5629]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5632]" -type "float3" 1.1641532e-010 0 2.3283064e-010 ;
	setAttr ".pt[5634]" -type "float3" 2.3283064e-010 0 2.3283064e-010 ;
	setAttr ".pt[5636]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5637]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5638]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5639]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5640]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5641]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5642]" -type "float3" 2.3283064e-010 0 -5.8207661e-011 ;
	setAttr ".pt[5643]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5644]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[5645]" -type "float3" 2.3283064e-010 0 -1.4551915e-011 ;
	setAttr ".pt[5646]" -type "float3" 2.3283064e-010 0 -1.3877788e-017 ;
	setAttr ".pt[5647]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5649]" -type "float3" 0 0 5.8207661e-011 ;
	setAttr ".pt[5650]" -type "float3" 2.3283064e-010 0 -1.1641532e-010 ;
	setAttr ".pt[5651]" -type "float3" 0 0 -5.8207661e-011 ;
	setAttr ".pt[5652]" -type "float3" -2.3283064e-010 0 1.1641532e-010 ;
	setAttr ".pt[5654]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5655]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5656]" -type "float3" -2.3283064e-010 0 -1.1641532e-010 ;
	setAttr ".pt[5657]" -type "float3" -2.3283064e-010 0 -1.1641532e-010 ;
	setAttr ".pt[5658]" -type "float3" 2.3283064e-010 0 -2.3283064e-010 ;
	setAttr ".pt[5660]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5661]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5663]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5664]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5665]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5667]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5668]" -type "float3" -1.1641532e-010 0 -2.3283064e-010 ;
	setAttr ".pt[5669]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[5670]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5671]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5672]" -type "float3" 5.8207661e-011 0 -2.3283064e-010 ;
	setAttr ".pt[5673]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[5675]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[5677]" -type "float3" 2.910383e-011 0 0 ;
	setAttr ".pt[5678]" -type "float3" 2.910383e-011 0 0 ;
	setAttr ".pt[5680]" -type "float3" -2.910383e-011 0 0 ;
	setAttr ".pt[5681]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[5682]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5684]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5685]" -type "float3" 1.1641532e-010 0 2.3283064e-010 ;
	setAttr ".pt[5686]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5692]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5693]" -type "float3" -2.3283064e-010 0 -1.1641532e-010 ;
	setAttr ".pt[5694]" -type "float3" -2.3283064e-010 0 1.1641532e-010 ;
	setAttr ".pt[5695]" -type "float3" 2.3283064e-010 0 1.1641532e-010 ;
	setAttr ".pt[5697]" -type "float3" -4.6566129e-010 0 -1.1641532e-010 ;
	setAttr ".pt[5698]" -type "float3" 2.3283064e-010 0 1.1641532e-010 ;
	setAttr ".pt[5700]" -type "float3" -4.6566129e-010 0 -1.1641532e-010 ;
	setAttr ".pt[5701]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[5702]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5703]" -type "float3" -2.3283064e-010 0 5.8207661e-011 ;
	setAttr ".pt[5704]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5705]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[5706]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[5707]" -type "float3" 2.3283064e-010 0 -1.3877788e-017 ;
	setAttr ".pt[5708]" -type "float3" 0 0 -1.4551915e-011 ;
	setAttr ".pt[5710]" -type "float3" -2.3283064e-010 0 -5.8207661e-011 ;
	setAttr ".pt[5711]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[5712]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5714]" -type "float3" 2.3283064e-010 0 1.1641532e-010 ;
	setAttr ".pt[5716]" -type "float3" -4.6566129e-010 0 -1.1641532e-010 ;
	setAttr ".pt[5717]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5719]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5721]" -type "float3" 2.3283064e-010 0 2.3283064e-010 ;
	setAttr ".pt[5722]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5724]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5725]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[5728]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5729]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5730]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[5732]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5734]" -type "float3" -2.910383e-011 0 0 ;
	setAttr ".pt[5735]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5736]" -type "float3" 2.910383e-011 0 -4.6566129e-010 ;
	setAttr ".pt[5739]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5740]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5741]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5742]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[5743]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5745]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5746]" -type "float3" -2.3283064e-010 0 -4.6566129e-010 ;
	setAttr ".pt[5750]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5751]" -type "float3" -2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[5752]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5753]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5757]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5758]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5759]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5760]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5761]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5764]" -type "float3" 0 0 -5.8207661e-011 ;
	setAttr ".pt[5765]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[5766]" -type "float3" 0 0 -2.7755576e-017 ;
	setAttr ".pt[5767]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[5771]" -type "float3" 0 0 5.8207661e-011 ;
	setAttr ".pt[5773]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5775]" -type "float3" 2.3283064e-010 0 -1.1641532e-010 ;
	setAttr ".pt[5776]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5778]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[5779]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[5780]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5781]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[5784]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5785]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5786]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5787]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5789]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[5791]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5793]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5797]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5798]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[5800]" -type "float3" 2.910383e-011 0 4.6566129e-010 ;
	setAttr ".pt[5802]" -type "float3" -1.1641532e-010 0 4.6566129e-010 ;
	setAttr ".pt[5803]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5804]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5806]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5807]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5808]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5809]" -type "float3" 2.3283064e-010 0 -2.3283064e-010 ;
	setAttr ".pt[5810]" -type "float3" 2.3283064e-010 0 -4.6566129e-010 ;
	setAttr ".pt[5811]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5812]" -type "float3" 2.3283064e-010 0 2.3283064e-010 ;
	setAttr ".pt[5814]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5815]" -type "float3" 4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[5818]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[5819]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5820]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5821]" -type "float3" -4.6566129e-010 0 -5.8207661e-011 ;
	setAttr ".pt[5823]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[5824]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5826]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[5829]" -type "float3" -4.6566129e-010 0 1.1641532e-010 ;
	setAttr ".pt[5830]" -type "float3" -4.6566129e-010 0 5.8207661e-011 ;
	setAttr ".pt[5831]" -type "float3" 4.6566129e-010 0 5.8207661e-011 ;
	setAttr ".pt[5832]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5833]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[5834]" -type "float3" -4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[5836]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[5837]" -type "float3" -4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[5838]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5839]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5842]" -type "float3" 2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[5844]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5845]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[5846]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5848]" -type "float3" -2.3283064e-010 0 -4.6566129e-010 ;
	setAttr ".pt[5850]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5851]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[5853]" -type "float3" -1.4551915e-011 0 -4.6566129e-010 ;
	setAttr ".pt[5855]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[5856]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[5858]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[5859]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5861]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5862]" -type "float3" 1.1641532e-010 0 4.6566129e-010 ;
	setAttr ".pt[5863]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[5864]" -type "float3" -2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[5865]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[5866]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5868]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5869]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5870]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5875]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[5877]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5878]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5880]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5882]" -type "float3" 4.6566129e-010 0 -1.1641532e-010 ;
	setAttr ".pt[5884]" -type "float3" 4.6566129e-010 0 5.8207661e-011 ;
	setAttr ".pt[5886]" -type "float3" 0 0 5.5511151e-017 ;
	setAttr ".pt[5887]" -type "float3" 0 0 -2.910383e-011 ;
	setAttr ".pt[5889]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[5890]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[5891]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5892]" -type "float3" -4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[5893]" -type "float3" 4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[5895]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5898]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5900]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5902]" -type "float3" -2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[5903]" -type "float3" 4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[5904]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[5906]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[5908]" -type "float3" -2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[5909]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[5910]" -type "float3" -2.3283064e-010 0 -4.6566129e-010 ;
	setAttr ".pt[5912]" -type "float3" 1.1641532e-010 0 4.6566129e-010 ;
	setAttr ".pt[5915]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[5919]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[5920]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[5921]" -type "float3" 1.1641532e-010 0 4.6566129e-010 ;
	setAttr ".pt[5923]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5924]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[5926]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[5927]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5929]" -type "float3" -2.3283064e-010 0 -4.6566129e-010 ;
	setAttr ".pt[5930]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5933]" -type "float3" -4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[5935]" -type "float3" -4.6566129e-010 0 4.6566129e-010 ;
	setAttr ".pt[5936]" -type "float3" 4.6566129e-010 0 4.6566129e-010 ;
	setAttr ".pt[5937]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[5938]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5939]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[5940]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5942]" -type "float3" -4.6566129e-010 0 -1.1641532e-010 ;
	setAttr ".pt[5943]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[5945]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[5946]" -type "float3" 4.6566129e-010 0 2.7755576e-017 ;
	setAttr ".pt[5947]" -type "float3" 0 0 -2.7755576e-017 ;
	setAttr ".pt[5948]" -type "float3" 4.6566129e-010 0 -2.910383e-011 ;
	setAttr ".pt[5950]" -type "float3" -4.6566129e-010 0 -1.1641532e-010 ;
	setAttr ".pt[5952]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[5954]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5955]" -type "float3" -4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[5956]" -type "float3" -4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[5957]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[5958]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[5960]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[5963]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[5965]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[5967]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5969]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[5970]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5971]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[5972]" -type "float3" 1.1641532e-010 0 -4.6566129e-010 ;
	setAttr ".pt[5973]" -type "float3" 0 0 9.3132257e-010 ;
	setAttr ".pt[5975]" -type "float3" 0 0 -9.3132257e-010 ;
	setAttr ".pt[5976]" -type "float3" 0 0 9.3132257e-010 ;
	setAttr ".pt[5978]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[5980]" -type "float3" -1.1641532e-010 0 -9.3132257e-010 ;
	setAttr ".pt[5981]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[5985]" -type "float3" 2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[5986]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[5988]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[5991]" -type "float3" -2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[5995]" -type "float3" 4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[5996]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[5998]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[5999]" -type "float3" -4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6001]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6002]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6004]" -type "float3" 4.6566129e-010 0 -5.8207661e-011 ;
	setAttr ".pt[6005]" -type "float3" -4.6566129e-010 0 2.910383e-011 ;
	setAttr ".pt[6007]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6008]" -type "float3" 4.6566129e-010 0 -5.5511151e-017 ;
	setAttr ".pt[6009]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".pt[6010]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6011]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6012]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6013]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6014]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6015]" -type "float3" -4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[6016]" -type "float3" 4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6017]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6019]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6020]" -type "float3" 4.6566129e-010 0 4.6566129e-010 ;
	setAttr ".pt[6021]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6022]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6025]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6026]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6029]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[6030]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6031]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6032]" -type "float3" 1.1641532e-010 0 4.6566129e-010 ;
	setAttr ".pt[6033]" -type "float3" 0 0 9.3132257e-010 ;
	setAttr ".pt[6034]" -type "float3" -5.8207661e-011 0 -9.3132257e-010 ;
	setAttr ".pt[6035]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[6036]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6038]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[6039]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6040]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6041]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[6042]" -type "float3" 0 0 -9.3132257e-010 ;
	setAttr ".pt[6043]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6044]" -type "float3" 2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[6045]" -type "float3" -2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[6046]" -type "float3" -4.6566129e-010 0 4.6566129e-010 ;
	setAttr ".pt[6049]" -type "float3" 4.6566129e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6050]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6051]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6052]" -type "float3" -4.6566129e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6053]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6054]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6055]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6056]" -type "float3" 4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6057]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6058]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6059]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6060]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6061]" -type "float3" 9.3132257e-010 0 0 ;
	setAttr ".pt[6062]" -type "float3" -4.6566129e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6063]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6064]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6065]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".pt[6066]" -type "float3" -9.3132257e-010 0 -1.3877788e-017 ;
	setAttr ".pt[6067]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6068]" -type "float3" -4.6566129e-010 0 -2.910383e-011 ;
	setAttr ".pt[6069]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6070]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6071]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6073]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6075]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6076]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6077]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6079]" -type "float3" 4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6080]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6084]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6085]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6086]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6088]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6090]" -type "float3" 0 0 9.3132257e-010 ;
	setAttr ".pt[6091]" -type "float3" -2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[6092]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6093]" -type "float3" 0 0 9.3132257e-010 ;
	setAttr ".pt[6095]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[6096]" -type "float3" 5.8207661e-011 0 -4.6566129e-010 ;
	setAttr ".pt[6098]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[6099]" -type "float3" -5.8207661e-011 0 -4.6566129e-010 ;
	setAttr ".pt[6100]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6101]" -type "float3" -2.3283064e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6103]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[6104]" -type "float3" 0 0 -9.3132257e-010 ;
	setAttr ".pt[6105]" -type "float3" -4.6566129e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6106]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6108]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6109]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6113]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6115]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6116]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6117]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6119]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6120]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6122]" -type "float3" 9.3132257e-010 0 0 ;
	setAttr ".pt[6123]" -type "float3" -4.6566129e-010 0 1.1641532e-010 ;
	setAttr ".pt[6127]" -type "float3" 0 0 -2.910383e-011 ;
	setAttr ".pt[6130]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6131]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6132]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6133]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6135]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6136]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6137]" -type "float3" -4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6138]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6139]" -type "float3" 4.6566129e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6140]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6141]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6142]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6144]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6146]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6148]" -type "float3" 2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[6149]" -type "float3" -1.1641532e-010 0 4.6566129e-010 ;
	setAttr ".pt[6151]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6152]" -type "float3" 2.3283064e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6153]" -type "float3" 0 0 -9.3132257e-010 ;
	setAttr ".pt[6154]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6156]" -type "float3" -2.910383e-011 0 0 ;
	setAttr ".pt[6157]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6158]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6159]" -type "float3" -2.910383e-011 0 0 ;
	setAttr ".pt[6160]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[6161]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6162]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6163]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6165]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6166]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6168]" -type "float3" -4.6566129e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6169]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6172]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6173]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6175]" -type "float3" 4.6566129e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6177]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6178]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6179]" -type "float3" 4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[6180]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6182]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6183]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6184]" -type "float3" 9.3132257e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6185]" -type "float3" 9.3132257e-010 0 2.910383e-011 ;
	setAttr ".pt[6186]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6187]" -type "float3" 0 0 -2.7755576e-017 ;
	setAttr ".pt[6188]" -type "float3" 9.3132257e-010 0 0 ;
	setAttr ".pt[6189]" -type "float3" 9.3132257e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6190]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6191]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6192]" -type "float3" 9.3132257e-010 0 0 ;
	setAttr ".pt[6193]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6194]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6195]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".pt[6196]" -type "float3" 4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[6197]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6199]" -type "float3" -4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6202]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6203]" -type "float3" 4.6566129e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6204]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6205]" -type "float3" 2.3283064e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6206]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6208]" -type "float3" -2.3283064e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6209]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6210]" -type "float3" 2.3283064e-010 0 -9.3132257e-010 ;
	setAttr ".pt[6211]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6212]" -type "float3" 0 0 9.3132257e-010 ;
	setAttr ".pt[6213]" -type "float3" 2.910383e-011 0 0 ;
	setAttr ".pt[6214]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[6215]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[6216]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6218]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6219]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6221]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6224]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6225]" -type "float3" 4.6566129e-010 0 4.6566129e-010 ;
	setAttr ".pt[6226]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6227]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6229]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".pt[6230]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6231]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6235]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6238]" -type "float3" 4.6566129e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6239]" -type "float3" 9.3132257e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6240]" -type "float3" -4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6241]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6242]" -type "float3" 9.3132257e-010 0 0 ;
	setAttr ".pt[6243]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6246]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6248]" -type "float3" 9.3132257e-010 0 0 ;
	setAttr ".pt[6250]" -type "float3" 9.3132257e-010 0 0 ;
	setAttr ".pt[6251]" -type "float3" 4.6566129e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6252]" -type "float3" 4.6566129e-010 0 1.1641532e-010 ;
	setAttr ".pt[6253]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6254]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6255]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".pt[6256]" -type "float3" -9.3132257e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6257]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6258]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6259]" -type "float3" 9.3132257e-010 0 0 ;
	setAttr ".pt[6262]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6265]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6266]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6268]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6271]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6274]" -type "float3" -5.8207661e-011 0 -4.6566129e-010 ;
	setAttr ".pt[6275]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6276]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[6277]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[6278]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[6279]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6280]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6281]" -type "float3" 0 0 -9.3132257e-010 ;
	setAttr ".pt[6282]" -type "float3" 2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[6283]" -type "float3" 0 0 -9.3132257e-010 ;
	setAttr ".pt[6284]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6285]" -type "float3" 4.6566129e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6287]" -type "float3" 2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[6288]" -type "float3" 4.6566129e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6291]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6295]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6297]" -type "float3" -4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6298]" -type "float3" 4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[6299]" -type "float3" -4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6301]" -type "float3" -9.3132257e-010 0 1.1641532e-010 ;
	setAttr ".pt[6302]" -type "float3" 9.3132257e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6303]" -type "float3" 4.6566129e-010 0 1.1641532e-010 ;
	setAttr ".pt[6304]" -type "float3" -4.6566129e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6305]" -type "float3" 4.6566129e-010 0 -2.910383e-011 ;
	setAttr ".pt[6306]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6307]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6308]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".pt[6309]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".pt[6310]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6311]" -type "float3" -9.3132257e-010 0 1.1641532e-010 ;
	setAttr ".pt[6312]" -type "float3" -4.6566129e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6313]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6314]" -type "float3" 4.6566129e-010 0 4.6566129e-010 ;
	setAttr ".pt[6315]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6316]" -type "float3" -4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6318]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6319]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6320]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6321]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6322]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6325]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6327]" -type "float3" 4.6566129e-010 0 9.3132257e-010 ;
	setAttr ".pt[6328]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6329]" -type "float3" 0 0 -9.3132257e-010 ;
	setAttr ".pt[6330]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6331]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6332]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[6334]" -type "float3" 0 0 -9.3132257e-010 ;
	setAttr ".pt[6335]" -type "float3" 0 0 9.3132257e-010 ;
	setAttr ".pt[6336]" -type "float3" 0 0 -9.3132257e-010 ;
	setAttr ".pt[6337]" -type "float3" -2.910383e-011 0 0 ;
	setAttr ".pt[6339]" -type "float3" -5.8207661e-011 0 4.6566129e-010 ;
	setAttr ".pt[6340]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[6342]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6343]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6344]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6345]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6348]" -type "float3" -4.6566129e-010 0 4.6566129e-010 ;
	setAttr ".pt[6350]" -type "float3" 4.6566129e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6351]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".pt[6354]" -type "float3" 4.6566129e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6356]" -type "float3" 4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6357]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6358]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6361]" -type "float3" -9.3132257e-010 0 1.1641532e-010 ;
	setAttr ".pt[6362]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6363]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6364]" -type "float3" 4.6566129e-010 0 1.1641532e-010 ;
	setAttr ".pt[6365]" -type "float3" 9.3132257e-010 0 -2.910383e-011 ;
	setAttr ".pt[6366]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6367]" -type "float3" -4.6566129e-010 0 2.910383e-011 ;
	setAttr ".pt[6368]" -type "float3" 0 0 -5.5511151e-017 ;
	setAttr ".pt[6370]" -type "float3" 4.6566129e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6374]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6375]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6376]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6377]" -type "float3" 4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[6378]" -type "float3" 4.6566129e-010 0 4.6566129e-010 ;
	setAttr ".pt[6382]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6383]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6385]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6387]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6389]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6390]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6391]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6392]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6393]" -type "float3" 1.1641532e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6394]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[6395]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[6397]" -type "float3" -1.1641532e-010 0 9.3132257e-010 ;
	setAttr ".pt[6398]" -type "float3" -5.8207661e-011 0 9.3132257e-010 ;
	setAttr ".pt[6399]" -type "float3" 2.910383e-011 0 0 ;
	setAttr ".pt[6400]" -type "float3" 5.8207661e-011 0 9.3132257e-010 ;
	setAttr ".pt[6401]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[6402]" -type "float3" -2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[6403]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6405]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6408]" -type "float3" -2.3283064e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6409]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6411]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6413]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".pt[6414]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6416]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6417]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6418]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6419]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6420]" -type "float3" 9.3132257e-010 0 0 ;
	setAttr ".pt[6422]" -type "float3" 4.6566129e-010 0 1.1641532e-010 ;
	setAttr ".pt[6423]" -type "float3" -9.3132257e-010 0 1.1641532e-010 ;
	setAttr ".pt[6424]" -type "float3" -9.3132257e-010 0 2.3283064e-010 ;
	setAttr ".pt[6425]" -type "float3" 4.6566129e-010 0 5.8207661e-011 ;
	setAttr ".pt[6426]" -type "float3" 0 0 -2.7755576e-017 ;
	setAttr ".pt[6427]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".pt[6428]" -type "float3" 4.6566129e-010 0 -5.8207661e-011 ;
	setAttr ".pt[6429]" -type "float3" 4.6566129e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6430]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6431]" -type "float3" -4.6566129e-010 0 1.1641532e-010 ;
	setAttr ".pt[6432]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6433]" -type "float3" 9.3132257e-010 0 2.3283064e-010 ;
	setAttr ".pt[6434]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6435]" -type "float3" 4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[6436]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6438]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6439]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6440]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6441]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6442]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6445]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6446]" -type "float3" 2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[6447]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6448]" -type "float3" 2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[6449]" -type "float3" 2.3283064e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6450]" -type "float3" -2.3283064e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6454]" -type "float3" 0 0 9.3132257e-010 ;
	setAttr ".pt[6455]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6456]" -type "float3" -1.1641532e-010 0 4.6566129e-010 ;
	setAttr ".pt[6457]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6459]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6461]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6463]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[6464]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6467]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6468]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6469]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6474]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6475]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6476]" -type "float3" -4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[6477]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6478]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6479]" -type "float3" 4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6480]" -type "float3" -4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6483]" -type "float3" 4.6566129e-010 0 1.1641532e-010 ;
	setAttr ".pt[6484]" -type "float3" -4.6566129e-010 0 5.8207661e-011 ;
	setAttr ".pt[6485]" -type "float3" 0 0 2.910383e-011 ;
	setAttr ".pt[6487]" -type "float3" 0 0 -5.8207661e-011 ;
	setAttr ".pt[6488]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6489]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6490]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".pt[6491]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6492]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6493]" -type "float3" -4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[6494]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6496]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6497]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6498]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6499]" -type "float3" -4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[6501]" -type "float3" 4.6566129e-010 0 4.6566129e-010 ;
	setAttr ".pt[6502]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6503]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6504]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6506]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6507]" -type "float3" -2.3283064e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6509]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6510]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6511]" -type "float3" 0 0 9.3132257e-010 ;
	setAttr ".pt[6512]" -type "float3" 0 0 -9.3132257e-010 ;
	setAttr ".pt[6513]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[6515]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6516]" -type "float3" 2.910383e-011 0 0 ;
	setAttr ".pt[6517]" -type "float3" 0 0 9.3132257e-010 ;
	setAttr ".pt[6519]" -type "float3" -2.910383e-011 0 0 ;
	setAttr ".pt[6520]" -type "float3" 0 0 -9.3132257e-010 ;
	setAttr ".pt[6521]" -type "float3" -1.1641532e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6522]" -type "float3" -2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[6524]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6525]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6526]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6527]" -type "float3" 2.3283064e-010 0 9.3132257e-010 ;
	setAttr ".pt[6528]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6529]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6531]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6533]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6534]" -type "float3" -4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[6535]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6536]" -type "float3" -4.6566129e-010 0 4.6566129e-010 ;
	setAttr ".pt[6537]" -type "float3" 4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[6538]" -type "float3" 4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[6539]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6540]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6541]" -type "float3" -4.6566129e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6542]" -type "float3" 9.3132257e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6543]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6544]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6546]" -type "float3" -4.6566129e-010 0 2.7755576e-017 ;
	setAttr ".pt[6547]" -type "float3" 0 0 2.7755576e-017 ;
	setAttr ".pt[6549]" -type "float3" 4.6566129e-010 0 1.1641532e-010 ;
	setAttr ".pt[6550]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6551]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".pt[6553]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6556]" -type "float3" 4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[6558]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6559]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6560]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6561]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6562]" -type "float3" -2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[6563]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6564]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6565]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6567]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6569]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6571]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[6573]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6576]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[6577]" -type "float3" -2.910383e-011 0 -4.6566129e-010 ;
	setAttr ".pt[6578]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[6579]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6580]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6583]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6587]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6589]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6591]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6593]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6595]" -type "float3" -4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[6596]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6598]" -type "float3" -4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6599]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6601]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6602]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6603]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6604]" -type "float3" 0 0 5.8207661e-011 ;
	setAttr ".pt[6605]" -type "float3" 0 0 -2.910383e-011 ;
	setAttr ".pt[6606]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6608]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6610]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6611]" -type "float3" 4.6566129e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6615]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6616]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6619]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6620]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6621]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6622]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6624]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6625]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6626]" -type "float3" -2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[6628]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6632]" -type "float3" 1.1641532e-010 0 4.6566129e-010 ;
	setAttr ".pt[6637]" -type "float3" -5.8207661e-011 0 4.6566129e-010 ;
	setAttr ".pt[6638]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6639]" -type "float3" 1.4551915e-011 0 4.6566129e-010 ;
	setAttr ".pt[6640]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[6642]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6643]" -type "float3" -1.1641532e-010 0 4.6566129e-010 ;
	setAttr ".pt[6645]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6647]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6648]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6649]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6650]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6651]" -type "float3" 2.3283064e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6652]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6653]" -type "float3" -4.6566129e-010 0 4.6566129e-010 ;
	setAttr ".pt[6654]" -type "float3" -4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".pt[6655]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6656]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6657]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6658]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6659]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6662]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6663]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6664]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6665]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6666]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6667]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6668]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6669]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6671]" -type "float3" -4.6566129e-010 0 5.8207661e-011 ;
	setAttr ".pt[6674]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6675]" -type "float3" 4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6677]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6678]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6679]" -type "float3" -2.3283064e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6681]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6684]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6693]" -type "float3" -1.4551915e-011 0 -4.6566129e-010 ;
	setAttr ".pt[6695]" -type "float3" 5.8207661e-011 0 4.6566129e-010 ;
	setAttr ".pt[6696]" -type "float3" 2.910383e-011 0 4.6566129e-010 ;
	setAttr ".pt[6698]" -type "float3" 2.910383e-011 0 -2.3283064e-010 ;
	setAttr ".pt[6699]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[6700]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6701]" -type "float3" -2.3283064e-010 0 4.6566129e-010 ;
	setAttr ".pt[6703]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6704]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[6705]" -type "float3" -1.1641532e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6706]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6707]" -type "float3" -2.3283064e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6710]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6712]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6713]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6715]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6716]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6717]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6718]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6719]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6720]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6722]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6723]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6725]" -type "float3" -4.6566129e-010 0 -2.910383e-011 ;
	setAttr ".pt[6726]" -type "float3" 4.6566129e-010 0 -2.2737368e-013 ;
	setAttr ".pt[6727]" -type "float3" -4.6566129e-010 0 -2.910383e-011 ;
	setAttr ".pt[6728]" -type "float3" 0 0 -4.5474735e-013 ;
	setAttr ".pt[6730]" -type "float3" 4.6566129e-010 0 5.8207661e-011 ;
	setAttr ".pt[6733]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6734]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6736]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6737]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6738]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6739]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6740]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6742]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6743]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6744]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6745]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6746]" -type "float3" -1.1641532e-010 0 -4.6566129e-010 ;
	setAttr ".pt[6749]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[6750]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[6753]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".pt[6755]" -type "float3" -2.910383e-011 0 0 ;
	setAttr ".pt[6756]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6758]" -type "float3" 2.910383e-011 0 0 ;
	setAttr ".pt[6759]" -type "float3" 1.4551915e-011 0 -4.6566129e-010 ;
	setAttr ".pt[6760]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[6761]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6762]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6763]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6764]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6767]" -type "float3" 1.1641532e-010 0 -2.3283064e-010 ;
	setAttr ".pt[6770]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6772]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6774]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6775]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6776]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".pt[6777]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6778]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6779]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6781]" -type "float3" 0 0 -5.8207661e-011 ;
	setAttr ".pt[6782]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6783]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".pt[6784]" -type "float3" 0 0 -5.8207661e-011 ;
	setAttr ".pt[6785]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6786]" -type "float3" 0 0 -2.1684043e-019 ;
	setAttr ".pt[6787]" -type "float3" 0 0 -2.1684043e-019 ;
	setAttr ".pt[6788]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6789]" -type "float3" 4.6566129e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6792]" -type "float3" 4.6566129e-010 0 5.8207661e-011 ;
	setAttr ".pt[6793]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6794]" -type "float3" 4.6566129e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6795]" -type "float3" 2.3283064e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6796]" -type "float3" 4.6566129e-010 0 1.1641532e-010 ;
	setAttr ".pt[6797]" -type "float3" 2.3283064e-010 0 1.1641532e-010 ;
	setAttr ".pt[6799]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6800]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6801]" -type "float3" -2.3283064e-010 0 2.3283064e-010 ;
	setAttr ".pt[6802]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6803]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6804]" -type "float3" -1.1641532e-010 0 1.1641532e-010 ;
	setAttr ".pt[6807]" -type "float3" -2.3283064e-010 0 2.3283064e-010 ;
	setAttr ".pt[6808]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6809]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[6810]" -type "float3" 5.8207661e-011 0 0 ;
	setAttr ".pt[6813]" -type "float3" -7.2759576e-012 0 2.3283064e-010 ;
	setAttr ".pt[6816]" -type "float3" 2.910383e-011 0 2.3283064e-010 ;
	setAttr ".pt[6818]" -type "float3" 2.910383e-011 0 0 ;
	setAttr ".pt[6819]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6820]" -type "float3" 2.910383e-011 0 -2.3283064e-010 ;
	setAttr ".pt[6822]" -type "float3" -1.1641532e-010 0 2.3283064e-010 ;
	setAttr ".pt[6824]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".pt[6828]" -type "float3" 1.1641532e-010 0 1.1641532e-010 ;
	setAttr ".pt[6829]" -type "float3" 2.3283064e-010 0 2.3283064e-010 ;
	setAttr ".pt[6830]" -type "float3" 2.3283064e-010 0 2.3283064e-010 ;
	setAttr ".pt[6831]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6832]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6833]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[6835]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6836]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6837]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6839]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6840]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6841]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6842]" -type "float3" 0 0 -2.910383e-011 ;
	setAttr ".pt[6843]" -type "float3" 0 0 -5.8207661e-011 ;
	setAttr ".pt[6844]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6846]" -type "float3" 0 0 9.094947e-013 ;
	setAttr ".pt[6848]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6850]" -type "float3" 0 0 -5.8207661e-011 ;
	setAttr ".pt[6853]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6854]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6855]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6857]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6859]" -type "float3" -2.3283064e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6860]" -type "float3" 2.3283064e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6861]" -type "float3" -1.1641532e-010 0 2.3283064e-010 ;
	setAttr ".pt[6862]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[6865]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[6866]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6867]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[6868]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[6869]" -type "float3" -5.8207661e-011 0 2.3283064e-010 ;
	setAttr ".pt[6870]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6871]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[6873]" -type "float3" -2.910383e-011 0 2.3283064e-010 ;
	setAttr ".pt[6874]" -type "float3" 2.910383e-011 0 0 ;
	setAttr ".pt[6876]" -type "float3" 1.4551915e-011 0 0 ;
	setAttr ".pt[6880]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".pt[6881]" -type "float3" 5.8207661e-011 0 -2.3283064e-010 ;
	setAttr ".pt[6884]" -type "float3" -5.8207661e-011 0 0 ;
	setAttr ".pt[6885]" -type "float3" 1.1641532e-010 0 0 ;
	setAttr ".pt[6887]" -type "float3" 0 0 -2.3283064e-010 ;
	setAttr ".pt[6888]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".pt[6889]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6890]" -type "float3" 1.1641532e-010 0 2.3283064e-010 ;
	setAttr ".pt[6891]" -type "float3" 1.1641532e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6892]" -type "float3" 1.1641532e-010 0 2.3283064e-010 ;
	setAttr ".pt[6894]" -type "float3" -2.3283064e-010 0 -1.1641532e-010 ;
	setAttr ".pt[6895]" -type "float3" 0 0 1.1641532e-010 ;
	setAttr ".pt[6897]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6898]" -type "float3" 0 0 5.8207661e-011 ;
	setAttr ".pt[6899]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6900]" -type "float3" 2.3283064e-010 0 5.8207661e-011 ;
	setAttr ".pt[6902]" -type "float3" 2.3283064e-010 0 -5.8207661e-011 ;
	setAttr ".pt[6903]" -type "float3" 2.3283064e-010 0 5.8207661e-011 ;
	setAttr ".pt[6904]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6905]" -type "float3" 2.3283064e-010 0 1.4551915e-011 ;
	setAttr ".pt[6907]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6908]" -type "float3" 2.3283064e-010 0 -1.4551915e-011 ;
	setAttr ".pt[6909]" -type "float3" 2.3283064e-010 0 -5.8207661e-011 ;
	setAttr ".pt[6910]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".pt[6911]" -type "float3" 0 0 5.8207661e-011 ;
	setAttr ".pt[6913]" -type "float3" 0 0 -1.1641532e-010 ;
	setAttr ".pt[6914]" -type "float3" -1.1641532e-010 0 5.8207661e-011 ;
	setAttr ".pt[6915]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".pt[6916]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pCylinder1";
	rename -uid "4F704AD5-4499-5014-75A3-16BBCF1AD965";
	setAttr ".t" -type "double3" 0 1.6005033024791677 0 ;
	setAttr ".s" -type "double3" 2.0532899480376066 2.0532899480376066 2.0532899480376066 ;
createNode transform -n "transform2" -p "pCylinder1";
	rename -uid "9FD01DC5-48E0-1C2F-3A24-3EBA7E9EAE03";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform2";
	rename -uid "0FCA7CD6-4117-6D99-6DF5-C7B1756DBF26";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.56471490859985352 0.23804393410682678 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".pt";
	setAttr ".pt[0]" -type "float3" 0.12039813 -0.21198344 -0.039119713 ;
	setAttr ".pt[1]" -type "float3" 0.10241689 -0.21198344 -0.074410133 ;
	setAttr ".pt[2]" -type "float3" 0.074410155 -0.21198344 -0.10241684 ;
	setAttr ".pt[3]" -type "float3" 0.03911975 -0.21198344 -0.12039813 ;
	setAttr ".pt[4]" -type "float3" 2.0042986e-008 -0.21198344 -0.12659414 ;
	setAttr ".pt[5]" -type "float3" -0.039119713 -0.21198344 -0.12039813 ;
	setAttr ".pt[6]" -type "float3" -0.074410133 -0.21198344 -0.10241682 ;
	setAttr ".pt[7]" -type "float3" -0.10241681 -0.21198344 -0.074410126 ;
	setAttr ".pt[8]" -type "float3" -0.1203981 -0.21198344 -0.039119706 ;
	setAttr ".pt[9]" -type "float3" -0.12659404 -0.21198344 2.0511763e-008 ;
	setAttr ".pt[10]" -type "float3" -0.1203981 -0.21198344 0.039119728 ;
	setAttr ".pt[11]" -type "float3" -0.10241673 -0.21198344 0.074410133 ;
	setAttr ".pt[12]" -type "float3" -0.074410126 -0.21198344 0.10241684 ;
	setAttr ".pt[13]" -type "float3" -0.039119706 -0.21198344 0.12039813 ;
	setAttr ".pt[14]" -type "float3" 1.6270189e-008 -0.21198344 0.12659414 ;
	setAttr ".pt[15]" -type "float3" 0.039119717 -0.21198344 0.12039813 ;
	setAttr ".pt[16]" -type "float3" 0.074410133 -0.21198344 0.10241683 ;
	setAttr ".pt[17]" -type "float3" 0.10241683 -0.21198344 0.074410133 ;
	setAttr ".pt[18]" -type "float3" 0.12039811 -0.21198344 0.03911972 ;
	setAttr ".pt[19]" -type "float3" 0.12659404 -0.21198344 2.0511763e-008 ;
	setAttr ".pt[20]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[21]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[22]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[23]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[24]" -type "float3" 1.8289028e-019 -0.046091694 0 ;
	setAttr ".pt[25]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[26]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[27]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[29]" -type "float3" 0 -0.046091694 1.2672761e-018 ;
	setAttr ".pt[30]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[31]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[32]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[33]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[34]" -type "float3" 1.8288963e-019 -0.046091694 0 ;
	setAttr ".pt[35]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[36]" -type "float3" 0 -0.046091691 0 ;
	setAttr ".pt[37]" -type "float3" 0 -0.046091691 0 ;
	setAttr ".pt[38]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[39]" -type "float3" 0 -0.046091694 1.2672761e-018 ;
	setAttr ".pt[100]" -type "float3" 0 -0.10429732 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pCylinder2";
	rename -uid "998AC60C-43CC-A919-5209-57BE2B660950";
	setAttr ".t" -type "double3" 0 1.6612293909904197 0 ;
	setAttr ".s" -type "double3" 2.0532899480376066 2.0532899480376066 2.0532899480376066 ;
createNode transform -n "transform1" -p "pCylinder2";
	rename -uid "77FEFBCB-4BF3-BE92-556D-F6B300B35A3C";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform1";
	rename -uid "D98278DC-4515-6E03-03A4-75AD63F013A1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:99]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.18056834489107132 0.4762536883354187 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 101 ".uvst[0].uvsp[0:100]" -type "float2" 0.82782257 0.40694445
		 0.77472603 0.30273637 0.69202596 0.22003651 0.58781803 0.16693991 0.47230256 0.14864415
		 0.35678709 0.16693991 0.25257915 0.22003657 0.16987932 0.30273649 0.11678264 0.40694445
		 0.0984869 0.52245986 0.11678264 0.63797534 0.16987932 0.74218345 0.25257927 0.82488322
		 0.3567872 0.87797999 0.47230256 0.89627564 0.58781791 0.87797999 0.6920259 0.82488322
		 0.77472585 0.74218345 0.82782245 0.63797534 0.84611833 0.52245986 0.75671852 0.43004751
		 0.71424133 0.34668106 0.6480813 0.28052109 0.56471491 0.23804393 0.47230256 0.22340721
		 0.3798902 0.23804393 0.29652381 0.28052121 0.23036395 0.34668118 0.1878867 0.43004751
		 0.17324999 0.52245986 0.1878867 0.61487222 0.23036395 0.69823849 0.29652393 0.76439857
		 0.3798902 0.80687571 0.47230256 0.82151258 0.56471491 0.80687571 0.64808118 0.76439857
		 0.71424115 0.69823849 0.7567184 0.61487222 0.77135503 0.52245986 0.68561465 0.45315063
		 0.6537565 0.39062575 0.60413659 0.34100586 0.54161191 0.30914795 0.47230256 0.29817033
		 0.40299332 0.30914795 0.34046853 0.34100586 0.29084855 0.39062589 0.25899065 0.45315063
		 0.24801309 0.52245986 0.25899065 0.59176922 0.29084855 0.65429401 0.34046853 0.70391393
		 0.40299332 0.73577166 0.47230256 0.74674928 0.54161191 0.73577166 0.60413653 0.70391393
		 0.6537565 0.65429401 0.68561459 0.59176922 0.69659185 0.52245986 0.61451072 0.47625375
		 0.59327185 0.43457049 0.56019187 0.40149057 0.51850873 0.38025182 0.47230256 0.37293363
		 0.42609638 0.38025182 0.38441318 0.40149057 0.35133326 0.43457049 0.33009458 0.47625375
		 0.32277638 0.52245986 0.33009458 0.56866598 0.35133326 0.6103493 0.38441324 0.64342928
		 0.42609638 0.66466773 0.47230256 0.6719861 0.51850873 0.66466773 0.56019187 0.64342928
		 0.59327185 0.6103493 0.61451048 0.56866598 0.62182879 0.52245986 0.54340661 0.49935684
		 0.53278714 0.47851515 0.51624727 0.46197522 0.49540564 0.45135584 0.47230256 0.44769675
		 0.44919947 0.45135584 0.4283579 0.46197522 0.41181791 0.47851515 0.40119863 0.49935684
		 0.39753944 0.52245986 0.40119863 0.54556298 0.41181791 0.56640458 0.4283579 0.58294463
		 0.44919947 0.59356415 0.47230256 0.59722316 0.49540564 0.59356415 0.51624727 0.58294463
		 0.53278714 0.56640458 0.54340661 0.54556298 0.54706568 0.52245986 0.47230256 0.50750732;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".pt";
	setAttr ".pt[0]" -type "float3" 0.12039813 0.108334 -0.039119713 ;
	setAttr ".pt[1]" -type "float3" 0.10241689 0.108334 -0.074410133 ;
	setAttr ".pt[2]" -type "float3" 0.074410155 0.108334 -0.10241684 ;
	setAttr ".pt[3]" -type "float3" 0.03911975 0.108334 -0.12039813 ;
	setAttr ".pt[4]" -type "float3" 2.0042986e-008 0.108334 -0.12659414 ;
	setAttr ".pt[5]" -type "float3" -0.039119713 0.108334 -0.12039813 ;
	setAttr ".pt[6]" -type "float3" -0.074410133 0.108334 -0.10241682 ;
	setAttr ".pt[7]" -type "float3" -0.10241681 0.108334 -0.074410126 ;
	setAttr ".pt[8]" -type "float3" -0.1203981 0.108334 -0.039119706 ;
	setAttr ".pt[9]" -type "float3" -0.12659404 0.108334 2.0511763e-008 ;
	setAttr ".pt[10]" -type "float3" -0.1203981 0.108334 0.039119728 ;
	setAttr ".pt[11]" -type "float3" -0.10241673 0.108334 0.074410133 ;
	setAttr ".pt[12]" -type "float3" -0.074410126 0.108334 0.10241684 ;
	setAttr ".pt[13]" -type "float3" -0.039119706 0.108334 0.12039813 ;
	setAttr ".pt[14]" -type "float3" 1.6270189e-008 0.108334 0.12659414 ;
	setAttr ".pt[15]" -type "float3" 0.039119717 0.108334 0.12039813 ;
	setAttr ".pt[16]" -type "float3" 0.074410133 0.108334 0.10241683 ;
	setAttr ".pt[17]" -type "float3" 0.10241683 0.108334 0.074410133 ;
	setAttr ".pt[18]" -type "float3" 0.12039811 0.108334 0.03911972 ;
	setAttr ".pt[19]" -type "float3" 0.12659404 0.108334 2.0511763e-008 ;
	setAttr ".pt[20]" -type "float3" 0 0.045351509 0 ;
	setAttr ".pt[21]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[22]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[23]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[24]" -type "float3" 1.8289028e-019 0.055433854 0 ;
	setAttr ".pt[25]" -type "float3" 0 0.055433854 0 ;
	setAttr ".pt[26]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[27]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[28]" -type "float3" 0 0.087809242 0 ;
	setAttr ".pt[29]" -type "float3" 0 0.14793165 1.2672761e-018 ;
	setAttr ".pt[30]" -type "float3" 0 0.081396602 0 ;
	setAttr ".pt[31]" -type "float3" 0 0.021274213 0 ;
	setAttr ".pt[32]" -type "float3" 0 0.021274213 0 ;
	setAttr ".pt[33]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[34]" -type "float3" 1.8288963e-019 -0.046091694 0 ;
	setAttr ".pt[35]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[36]" -type "float3" 0 0.0033965288 0 ;
	setAttr ".pt[37]" -type "float3" 0 0.0033965288 0 ;
	setAttr ".pt[38]" -type "float3" 0 -0.046091694 0 ;
	setAttr ".pt[39]" -type "float3" 0 0.045351509 1.2672761e-018 ;
	setAttr ".pt[100]" -type "float3" 0 -0.10429732 0 ;
	setAttr -s 101 ".vt[0:100]"  0.4755286 0.092027903 -0.15828772 0.4045088 0.092027903 -0.29767191
		 0.29389283 0.092027903 -0.40828785 0.15450859 0.092027903 -0.47930762 1.9557774e-008 0.092027903 -0.50377935
		 -0.15450856 0.092027903 -0.47930759 -0.29389271 0.092027903 -0.40828776 -0.40450859 0.092027903 -0.29767182
		 -0.47552836 0.092027903 -0.15828766 -0.50000012 0.092027903 -0.0037791217 -0.47552836 0.092027903 0.1507294
		 -0.40450856 0.092027903 0.29011357 -0.29389265 0.092027903 0.40072945 -0.15450852 0.092027903 0.47174922
		 4.6566129e-009 0.092027903 0.49622095 0.1545085 0.092027903 0.47174919 0.29389265 0.092027903 0.40072942
		 0.40450853 0.092027903 0.29011354 0.4755283 0.092027903 0.15072937 0.5 0.092027903 -0.0037791217
		 0.38042286 0.092027903 -0.12360688 0.32360703 0.092027903 -0.23511425 0.23511425 0.092027903 -0.323607
		 0.12360686 0.092027903 -0.3804228 0 0.092027903 -0.40000018 -0.12360686 0.092027903 -0.38420194
		 -0.2351142 0.092027903 -0.32738608 -0.32360691 0.092027903 -0.23511417 -0.38042271 0.092027903 -0.12360682
		 -0.4000001 0.092027903 0 -0.38042271 0.092027903 0.12360682 -0.32360688 0.092027903 0.23133501
		 -0.23511414 0.092027903 0.31982774 -0.12360682 0.092027903 0.37664354 -1.1920929e-008 0.092027903 0.39622092
		 0.12360679 0.092027903 0.37664354 0.2351141 0.092027903 0.31982768 0.32360682 0.092027903 0.231335
		 0.38042262 0.092027903 0.1236068 0.40000001 0.092027903 0 0.28531715 0.092027903 -0.09270516
		 0.24270527 0.092027903 -0.17633569 0.17633569 0.092027903 -0.24270526 0.092705145 0.092027903 -0.28531712
		 0 0.092027903 -0.30000016 -0.092705145 0.092027903 -0.28909624 -0.17633565 0.092027903 -0.24648432
		 -0.24270518 0.092027903 -0.18011476 -0.28531703 0.092027903 -0.096484251 -0.30000007 0.092027903 -0.0037791282
		 -0.28531703 0.092027903 0.088925995 -0.24270517 0.092027903 0.17255649 -0.17633562 0.092027903 0.23892602
		 -0.092705123 0.092027903 0.28153789 -8.9406971e-009 0.092027903 0.2962209 0.092705093 0.092027903 0.28153789
		 0.17633557 0.092027903 0.23892599 0.24270511 0.092027903 0.17255647 0.28531697 0.092027903 0.092705101
		 0.30000001 0.092027903 0 0.19021143 0.092027903 -0.065582566 0.16180351 0.092027903 -0.12133625
		 0.11755712 0.092027903 -0.16558263 0.06180343 0.092027903 -0.19399053 0 0.092027903 -0.20377922
		 -0.06180343 0.092027903 -0.19399053 -0.1175571 0.092027903 -0.1655826 -0.16180345 0.092027903 -0.12133621
		 -0.19021136 0.092027903 -0.065582544 -0.20000005 0.092027903 -0.0037791282 -0.19021136 0.092027903 0.058024283
		 -0.16180344 0.092027903 0.11377794 -0.11755707 0.092027903 0.1580243 -0.061803412 0.092027903 0.18643221
		 -5.9604646e-009 0.092027903 0.1962209 0.061803397 0.092027903 0.1864322 0.11755705 0.092027903 0.15802428
		 0.16180341 0.092027903 0.11377794 0.19021131 0.092027903 0.058024272 0.2 0.092027903 -0.0037791282
		 0.095105715 0.092027903 -0.034680847 0.080901757 0.092027903 -0.06255769 0.058778562 0.092027903 -0.084680878
		 0.030901715 0.092027903 -0.098884828 0 0.092027903 -0.10377917 -0.030901715 0.092027903 -0.098884828
		 -0.05877855 0.092027903 -0.084680863 -0.080901727 0.092027903 -0.062557667 -0.095105678 0.092027903 -0.034680836
		 -0.10000002 0.092027903 -0.0037791282 -0.095105678 0.092027903 0.027122578 -0.080901697 0.092027903 0.054999415
		 -0.058778517 0.092027903 0.077122591 -0.030901706 0.092027903 0.091326542 -2.9802323e-009 0.092027903 0.096220888
		 0.030901698 0.092027903 0.091326535 0.058778524 0.092027903 0.077122577 0.080901727 0.092027903 0.054999411
		 0.095105678 0.092027903 0.02712258 0.1 0.092027903 -0.0037791282 1.9557774e-008 0.092027903 -0.0037791217;
	setAttr -s 200 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1
		 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1
		 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1
		 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1
		 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1
		 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1
		 64 84 1 65 85 1;
	setAttr ".ed[166:199]" 66 86 1 67 87 1 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1
		 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1 80 100 1 81 100 1 82 100 1
		 83 100 1 84 100 1 85 100 1 86 100 1 87 100 1 88 100 1 89 100 1 90 100 1 91 100 1
		 92 100 1 93 100 1 94 100 1 95 100 1 96 100 1 97 100 1 98 100 1 99 100 1;
	setAttr -s 100 -ch 380 ".fc[0:99]" -type "polyFaces" 
		f 4 0 101 -21 -101
		mu 0 4 18 17 37 38
		f 4 1 102 -22 -102
		mu 0 4 17 16 36 37
		f 4 2 103 -23 -103
		mu 0 4 16 15 35 36
		f 4 3 104 -24 -104
		mu 0 4 15 14 34 35
		f 4 4 105 -25 -105
		mu 0 4 14 13 33 34
		f 4 5 106 -26 -106
		mu 0 4 13 12 32 33
		f 4 6 107 -27 -107
		mu 0 4 12 11 31 32
		f 4 7 108 -28 -108
		mu 0 4 11 10 30 31
		f 4 8 109 -29 -109
		mu 0 4 10 9 29 30
		f 4 9 110 -30 -110
		mu 0 4 9 8 28 29
		f 4 10 111 -31 -111
		mu 0 4 8 7 27 28
		f 4 11 112 -32 -112
		mu 0 4 7 6 26 27
		f 4 12 113 -33 -113
		mu 0 4 6 5 25 26
		f 4 13 114 -34 -114
		mu 0 4 5 4 24 25
		f 4 14 115 -35 -115
		mu 0 4 4 3 23 24
		f 4 15 116 -36 -116
		mu 0 4 3 2 22 23
		f 4 16 117 -37 -117
		mu 0 4 2 1 21 22
		f 4 17 118 -38 -118
		mu 0 4 1 0 20 21
		f 4 18 119 -39 -119
		mu 0 4 0 19 39 20
		f 4 19 100 -40 -120
		mu 0 4 19 18 38 39
		f 4 20 121 -41 -121
		mu 0 4 38 37 57 58
		f 4 21 122 -42 -122
		mu 0 4 37 36 56 57
		f 4 22 123 -43 -123
		mu 0 4 36 35 55 56
		f 4 23 124 -44 -124
		mu 0 4 35 34 54 55
		f 4 24 125 -45 -125
		mu 0 4 34 33 53 54
		f 4 25 126 -46 -126
		mu 0 4 33 32 52 53
		f 4 26 127 -47 -127
		mu 0 4 32 31 51 52
		f 4 27 128 -48 -128
		mu 0 4 31 30 50 51
		f 4 28 129 -49 -129
		mu 0 4 30 29 49 50
		f 4 29 130 -50 -130
		mu 0 4 29 28 48 49
		f 4 30 131 -51 -131
		mu 0 4 28 27 47 48
		f 4 31 132 -52 -132
		mu 0 4 27 26 46 47
		f 4 32 133 -53 -133
		mu 0 4 26 25 45 46
		f 4 33 134 -54 -134
		mu 0 4 25 24 44 45
		f 4 34 135 -55 -135
		mu 0 4 24 23 43 44
		f 4 35 136 -56 -136
		mu 0 4 23 22 42 43
		f 4 36 137 -57 -137
		mu 0 4 22 21 41 42
		f 4 37 138 -58 -138
		mu 0 4 21 20 40 41
		f 4 38 139 -59 -139
		mu 0 4 20 39 59 40
		f 4 39 120 -60 -140
		mu 0 4 39 38 58 59
		f 4 40 141 -61 -141
		mu 0 4 58 57 77 78
		f 4 41 142 -62 -142
		mu 0 4 57 56 76 77
		f 4 42 143 -63 -143
		mu 0 4 56 55 75 76
		f 4 43 144 -64 -144
		mu 0 4 55 54 74 75
		f 4 44 145 -65 -145
		mu 0 4 54 53 73 74
		f 4 45 146 -66 -146
		mu 0 4 53 52 72 73
		f 4 46 147 -67 -147
		mu 0 4 52 51 71 72
		f 4 47 148 -68 -148
		mu 0 4 51 50 70 71
		f 4 48 149 -69 -149
		mu 0 4 50 49 69 70
		f 4 49 150 -70 -150
		mu 0 4 49 48 68 69
		f 4 50 151 -71 -151
		mu 0 4 48 47 67 68
		f 4 51 152 -72 -152
		mu 0 4 47 46 66 67
		f 4 52 153 -73 -153
		mu 0 4 46 45 65 66
		f 4 53 154 -74 -154
		mu 0 4 45 44 64 65
		f 4 54 155 -75 -155
		mu 0 4 44 43 63 64
		f 4 55 156 -76 -156
		mu 0 4 43 42 62 63
		f 4 56 157 -77 -157
		mu 0 4 42 41 61 62
		f 4 57 158 -78 -158
		mu 0 4 41 40 60 61
		f 4 58 159 -79 -159
		mu 0 4 40 59 79 60
		f 4 59 140 -80 -160
		mu 0 4 59 58 78 79
		f 4 60 161 -81 -161
		mu 0 4 78 77 97 98
		f 4 61 162 -82 -162
		mu 0 4 77 76 96 97
		f 4 62 163 -83 -163
		mu 0 4 76 75 95 96
		f 4 63 164 -84 -164
		mu 0 4 75 74 94 95
		f 4 64 165 -85 -165
		mu 0 4 74 73 93 94
		f 4 65 166 -86 -166
		mu 0 4 73 72 92 93
		f 4 66 167 -87 -167
		mu 0 4 72 71 91 92
		f 4 67 168 -88 -168
		mu 0 4 71 70 90 91
		f 4 68 169 -89 -169
		mu 0 4 70 69 89 90
		f 4 69 170 -90 -170
		mu 0 4 69 68 88 89
		f 4 70 171 -91 -171
		mu 0 4 68 67 87 88
		f 4 71 172 -92 -172
		mu 0 4 67 66 86 87
		f 4 72 173 -93 -173
		mu 0 4 66 65 85 86
		f 4 73 174 -94 -174
		mu 0 4 65 64 84 85
		f 4 74 175 -95 -175
		mu 0 4 64 63 83 84
		f 4 75 176 -96 -176
		mu 0 4 63 62 82 83
		f 4 76 177 -97 -177
		mu 0 4 62 61 81 82
		f 4 77 178 -98 -178
		mu 0 4 61 60 80 81
		f 4 78 179 -99 -179
		mu 0 4 60 79 99 80
		f 4 79 160 -100 -180
		mu 0 4 79 78 98 99
		f 3 80 181 -181
		mu 0 3 98 97 100
		f 3 81 182 -182
		mu 0 3 97 96 100
		f 3 82 183 -183
		mu 0 3 96 95 100
		f 3 83 184 -184
		mu 0 3 95 94 100
		f 3 84 185 -185
		mu 0 3 94 93 100
		f 3 85 186 -186
		mu 0 3 93 92 100
		f 3 86 187 -187
		mu 0 3 92 91 100
		f 3 87 188 -188
		mu 0 3 91 90 100
		f 3 88 189 -189
		mu 0 3 90 89 100
		f 3 89 190 -190
		mu 0 3 89 88 100
		f 3 90 191 -191
		mu 0 3 88 87 100
		f 3 91 192 -192
		mu 0 3 87 86 100
		f 3 92 193 -193
		mu 0 3 86 85 100
		f 3 93 194 -194
		mu 0 3 85 84 100
		f 3 94 195 -195
		mu 0 3 84 83 100
		f 3 95 196 -196
		mu 0 3 83 82 100
		f 3 96 197 -197
		mu 0 3 82 81 100
		f 3 97 198 -198
		mu 0 3 81 80 100
		f 3 98 199 -199
		mu 0 3 80 99 100
		f 3 99 180 -200
		mu 0 3 99 98 100;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pSphere2";
	rename -uid "64699B01-46AD-44BE-7C2E-6C9D0D2AEC2C";
	setAttr ".r" -type "double3" -6.1824224727439478 67.364888840615791 350.3442459180294 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
createNode mesh -n "pSphere2Shape" -p "pSphere2";
	rename -uid "94829B6D-475A-34B5-F6CC-909CCF657B30";
	setAttr -k off ".v";
	setAttr -s 10 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dsm" 2;
createNode transform -n "directionalLight1";
	rename -uid "A968A044-4C32-AF58-176B-E881F8CE93F3";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 0.40310998112199625 4.0776164469635656 5.6165463499272317 ;
	setAttr ".r" -type "double3" 1.7939903379362818 39.20432859461458 36.257406758047914 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "F314DC1D-4AF5-5168-07EB-7F8DC1CD0CA9";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.75964451 0.61500001 ;
createNode transform -n "ambientLight1";
	rename -uid "30267D1C-4C58-D55F-CF71-2094779F8494";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 0.46469936732762651 1.407935895451474 -4.5916938139374039 ;
createNode ambientLight -n "ambientLightShape1" -p "ambientLight1";
	rename -uid "EDFE2875-4F31-CFC0-43C9-FE8D60B0BCC9";
	setAttr -k off ".v";
	setAttr ".urs" no;
createNode transform -n "volumeLight1";
	rename -uid "6A55814D-4F2B-F93A-E481-B8A245D4F7B1";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" -2.0752897859825006 1.9587311107534013 3.8599330026000347 ;
createNode volumeLight -n "volumeLightShape1" -p "volumeLight1";
	rename -uid "35B296F0-437F-84CB-1F58-5DB772BBCBAB";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 1 0.37199998 ;
	setAttr -s 2 ".crg";
	setAttr ".crg[0].crgp" 0;
	setAttr ".crg[0].crgc" -type "float3" 0 0 0 ;
	setAttr ".crg[0].crgi" 1;
	setAttr ".crg[1].crgp" 1;
	setAttr ".crg[1].crgc" -type "float3" 1 1 1 ;
	setAttr ".crg[1].crgi" 1;
	setAttr -s 2 ".pen[0:1]"  0 0 1 1 1 1;
createNode transform -n "directionalLight2";
	rename -uid "CB5656BF-48FD-CEBA-9320-2AB8989BA486";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 5.7095709000107391 3.4995814166966097 0.16202763807865228 ;
	setAttr ".r" -type "double3" 85.668654750781585 -35.492089377238308 91.37322756991037 ;
createNode directionalLight -n "directionalLightShape2" -p "directionalLight2";
	rename -uid "3C771CD5-461F-34F0-E5F8-4AAF41EF3943";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.75964451 0.61500001 ;
createNode transform -n "directionalLight3";
	rename -uid "670BA7DE-4D3B-DBB6-811D-3C9FC682FF8A";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 0.19138094723995058 7.2806620317834714 0.058655916336773473 ;
	setAttr ".r" -type "double3" 24.219532061340459 -43.119629689350624 -98.740822257018038 ;
createNode directionalLight -n "directionalLightShape3" -p "directionalLight3";
	rename -uid "3EF31917-4E4D-6707-2BB3-B2B93FC6C684";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.75964451 0.61500001 ;
createNode transform -n "ambientLight2";
	rename -uid "40084D29-46F4-48C2-4EF1-44B89C1BBDB0";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" -0.12943131905934901 4.4953035074910836 -0.024633891710063249 ;
createNode ambientLight -n "ambientLightShape2" -p "ambientLight2";
	rename -uid "66D07CE7-491A-7845-C508-308DD7F03370";
	setAttr -k off ".v";
	setAttr ".urs" no;
createNode transform -n "areaLight1";
	rename -uid "B62FB515-4764-9725-D42D-F5A14EC7CA1C";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" -7.9564156001080661 3.4978366090168245 0 ;
	setAttr ".r" -type "double3" 0 91.262846032983234 0 ;
createNode areaLight -n "areaLightShape1" -p "areaLight1";
	rename -uid "7823103B-4F56-65FB-F9D0-708188E50255";
	setAttr -k off ".v";
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "A6C7A1AC-4F4B-E5B8-A1B9-1188CB839A01";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "585FF5ED-4171-89CB-B7D8-E298A8C474F0";
	addAttr -s false -ci true -h true -sn "sunAndSkyShader" -ln "sunAndSkyShader" -at "message";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
	setAttr ".imformat" 32;
	setAttr ".imfkey" -type "string" "png";
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "01ED4197-4A14-8382-2152-EB92AAB2314A";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".miSamplesQualityR" 1.0150735378265381;
	setAttr ".miSamplesMin" 2;
	setAttr ".miSamplesMax" 204;
	setAttr -s 81 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "false";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "1.02 1.02 1.02 1.02";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "2";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "204";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1 1 1";
	setAttr ".stringOptions[47].type" -type "string" "color";
	setAttr ".stringOptions[48].name" -type "string" "environment lighting caustic photons";
	setAttr ".stringOptions[48].value" -type "string" "0";
	setAttr ".stringOptions[48].type" -type "string" "integer";
	setAttr ".stringOptions[49].name" -type "string" "environment lighting global illum photons";
	setAttr ".stringOptions[49].value" -type "string" "0";
	setAttr ".stringOptions[49].type" -type "string" "integer";
	setAttr ".stringOptions[50].name" -type "string" "light importance sampling";
	setAttr ".stringOptions[50].value" -type "string" "on";
	setAttr ".stringOptions[50].type" -type "string" "string";
	setAttr ".stringOptions[51].name" -type "string" "light importance sampling quality";
	setAttr ".stringOptions[51].value" -type "string" "1.0";
	setAttr ".stringOptions[51].type" -type "string" "scalar";
	setAttr ".stringOptions[52].name" -type "string" "light importance sampling samples";
	setAttr ".stringOptions[52].value" -type "string" "4";
	setAttr ".stringOptions[52].type" -type "string" "integer";
	setAttr ".stringOptions[53].name" -type "string" "light importance sampling resolution";
	setAttr ".stringOptions[53].value" -type "string" "1.0";
	setAttr ".stringOptions[53].type" -type "string" "scalar";
	setAttr ".stringOptions[54].name" -type "string" "light importance sampling precomputed";
	setAttr ".stringOptions[54].value" -type "string" "false";
	setAttr ".stringOptions[54].type" -type "string" "boolean";
	setAttr ".stringOptions[55].name" -type "string" "mila quality";
	setAttr ".stringOptions[55].value" -type "string" "1.0";
	setAttr ".stringOptions[55].type" -type "string" "scalar";
	setAttr ".stringOptions[56].name" -type "string" "mila glossy quality";
	setAttr ".stringOptions[56].value" -type "string" "1.0";
	setAttr ".stringOptions[56].type" -type "string" "scalar";
	setAttr ".stringOptions[57].name" -type "string" "mila scatter quality";
	setAttr ".stringOptions[57].value" -type "string" "1.0";
	setAttr ".stringOptions[57].type" -type "string" "scalar";
	setAttr ".stringOptions[58].name" -type "string" "mila scatter scale";
	setAttr ".stringOptions[58].value" -type "string" "1.0";
	setAttr ".stringOptions[58].type" -type "string" "scalar";
	setAttr ".stringOptions[59].name" -type "string" "mila diffuse quality";
	setAttr ".stringOptions[59].value" -type "string" "1.0";
	setAttr ".stringOptions[59].type" -type "string" "scalar";
	setAttr ".stringOptions[60].name" -type "string" "mila diffuse detail";
	setAttr ".stringOptions[60].value" -type "string" "false";
	setAttr ".stringOptions[60].type" -type "string" "boolean";
	setAttr ".stringOptions[61].name" -type "string" "mila diffuse detail distance";
	setAttr ".stringOptions[61].value" -type "string" "10.0";
	setAttr ".stringOptions[61].type" -type "string" "scalar";
	setAttr ".stringOptions[62].name" -type "string" "mila use max distance inside";
	setAttr ".stringOptions[62].value" -type "string" "true";
	setAttr ".stringOptions[62].type" -type "string" "boolean";
	setAttr ".stringOptions[63].name" -type "string" "mila clamp output";
	setAttr ".stringOptions[63].value" -type "string" "false";
	setAttr ".stringOptions[63].type" -type "string" "boolean";
	setAttr ".stringOptions[64].name" -type "string" "mila clamp level";
	setAttr ".stringOptions[64].value" -type "string" "1.0";
	setAttr ".stringOptions[64].type" -type "string" "scalar";
	setAttr ".stringOptions[65].name" -type "string" "gi gpu";
	setAttr ".stringOptions[65].value" -type "string" "off";
	setAttr ".stringOptions[65].type" -type "string" "string";
	setAttr ".stringOptions[66].name" -type "string" "gi gpu rays";
	setAttr ".stringOptions[66].value" -type "string" "34";
	setAttr ".stringOptions[66].type" -type "string" "integer";
	setAttr ".stringOptions[67].name" -type "string" "gi gpu passes";
	setAttr ".stringOptions[67].value" -type "string" "4";
	setAttr ".stringOptions[67].type" -type "string" "integer";
	setAttr ".stringOptions[68].name" -type "string" "gi gpu presample density";
	setAttr ".stringOptions[68].value" -type "string" "1.0";
	setAttr ".stringOptions[68].type" -type "string" "scalar";
	setAttr ".stringOptions[69].name" -type "string" "gi gpu presample depth";
	setAttr ".stringOptions[69].value" -type "string" "2";
	setAttr ".stringOptions[69].type" -type "string" "integer";
	setAttr ".stringOptions[70].name" -type "string" "gi gpu filter";
	setAttr ".stringOptions[70].value" -type "string" "1.0";
	setAttr ".stringOptions[70].type" -type "string" "integer";
	setAttr ".stringOptions[71].name" -type "string" "gi gpu depth";
	setAttr ".stringOptions[71].value" -type "string" "3";
	setAttr ".stringOptions[71].type" -type "string" "integer";
	setAttr ".stringOptions[72].name" -type "string" "gi gpu devices";
	setAttr ".stringOptions[72].value" -type "string" "0";
	setAttr ".stringOptions[72].type" -type "string" "integer";
	setAttr ".stringOptions[73].name" -type "string" "shutter shape function";
	setAttr ".stringOptions[73].value" -type "string" "none";
	setAttr ".stringOptions[73].type" -type "string" "string";
	setAttr ".stringOptions[74].name" -type "string" "shutter full open";
	setAttr ".stringOptions[74].value" -type "string" "0.2";
	setAttr ".stringOptions[74].type" -type "string" "scalar";
	setAttr ".stringOptions[75].name" -type "string" "shutter full close";
	setAttr ".stringOptions[75].value" -type "string" "0.8";
	setAttr ".stringOptions[75].type" -type "string" "scalar";
	setAttr ".stringOptions[76].name" -type "string" "gi";
	setAttr ".stringOptions[76].value" -type "string" "off";
	setAttr ".stringOptions[76].type" -type "string" "boolean";
	setAttr ".stringOptions[77].name" -type "string" "gi rays";
	setAttr ".stringOptions[77].value" -type "string" "100";
	setAttr ".stringOptions[77].type" -type "string" "integer";
	setAttr ".stringOptions[78].name" -type "string" "gi depth";
	setAttr ".stringOptions[78].value" -type "string" "0";
	setAttr ".stringOptions[78].type" -type "string" "integer";
	setAttr ".stringOptions[79].name" -type "string" "gi freeze";
	setAttr ".stringOptions[79].value" -type "string" "off";
	setAttr ".stringOptions[79].type" -type "string" "boolean";
	setAttr ".stringOptions[80].name" -type "string" "gi filter";
	setAttr ".stringOptions[80].value" -type "string" "1.0";
	setAttr ".stringOptions[80].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	rename -uid "F01B881B-482F-C999-2B44-51A220729E89";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B03C1DCC-4973-C2EA-BE04-9F8132212A47";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "CDA110D8-4FF5-A3FF-9B74-52954FE60A7F";
createNode displayLayer -n "defaultLayer";
	rename -uid "540715A3-4B2C-CEAC-26F7-CFB5BE985EE5";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7C6D6EC2-409B-A430-84D7-B9B56E1A0056";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "5D701525-4BC8-1216-06E0-0C80F213390B";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "69E1A067-4B96-C6A2-54E1-EE854C96458E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"all\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1072\n                -height 418\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1072\n            -height 418\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n"
		+ "                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n"
		+ "                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n"
		+ "            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n"
		+ "                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1072\\n    -height 418\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1072\\n    -height 418\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D8C2DB1B-4070-27FC-2ECA-8FB40C503E82";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 15 -ast 1 -aet 15 ";
	setAttr ".st" 6;
createNode polySphere -n "polySphere1";
	rename -uid "4C63BE42-4554-CDC4-1933-2E95CF06C4C9";
	setAttr ".sa" 15;
	setAttr ".sh" 15;
createNode objectSet -n "edges";
	rename -uid "CE09C6D0-47D8-F309-A215-8ABD971EFC1F";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
	setAttr -s 2 ".gn";
createNode groupId -n "groupId1";
	rename -uid "6C6DBA07-46F3-58E9-BC20-FA8F637741CF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "0F23BEC2-44C6-A2B4-C39F-668F243269A9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "e[0:434]";
createNode polyPoke -n "polyPoke1";
	rename -uid "52660B15-481B-C9A0-28C8-9D837FFEC60F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:224]";
	setAttr ".ix" -type "matrix" 1.4395144769453883 0 0 0 0 1.4395144769453883 0 0 0 0 1.4395144769453883 0
		 0 0 0 1;
	setAttr ".ws" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "714BF66F-4918-D99C-1FD4-6A89D745635B";
	setAttr ".uopa" yes;
	setAttr -s 212 ".tk";
	setAttr ".tk[0:165]" -type "float3"  -0.039568834 -0.30260137 0.018559046
		 -0.028416384 -0.30260137 0.033909079 -0.011984712 -0.30260137 0.043395918 0.0068850261
		 -0.30260137 0.045379199 0.02493003 -0.30260137 0.039515991 0.039030276 -0.30260137
		 0.026820168 0.04674755 -0.30260137 0.0094868494 0.046747532 -0.30260137 -0.0094868299
		 0.039030291 -0.30260137 -0.026820149 0.024930052 -0.30260137 -0.039515987 0.0068850275
		 -0.30260137 -0.045379192 -0.011984699 -0.30260137 -0.043395918 -0.028416377 -0.30260137
		 -0.033909082 -0.039568853 -0.30260137 -0.018559055 -0.043513682 -0.30260137 4.0023069e-009
		 -0.11752339 -0.27147087 0.053471923 -0.085391253 -0.27147087 0.097698137 -0.03804861
		 -0.27147087 0.12503146 0.016318504 -0.27147087 0.13074574 0.068309493 -0.27147087
		 0.11385275 0.10893463 -0.27147087 0.077273697 0.1311696 -0.27147087 0.027333299 0.13116963
		 -0.27147087 -0.027333271 0.10893466 -0.27147087 -0.077273637 0.068309546 -0.27147087
		 -0.11385278 0.016318522 -0.27147087 -0.13074568 -0.038048558 -0.27147087 -0.12503146
		 -0.085391223 -0.27147087 -0.09769813 -0.11752341 -0.27147087 -0.053471953 -0.12888922
		 -0.27147087 7.4319106e-009 -0.16623846 -0.26471093 0.07522814 -0.12103256 -0.26471093
		 0.1374488 -0.054427527 -0.26471093 0.17590319 0.022060005 -0.26471093 0.18394247
		 0.095204674 -0.26471093 0.16017622 0.15235908 -0.26471093 0.10871414 0.18364076 -0.26471093
		 0.038454454 0.18364081 -0.26471093 -0.03845438 0.15235911 -0.26471093 -0.10871412
		 0.095204741 -0.26471093 -0.16017622 0.022060025 -0.26471093 -0.18394247 -0.054427523
		 -0.26471093 -0.1759032 -0.12103255 -0.26471093 -0.13744882 -0.16623852 -0.26471093
		 -0.075228199 -0.18222871 -0.26471093 3.5141501e-009 -0.16623722 -0.23337255 0.075059779
		 -0.12113254 -0.23337255 0.13714109 -0.054676678 -0.23337255 0.17550945 0.021639638
		 -0.23337255 0.18353064 0.094620571 -0.23337255 0.15981765 0.15164703 -0.23337255
		 0.10847086 0.18285881 -0.23337255 0.038368363 0.18285881 -0.23337255 -0.038368352
		 0.15164702 -0.23337255 -0.10847087 0.094620638 -0.23337255 -0.15981764 0.021639701
		 -0.23337255 -0.18353064 -0.054676604 -0.23337255 -0.17550944 -0.12113251 -0.23337255
		 -0.13714111 -0.16623722 -0.23337255 -0.075059809 -0.18219177 -0.23337255 3.8543182e-009
		 -0.13511807 -0.15735729 0.060948104 -0.09849333 -0.15735729 0.11135772 -0.044531543
		 -0.15735729 0.1425126 0.017436858 -0.15735729 0.14902574 0.076696977 -0.15735729
		 0.12977098 0.1230021 -0.15735729 0.088077605 0.14834562 -0.15735729 0.031154869 0.14834568
		 -0.15735729 -0.031154856 0.12300207 -0.15735729 -0.088077605 0.076696962 -0.15735729
		 -0.12977099 0.017436888 -0.15735729 -0.14902574 -0.044531528 -0.15735729 -0.14251263
		 -0.0984933 -0.15735729 -0.11135775 -0.13511801 -0.15735729 -0.060948092 -0.14807303
		 -0.15735729 4.2404165e-009 -0.093037575 -0.092807755 0.041924402 -0.067844562 -0.092807755
		 0.076599702 -0.030725693 -0.092807755 0.098030277 0.01190049 -0.092807755 0.10251041
		 0.052663792 -0.092807755 0.089265645 0.084515803 -0.092807755 0.060585979 0.1019489
		 -0.092807755 0.021430522 0.1019489 -0.092807755 -0.021430513 0.08451575 -0.092807755
		 -0.060586032 0.052663755 -0.092807755 -0.08926563 0.01190054 -0.092807755 -0.10251041
		 -0.030725757 -0.092807755 -0.098030291 -0.067844555 -0.092807755 -0.076599665 -0.093037695
		 -0.092807755 -0.041924421 -0.1019489 -0.092807755 3.2299647e-009 -0.058436871 -0.03347075
		 0.026332695 -0.042613178 -0.03347075 0.048112299 -0.019298846 -0.03347075 0.061572745
		 0.0074746963 -0.03347075 0.06438683 0.033078074 -0.03347075 0.056067728 0.053084336
		 -0.03347075 0.038054109 0.06403406 -0.03347075 0.013460502 0.064034015 -0.03347075
		 -0.0134605 0.053084355 -0.03347075 -0.038054042 0.033078097 -0.03347075 -0.05606772
		 0.0074747168 -0.03347075 -0.06438677 -0.019298777 -0.03347075 -0.06157276 -0.042613104
		 -0.03347075 -0.048112262 -0.058436878 -0.03347075 -0.026332716 -0.06403406 -0.03347075
		 3.8801486e-009 1.6018748e-007 0.033470828 -4.4703484e-008 -4.8428774e-008 0.033470828
		 2.2351742e-008 3.9115548e-008 0.033470828 1.0058284e-007 6.519258e-009 0.033470828
		 6.7055225e-008 -6.7055225e-008 0.033470828 -1.1175871e-008 3.3527613e-008 0.033470828
		 -1.1175871e-008 3.3527613e-008 0.033470828 -1.8626451e-009 -5.9604645e-008 0.033470828
		 7.4505806e-009 -3.7252903e-009 0.033470828 7.4505806e-009 -1.3038516e-008 0.033470828
		 -3.7252903e-009 -1.0244548e-008 0.033470828 3.7252903e-009 -3.7252903e-009 0.033470828
		 -5.5879354e-008 -4.0978193e-008 0.033470828 4.0978193e-008 1.7136335e-007 0.033470828
		 -1.3038516e-008 -1.1175871e-007 0.033470828 -3.3306691e-016 0.042232387 0.098949566
		 -0.019030662 0.030796578 0.098949566 -0.034770794 0.013947293 0.098949566 -0.044498675
		 -0.0054019717 0.098949566 -0.046532385 -0.023905586 0.098949566 -0.04052021 -0.038364161
		 0.098949566 -0.027501717 -0.046277471 0.098949566 -0.0097279297 -0.046277493 0.098949566
		 0.009727912 -0.038364083 0.098949566 0.02750171 -0.023905545 0.098949566 0.040520187
		 -0.0054019857 0.098949566 0.046532385 0.013947263 0.098949566 0.044498689 0.030796586
		 0.098949566 0.034770742 0.042232342 0.098949566 0.019030688 0.046277493 0.098949566
		 -1.4661722e-009 0.034172282 0.16010357 -0.015398612 0.024918944 0.16010357 -0.028134754
		 0.011285404 0.16010357 -0.036005996 -0.0043709963 0.16010357 -0.037651546 -0.019343114
		 0.16010357 -0.032786831 -0.031042216 0.16010357 -0.022252966 -0.037445392 0.16010357
		 -0.0078713289 -0.037445281 0.16010357 0.007871314 -0.031042144 0.16010357 0.022252949
		 -0.019343171 0.16010357 0.032786824 -0.0043709832 0.16010357 0.037651543 0.011285361
		 0.16010357 0.036006019 0.024918914 0.16010357 0.02813473 0.034172308 0.16010357 0.015398618
		 0.037445396 0.16010357 -1.3905088e-015 0.032408509 0.21426061 -0.0146039 0.023632901
		 0.21426061 -0.026682641 0.010702923 0.21426061 -0.034147728 -0.0041453997 0.21426061
		 -0.035708357 -0.018344838 0.21426061 -0.031094622 -0.029440077 0.21426061 -0.021104431
		 -0.035512675 0.21426061 -0.0074650683 -0.035512675 0.21426061 0.0074650738 -0.029440112
		 0.21426061 0.02110444 -0.018344779 0.21426061 0.031094618 -0.0041454034 0.21426061
		 0.035708364 0.010702945 0.21426061 0.034147728 0.023632839 0.21426061 0.026682623
		 0.032408491 0.21426061 0.014603909 0.035512775 0.21426061 -4.6554551e-016 0 0.25905353
		 -1.8626451e-009;
	setAttr ".tk[166:211]" -4.1909516e-008 0.2757116 0 -6.9849193e-009 0.25905353
		 1.8626451e-009 -5.5879354e-009 0.25905353 -4.0978193e-008 1.3038516e-008 0.2757116
		 -1.8626451e-009 -4.0978193e-008 0.25905353 5.5879354e-009 3.7252903e-009 0.2757116
		 4.6566129e-010 -9.3132257e-009 0.25905353 -1.3969839e-009 -1.8626451e-009 0.2757116
		 -1.0244548e-008 1.3038516e-008 0.25905353 1.8626451e-009 -3.259629e-009 0.25905353
		 2.2351742e-008 -1.8626451e-009 0.2757116 0 -2.4214387e-008 0.25905353 -7.4505806e-009
		 -2.7939677e-008 0.25905353 -4.6566129e-009 7.4505806e-009 0.2757116 -1.110223e-016
		 2.9802322e-008 0.29252407 1.3969839e-009 1.6763806e-008 0.30918211 -1.6763806e-008
		 3.9581209e-009 0.29252407 1.6763806e-008 -9.3132257e-010 0.29252407 1.0244548e-008
		 -6.519258e-009 0.30918211 -1.0244548e-008 -2.7939677e-009 0.29252407 -4.1909516e-009
		 1.4901161e-008 0.30918211 2.3283064e-010 -1.3969839e-008 0.29252407 6.9849193e-010
		 -6.519258e-009 0.30918211 3.7252903e-009 1.3969839e-009 0.29252407 -2.7939677e-009
		 0 0.29252407 8.3819032e-009 -1.2107193e-008 0.30918211 -9.3132257e-009 -1.8626451e-009
		 0.29252407 3.7252903e-009 3.259629e-008 0.29252407 -2.7939677e-009 -2.1420419e-008
		 0.30918211 1.6653345e-015 -1.3969839e-009 0.10932466 -4.6566129e-010 4.1909516e-009
		 0.12598275 -4.6566129e-009 -3.4924597e-009 0.10932466 -4.1909516e-009 -6.4028427e-010
		 0.10932466 0 -1.8626451e-009 0.12598275 -1.3969839e-009 1.2572855e-008 0.10932466
		 2.3283064e-009 -1.3969839e-009 0.12598275 -1.1641532e-010 -3.259629e-009 0.10932466
		 9.3132257e-010 7.9162419e-009 0.12598275 -2.0954758e-009 -4.1909516e-009 0.10932466
		 -6.0535967e-009 1.1641532e-010 0.10932466 -4.6566129e-010 -1.5133992e-009 0.12598275
		 1.8626451e-009 3.259629e-009 0.10932466 4.6566129e-009 5.5879354e-009 0.10932466
		 0 -5.5879354e-009 0.12598275 9.4368957e-016 0.0021154827 -0.30749696 4.0023069e-009
		 7.8580342e-010 0.11632209 1.6653345e-016;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "ADFFB4AB-4F4D-7163-5015-7CB5A8C6B44A";
	setAttr ".ics" -type "componentList" 1 "e[0:434]";
	setAttr ".cv" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "869A4160-498F-C310-1080-EA8F34A50855";
	setAttr ".ics" -type "componentList" 16 "f[15]" "f[17]" "f[19]" "f[21]" "f[23]" "f[25]" "f[27]" "f[29]" "f[31]" "f[33]" "f[35]" "f[37]" "f[39]" "f[41]" "f[43]" "f[45:434]";
	setAttr ".ix" -type "matrix" 1.4395144769453883 0 0 0 0 1.4395144769453883 0 0 0 0 1.4395144769453883 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.014958677 -0.049748968 0 ;
	setAttr ".rs" 48478;
	setAttr ".ls" -type "double3" 0.66666667718097994 0.66666667718097994 0.66666667718097994 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4057594682579126 -1.8596319301354167 -1.4285436937086944 ;
	setAttr ".cbx" -type "double3" 1.435676822115747 1.7601339910946205 1.4285436937086944 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "9688C02D-4A1E-617B-4BE8-B384D9297DE1";
	setAttr ".ics" -type "componentList" 16 "f[15]" "f[17]" "f[19]" "f[21]" "f[23]" "f[25]" "f[27]" "f[29]" "f[31]" "f[33]" "f[35]" "f[37]" "f[39]" "f[41]" "f[43]" "f[45:434]";
	setAttr ".ix" -type "matrix" 1.4395144769453883 0 0 0 0 1.4395144769453883 0 0 0 0 1.4395144769453883 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.012233828 -0.054011945 0 ;
	setAttr ".rs" 49434;
	setAttr ".lt" -type "double3" 1.2468324983583301e-017 3.7123082385903672e-016 -0.023244219993568231 ;
	setAttr ".ls" -type "double3" 0.63333331402245352 0.63333331402245352 0.63333331402245352 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4002035476018488 -1.8487594757031314 -1.4174765551078203 ;
	setAttr ".cbx" -type "double3" 1.4246712033689399 1.7407355884629967 1.4174765551078203 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "EA8268BA-46A4-5ADF-2D79-F5BE02447CA0";
	setAttr ".ics" -type "componentList" 16 "f[15]" "f[17]" "f[19]" "f[21]" "f[23]" "f[25]" "f[27]" "f[29]" "f[31]" "f[33]" "f[35]" "f[37]" "f[39]" "f[41]" "f[43]" "f[45:434]";
	setAttr ".ix" -type "matrix" 1.4395144769453883 0 0 0 0 1.4395144769453883 0 0 0 0 1.4395144769453883 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.010078788 -0.058241025 0 ;
	setAttr ".rs" 50957;
	setAttr ".lt" -type "double3" -1.1424780392566003e-016 1.7347234759768071e-018 0.014213508492775263 ;
	setAttr ".ls" -type "double3" 0.66666665451465967 0.66666665451465967 0.66666665451465967 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3732000211416631 -1.8200306476731012 -1.3862457480755692 ;
	setAttr ".cbx" -type "double3" 1.3933575976488579 1.7035485956153757 1.3862457480755692 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "95DE845D-4E05-BDBE-6D1D-28B44AAFBB5C";
	setAttr ".ics" -type "componentList" 16 "f[15]" "f[17]" "f[19]" "f[21]" "f[23]" "f[25]" "f[27]" "f[29]" "f[31]" "f[33]" "f[35]" "f[37]" "f[39]" "f[41]" "f[43]" "f[45:434]";
	setAttr ".ix" -type "matrix" 1.4395144769453883 0 0 0 0 1.4395144769453883 0 0 0 0 1.4395144769453883 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0090240706 -0.059366487 0 ;
	setAttr ".rs" 50675;
	setAttr ".lt" -type "double3" 1.4961989980299961e-017 2.4286128663675299e-017 0.0054177888852375488 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3848753225397847 -1.8281318772146549 -1.395707450150018 ;
	setAttr ".cbx" -type "double3" 1.4029234630466503 1.709398902072421 1.395707450150018 ;
createNode objectSet -n "faces";
	rename -uid "5C452901-444B-0D56-7C67-17990C5DBE98";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
	setAttr -s 2 ".gn";
createNode groupId -n "groupId2";
	rename -uid "E910E2AB-496A-DB94-D104-A7B9E46BC328";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "8935A122-4B1A-CC63-AED9-47A0EF72A39D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 16 "f[15]" "f[17]" "f[19]" "f[21]" "f[23]" "f[25]" "f[27]" "f[29]" "f[31]" "f[33]" "f[35]" "f[37]" "f[39]" "f[41]" "f[43]" "f[45:434]";
createNode blinn -n "red";
	rename -uid "FB34AA25-4428-1B88-903F-FCA0B0553AFA";
	setAttr ".c" -type "float3" 0.64300001 0 0 ;
createNode shadingEngine -n "blinn1SG";
	rename -uid "DDA043F8-4AA0-1404-0632-FAA26F2C54FD";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "E1B2D6D5-4C07-DC1E-9E5C-B382C81CF244";
createNode blinn -n "yellow";
	rename -uid "381F5161-4BF4-B672-CA73-90AD19721B0B";
	setAttr ".c" -type "float3" 0.89499998 0.86301672 0.063544981 ;
createNode shadingEngine -n "blinn2SG";
	rename -uid "49CEABF2-43B4-2D38-9E2D-4C9840420228";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "4C7A3D72-420F-CE1F-34F4-08BD41FFF46D";
createNode groupId -n "groupId3";
	rename -uid "3B57C013-4AE3-8B21-E5B8-998651BDC5EA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "72AB1707-4F1A-44DF-3A0B-3DB98A76E1F0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 17 "f[0:14]" "f[16]" "f[18]" "f[20]" "f[22]" "f[24]" "f[26]" "f[28]" "f[30]" "f[32]" "f[34]" "f[36]" "f[38]" "f[40]" "f[42]" "f[44]" "f[435:6914]";
	setAttr ".irc" -type "componentList" 16 "f[15]" "f[17]" "f[19]" "f[21]" "f[23]" "f[25]" "f[27]" "f[29]" "f[31]" "f[33]" "f[35]" "f[37]" "f[39]" "f[41]" "f[43]" "f[45:434]";
createNode groupId -n "groupId4";
	rename -uid "869A35DD-48A5-D528-D03B-628C62FED256";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "81C41BCE-4EB2-F1C5-3DA2-75B56FB10284";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "F5D44877-4301-65DE-F610-06AAD4BE7DC1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 16 "f[15]" "f[17]" "f[19]" "f[21]" "f[23]" "f[25]" "f[27]" "f[29]" "f[31]" "f[33]" "f[35]" "f[37]" "f[39]" "f[41]" "f[43]" "f[45:434]";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "77ADCE89-449D-EA8D-8C8D-ACA63605284C";
	setAttr ".r" 0.5;
	setAttr ".h" 1;
	setAttr ".sc" 5;
	setAttr ".cuv" 3;
createNode polyTweak -n "polyTweak2";
	rename -uid "CDDABD0A-4A60-3ED3-84AA-B6A50F34479A";
	setAttr ".uopa" yes;
	setAttr -s 202 ".tk";
	setAttr ".tk[0:165]" -type "float3"  1.9557774e-008 0.4079721 -0.0037791217
		 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008
		 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721
		 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217
		 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008
		 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721
		 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217
		 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008
		 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721
		 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217
		 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008
		 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721
		 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217
		 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008
		 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721
		 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217
		 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008
		 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721
		 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217
		 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008
		 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721
		 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 0 0.4079721 0 1.9557774e-008
		 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721
		 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217
		 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008
		 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721
		 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217
		 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008
		 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721
		 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217
		 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008
		 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721
		 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217
		 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008
		 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721
		 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217
		 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008
		 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721
		 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217
		 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008
		 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721
		 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217
		 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008 0.4079721 -0.0037791217 1.9557774e-008
		 0.4079721 -0.0037791217 1.9557774e-008 -0.4079721 -0.0037791217 1.9557774e-008 -0.4079721
		 -0.0037791217 1.9557774e-008 -0.4079721 -0.0037791217 1.9557774e-008 -0.4079721 -0.0037791217
		 1.9557774e-008 -0.4079721 -0.0037791217 1.9557774e-008 -0.4079721 -0.0037791217 1.9557774e-008
		 -0.4079721 -0.0037791217 1.9557774e-008 -0.4079721 -0.0037791217 1.9557774e-008 -0.4079721
		 -0.0037791217 1.9557774e-008 -0.4079721 -0.0037791217 1.9557774e-008 -0.4079721 -0.0037791217
		 1.9557774e-008 -0.4079721 -0.0037791217 1.9557774e-008 -0.4079721 -0.0037791217 1.9557774e-008
		 -0.4079721 -0.0037791217 1.9557774e-008 -0.4079721 -0.0037791217 1.9557774e-008 -0.4079721
		 -0.0037791217 1.9557774e-008 -0.4079721 -0.0037791217 1.9557774e-008 -0.4079721 -0.0037791217
		 1.9557774e-008 -0.4079721 -0.0037791217 1.9557774e-008 -0.4079721 -0.0037791217 0
		 -0.4079721 0 0 -0.4079721 0 0 -0.4079721 0 0 -0.4079721 0 0 -0.4079721 0 0 -0.4079721
		 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721 0 0 -0.4079721 0 0 -0.4079721
		 0 0 -0.4079721 0 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721
		 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721
		 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721 0 0 -0.4079721 0 0 -0.4079721
		 0 0 -0.4079721 0 0 -0.4079721 0 0 -0.4079721 0 0 -0.4079721 0 0 -0.4079721 -0.0037791282
		 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282
		 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282
		 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282
		 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282
		 0 -0.4079721 0 0 -0.4079721 0 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282
		 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282
		 0 -0.4079721 -0.0037791282;
	setAttr ".tk[166:201]" 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282
		 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282
		 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282
		 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282
		 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282
		 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282
		 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282
		 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282
		 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282 1.9557774e-008 -0.4079721 -0.0037791217
		 1.9557774e-008 -0.4079721 -0.0037791217 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282
		 0 -0.4079721 -0.0037791282 0 -0.4079721 -0.0037791282 1.9557774e-008 -0.4079721 -0.0037791217
		 1.9557774e-008 -0.4079721 -0.0037791217 0 -0.4079721 -0.0037791282 1.9557774e-008
		 0.4079721 -0.0037791217 1.9557774e-008 -0.4079721 -0.0037791217;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "D11747F5-4439-CFC8-21C3-C0BCB2B6D490";
	setAttr ".dc" -type "componentList" 10 "f[1:17]" "f[20:27]" "f[32:33]" "f[35:47]" "f[50:53]" "f[55:64]" "f[66:75]" "f[78:96]" "f[98:99]" "f[180:199]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "8CD9E44E-4692-E41F-2CE2-E6B94AD39DC3";
	setAttr ".dc" -type "componentList" 3 "f[0:2]" "f[7]" "f[10]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "C2057E8D-4077-6CB7-6909-67ACB7C5BEB2";
	setAttr ".dc" -type "componentList" 1 "f[8]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "5DDA166C-43FA-5B25-6D5E-C682CF944C93";
	setAttr ".dc" -type "componentList" 1 "f[7]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "82A18C1F-442F-C4EB-1EDE-B78895932BEF";
	setAttr ".dc" -type "componentList" 1 "f[3]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "1EB28CFE-42B9-71B0-D2AC-FFBE95D521BC";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "159E1C9E-4A16-BB79-EFD2-74BD0A3609B4";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "A17DED33-48E0-89A2-8CE7-0DB9ED74749E";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "29512AAA-4A17-8945-427A-D88E23805E3D";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "D8D2B1B8-428D-9B1F-2B9B-BAAA422E7733";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent11";
	rename -uid "657EE3E1-47E8-BD2D-A611-7589A384EFC3";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent12";
	rename -uid "6ECB1148-422D-4B65-B6BC-E4B9EC829CDE";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode lambert -n "lambert2";
	rename -uid "34EED9FE-4BB2-AAF1-D8A3-DDB7766FEBD3";
createNode shadingEngine -n "lambert2SG";
	rename -uid "95D08784-46D2-41DA-43BA-7F9EEC1953DB";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "6692AEDD-4AB8-F0B2-84A2-B0B7C2672318";
createNode file -n "file1";
	rename -uid "8B2D5438-473E-7386-57C4-B0BB83850572";
	setAttr ".ftn" -type "string" "E:/Maya Tutorials/Texture/strawberry top leaf.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "E33E9F7B-4C80-84C0-9CD8-DA859F08B283";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "09392B19-4EF3-63F2-08B0-358D0C1D8B68";
	setAttr ".uopa" yes;
	setAttr -s 101 ".uvtk[0:100]" -type "float2" 0.17921992 -0.38852161 0.14831705
		 -0.44917211 0.10018446 -0.4973045 0.039534103 -0.52820742 -0.027697433 -0.53885579
		 -0.094928965 -0.52820742 -0.15557937 -0.4973045 -0.20371175 -0.44917205 -0.23461476
		 -0.38852161 -0.24526307 -0.32129017 -0.23461476 -0.25405857 -0.20371175 -0.19340804
		 -0.15557928 -0.14527568 -0.094928876 -0.11437264 -0.027697433 -0.10372439 0.039534044
		 -0.11437264 0.10018446 -0.14527568 0.14831693 -0.19340804 0.17921986 -0.25405857
		 0.18986835 -0.32129017 0.13783641 -0.37507534 0.11311413 -0.42359573 0.074608102
		 -0.4621017 0.026087772 -0.48682395 -0.027697433 -0.49534273 -0.081482634 -0.48682395
		 -0.13000299 -0.46210164 -0.1685089 -0.42359567 -0.19323121 -0.37507534 -0.20174998
		 -0.32129017 -0.19323121 -0.26750496 -0.1685089 -0.21898469 -0.1300029 -0.1804786
		 -0.081482634 -0.15575632 -0.027697433 -0.14723745 0.026087772 -0.15575632 0.074608043
		 -0.1804786 0.11311401 -0.21898469 0.13783635 -0.26750496 0.14635505 -0.32129017 0.096453026
		 -0.36162901 0.077911153 -0.39801934 0.049031686 -0.42689878 0.01264156 -0.44544047
		 -0.027697433 -0.45182961 -0.068036333 -0.44544047 -0.10442661 -0.42689878 -0.13330607
		 -0.39801925 -0.15184776 -0.36162901 -0.15823688 -0.32129017 -0.15184776 -0.28095117
		 -0.13330607 -0.24456087 -0.10442661 -0.2156814 -0.068036333 -0.19713989 -0.027697433
		 -0.19075069 0.01264156 -0.19713989 0.049031686 -0.2156814 0.077911153 -0.24456087
		 0.096453026 -0.28095117 0.10284187 -0.32129017 0.055069637 -0.34818268 0.042708289
		 -0.3724429 0.023455273 -0.39169586 -0.00080483034 -0.40405709 -0.027697433 -0.40831637
		 -0.054590035 -0.40405709 -0.078850195 -0.39169586 -0.098103151 -0.3724429 -0.11046435
		 -0.34818268 -0.11472364 -0.32129017 -0.11046435 -0.29439756 -0.098103151 -0.27013728
		 -0.078850165 -0.25088432 -0.054590035 -0.23852327 -0.027697433 -0.23426387 -0.00080483034
		 -0.23852327 0.023455273 -0.25088432 0.042708289 -0.27013728 0.055069458 -0.29439756
		 0.059328806 -0.32129017 0.013686072 -0.33473638 0.0075053684 -0.34686655 -0.0021210201
		 -0.356493 -0.014251132 -0.36267361 -0.027697433 -0.36480325 -0.041143734 -0.36267361
		 -0.053273786 -0.356493 -0.06290029 -0.34686655 -0.069080874 -0.33473638 -0.071210548
		 -0.32129017 -0.069080874 -0.30784377 -0.06290029 -0.29571375 -0.053273786 -0.28608719
		 -0.041143734 -0.27990642 -0.027697433 -0.27777687 -0.014251132 -0.27990642 -0.0021210201
		 -0.28608719 0.0075053684 -0.29571375 0.013686072 -0.30784377 0.015815686 -0.32129017
		 -0.027697433 -0.32999262;
createNode file -n "file2";
	rename -uid "6D0A4926-421D-2D3E-59EA-289BE68C9303";
	setAttr ".ftn" -type "string" "E:/Maya Tutorials/Texture/strawberry top leaf.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "A03BC072-44B3-B0B6-9534-26BD12008546";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "1DE08720-464C-3CD8-3AA0-2399C0C9E92F";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -210.11903926966718 -297.02379772114426 ;
	setAttr ".tgi[0].vh" -type "double2" 374.40474702725396 81.547615807207961 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -180;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679687;
	setAttr ".tgi[0].ni[1].y" -152.85714721679687;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[2].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 262.85714721679687;
	setAttr ".tgi[0].ni[3].y" -234.28572082519531;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 262.85714721679687;
	setAttr ".tgi[0].ni[4].y" -114.28571319580078;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[5].y" -257.14285278320312;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 262.85714721679687;
	setAttr ".tgi[0].ni[6].y" -157.14285278320312;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[7].y" -84.285713195800781;
	setAttr ".tgi[0].ni[7].nvs" 1923;
createNode polyUnite -n "polyUnite1";
	rename -uid "62EFDA2A-417C-A1D7-38FB-B3970A608C54";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId6";
	rename -uid "06E4AF19-4BA3-850B-588F-4CAA06CAEB73";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "9639F549-488F-7BE9-21FC-209D3E4EE4EB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:99]";
createNode groupId -n "groupId7";
	rename -uid "B2368F8F-4BCE-9EDE-2B77-3A899ABF36CE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "48B647AD-4ECE-4317-83E6-3283E7DE96B8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "E2A3F94E-4758-29D5-CCB8-699910661665";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "E24821B8-4E87-9F55-1625-418EE69B0794";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "F9493CAA-4BDE-D14D-65FF-F6A8ABFEA186";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "707274C7-4FCE-EFA7-7D5F-86B230109436";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "0B21F4F8-4D24-0818-4D88-34BF560A961A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 16 "f[15]" "f[17]" "f[19]" "f[21]" "f[23]" "f[25]" "f[27]" "f[29]" "f[31]" "f[33]" "f[35]" "f[37]" "f[39]" "f[41]" "f[43]" "f[45:434]";
createNode groupId -n "groupId12";
	rename -uid "8B5BBB7F-41A9-A000-4F73-E3BBEC57E7A6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "952F758C-4EC8-CA4C-22C6-988BED44CC3B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 17 "f[0:14]" "f[16]" "f[18]" "f[20]" "f[22]" "f[24]" "f[26]" "f[28]" "f[30]" "f[32]" "f[34]" "f[36]" "f[38]" "f[40]" "f[42]" "f[44]" "f[435:6914]";
createNode groupId -n "groupId13";
	rename -uid "100FA898-429E-A6E6-7CBA-6CADEADA5204";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "6AFB8F1E-4A3E-D7FF-CB7F-D6B9B7323CA2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 16 "f[15]" "f[17]" "f[19]" "f[21]" "f[23]" "f[25]" "f[27]" "f[29]" "f[31]" "f[33]" "f[35]" "f[37]" "f[39]" "f[41]" "f[43]" "f[45:434]";
createNode groupId -n "groupId14";
	rename -uid "7B1683E7-4165-293F-AAF8-5A9F26C19AB9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "A5E08198-4DA9-E487-1EB7-ECB06C813A55";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[6915:7114]";
createNode animCurveTL -n "pSphere2_translateX";
	rename -uid "4433B855-4283-23DF-238F-68AC64932FA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pSphere2_translateY";
	rename -uid "F411DB74-4A14-E04D-971A-F7ADF4847BA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pSphere2_translateZ";
	rename -uid "D547E02C-4559-A7F1-97F7-28990E8B781D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "pSphere2_visibility";
	rename -uid "6FC4AB25-423C-21BF-D5DB-F5935F882914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "pSphere2_rotateX";
	rename -uid "42D36218-4413-C71C-7E26-5D95C51B1D4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pSphere2_rotateY";
	rename -uid "B9407085-4B39-04C1-D55F-FC80506075CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pSphere2_rotateZ";
	rename -uid "E2CB0EAE-418D-ADF8-80D3-36929DDC556F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 15 360;
	setAttr ".pst" 4;
createNode animCurveTU -n "pSphere2_scaleX";
	rename -uid "8EBD2F93-4F33-22AF-BB9E-2E9DBB54BA0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pSphere2_scaleY";
	rename -uid "F2F29A0C-4CE8-F925-DC4B-58857E9BEC40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pSphere2_scaleZ";
	rename -uid "3ECD16AB-48AF-D1DD-E8BC-A2BE1395C7F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
select -ne :time1;
	setAttr ".o" 12;
	setAttr ".unw" 12;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :lightList1;
	setAttr -s 7 ".l";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
	setAttr ".outf" 32;
	setAttr ".imfkey" -type "string" "png";
	setAttr ".an" yes;
	setAttr ".ef" 15;
	setAttr ".ep" 2;
	setAttr ".pff" yes;
select -ne :defaultResolution;
	setAttr ".w" 1024;
	setAttr ".h" 768;
	setAttr ".pa" 1;
	setAttr ".dar" 1.3333333730697632;
select -ne :defaultLightSet;
	setAttr -s 7 ".dsm";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId1.id" "pSphereShape1.iog.og[0].gid";
connectAttr "edges.mwc" "pSphereShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pSphereShape1.iog.og[1].gid";
connectAttr "faces.mwc" "pSphereShape1.iog.og[1].gco";
connectAttr "groupId3.id" "pSphereShape1.iog.og[2].gid";
connectAttr "blinn1SG.mwc" "pSphereShape1.iog.og[2].gco";
connectAttr "groupId5.id" "pSphereShape1.iog.og[3].gid";
connectAttr "blinn2SG.mwc" "pSphereShape1.iog.og[3].gco";
connectAttr "groupParts4.og" "pSphereShape1.i";
connectAttr "groupId4.id" "pSphereShape1.ciog.cog[0].cgid";
connectAttr "groupParts5.og" "pCylinderShape1.i";
connectAttr "polyTweakUV1.uvtk[0]" "pCylinderShape1.uvst[0].uvtw";
connectAttr "groupId6.id" "pCylinderShape1.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "pCylinderShape1.iog.og[1].gco";
connectAttr "groupId7.id" "pCylinderShape1.ciog.cog[1].cgid";
connectAttr "groupId8.id" "pCylinderShape2.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "pCylinderShape2.iog.og[1].gco";
connectAttr "groupId9.id" "pCylinderShape2.ciog.cog[1].cgid";
connectAttr "pSphere2_translateX.o" "pSphere2.tx";
connectAttr "pSphere2_translateY.o" "pSphere2.ty";
connectAttr "pSphere2_translateZ.o" "pSphere2.tz";
connectAttr "pSphere2_visibility.o" "pSphere2.v";
connectAttr "pSphere2_rotateX.o" "pSphere2.rx";
connectAttr "pSphere2_rotateY.o" "pSphere2.ry";
connectAttr "pSphere2_rotateZ.o" "pSphere2.rz";
connectAttr "pSphere2_scaleX.o" "pSphere2.sx";
connectAttr "pSphere2_scaleY.o" "pSphere2.sy";
connectAttr "pSphere2_scaleZ.o" "pSphere2.sz";
connectAttr "groupParts10.og" "pSphere2Shape.i";
connectAttr "groupId10.id" "pSphere2Shape.iog.og[0].gid";
connectAttr "edges.mwc" "pSphere2Shape.iog.og[0].gco";
connectAttr "groupId11.id" "pSphere2Shape.iog.og[1].gid";
connectAttr "faces.mwc" "pSphere2Shape.iog.og[1].gco";
connectAttr "groupId12.id" "pSphere2Shape.iog.og[2].gid";
connectAttr "blinn1SG.mwc" "pSphere2Shape.iog.og[2].gco";
connectAttr "groupId13.id" "pSphere2Shape.iog.og[3].gid";
connectAttr "blinn2SG.mwc" "pSphere2Shape.iog.og[3].gco";
connectAttr "groupId14.id" "pSphere2Shape.iog.og[4].gid";
connectAttr "lambert2SG.mwc" "pSphere2Shape.iog.og[4].gco";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "groupId1.msg" "edges.gn" -na;
connectAttr "groupId10.msg" "edges.gn" -na;
connectAttr "pSphereShape1.iog.og[0]" "edges.dsm" -na;
connectAttr "pSphere2Shape.iog.og[0]" "edges.dsm" -na;
connectAttr "polySphere1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyTweak1.out" "polyPoke1.ip";
connectAttr "pSphereShape1.wm" "polyPoke1.mp";
connectAttr "groupParts1.og" "polyTweak1.ip";
connectAttr "polyPoke1.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polyExtrudeFace1.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace4.mp";
connectAttr "groupId2.msg" "faces.gn" -na;
connectAttr "groupId11.msg" "faces.gn" -na;
connectAttr "pSphereShape1.iog.og[1]" "faces.dsm" -na;
connectAttr "pSphere2Shape.iog.og[1]" "faces.dsm" -na;
connectAttr "polyExtrudeFace4.msg" "faces.dnsm" -na;
connectAttr "polyExtrudeFace4.out" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "red.oc" "blinn1SG.ss";
connectAttr "pSphereShape1.iog.og[2]" "blinn1SG.dsm" -na;
connectAttr "pSphereShape1.ciog.cog[0]" "blinn1SG.dsm" -na;
connectAttr "pSphere2Shape.iog.og[2]" "blinn1SG.dsm" -na;
connectAttr "groupId3.msg" "blinn1SG.gn" -na;
connectAttr "groupId4.msg" "blinn1SG.gn" -na;
connectAttr "groupId12.msg" "blinn1SG.gn" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "red.msg" "materialInfo1.m";
connectAttr "yellow.oc" "blinn2SG.ss";
connectAttr "pSphereShape1.iog.og[3]" "blinn2SG.dsm" -na;
connectAttr "pSphere2Shape.iog.og[3]" "blinn2SG.dsm" -na;
connectAttr "groupId5.msg" "blinn2SG.gn" -na;
connectAttr "groupId13.msg" "blinn2SG.gn" -na;
connectAttr "blinn2SG.msg" "materialInfo2.sg";
connectAttr "yellow.msg" "materialInfo2.m";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
connectAttr "polyCylinder1.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "file1.oc" "lambert2.c";
connectAttr "file1.ot" "lambert2.it";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pCylinderShape1.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[1]" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape2.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[1]" "lambert2SG.dsm" -na;
connectAttr "pSphere2Shape.iog.og[4]" "lambert2SG.dsm" -na;
connectAttr "groupId6.msg" "lambert2SG.gn" -na;
connectAttr "groupId7.msg" "lambert2SG.gn" -na;
connectAttr "groupId8.msg" "lambert2SG.gn" -na;
connectAttr "groupId9.msg" "lambert2SG.gn" -na;
connectAttr "groupId14.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo3.sg";
connectAttr "lambert2.msg" "materialInfo3.m";
connectAttr "file1.msg" "materialInfo3.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "deleteComponent12.og" "polyTweakUV1.ip";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "yellow.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "blinn2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "lambert2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "pSphereShape1.o" "polyUnite1.ip[0]";
connectAttr "pCylinderShape1.o" "polyUnite1.ip[1]";
connectAttr "pCylinderShape2.o" "polyUnite1.ip[2]";
connectAttr "pSphereShape1.wm" "polyUnite1.im[0]";
connectAttr "pCylinderShape1.wm" "polyUnite1.im[1]";
connectAttr "pCylinderShape2.wm" "polyUnite1.im[2]";
connectAttr "polyTweakUV1.out" "groupParts5.ig";
connectAttr "groupId6.id" "groupParts5.gi";
connectAttr "polyUnite1.out" "groupParts6.ig";
connectAttr "groupId10.id" "groupParts6.gi";
connectAttr "groupParts6.og" "groupParts7.ig";
connectAttr "groupId11.id" "groupParts7.gi";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId12.id" "groupParts8.gi";
connectAttr "groupParts8.og" "groupParts9.ig";
connectAttr "groupId13.id" "groupParts9.gi";
connectAttr "groupParts9.og" "groupParts10.ig";
connectAttr "groupId14.id" "groupParts10.gi";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "red.msg" ":defaultShaderList1.s" -na;
connectAttr "yellow.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "ambientLightShape1.ltd" ":lightList1.l" -na;
connectAttr "volumeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "directionalLightShape2.ltd" ":lightList1.l" -na;
connectAttr "directionalLightShape3.ltd" ":lightList1.l" -na;
connectAttr "ambientLightShape2.ltd" ":lightList1.l" -na;
connectAttr "areaLightShape1.ltd" ":lightList1.l" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.oc" ":lambert1.c";
connectAttr "file2.ot" ":lambert1.it";
connectAttr "file2.msg" ":initialMaterialInfo.t" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "ambientLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "volumeLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "directionalLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "directionalLight3.iog" ":defaultLightSet.dsm" -na;
connectAttr "ambientLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "areaLight1.iog" ":defaultLightSet.dsm" -na;
// End of strawberry.0005.ma
