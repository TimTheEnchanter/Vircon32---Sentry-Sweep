; program start section
  call __global_scope_initialization
  call __function_main
  hlt

; location of global variables
  %define global_malloc_start_address 0
  %define global_malloc_end_address 1
  %define global_malloc_first_block 2
  %define global_LevelTiles 3
  %define global_LevelStarts 4099
  %define global_LevelEnemies 4111
  %define global_LevelItems 4399
  %define global_TypeHP 4687
  %define global_TypeSpeed 4692
  %define global_TypeScale 4697
  %define global_TypeRadius 4702
  %define global_TypeHitRadius 4707
  %define global_TypeRange 4712
  %define global_TypeStopDistance 4717
  %define global_TypeCooldown 4722
  %define global_TypeCooldownRand 4727
  %define global_TypeFrameBase 4732
  %define global_TypeDropChance 4737
  %define global_TypeDropItem 4742
  %define global_TypeDropAmount 4747
  %define global_Map 4752
  %define global_DoorAt 5776
  %define global_Doors 6800
  %define global_Enemies 6960
  %define global_Items 7224
  %define global_Projectiles 7384
  %define global_Bolts 7512
  %define global_PelletHits 7640
  %define global_DoorCount 7664
  %define global_DrawOrder 7665
  %define global_SortDepth 7761
  %define global_PlayerX 7857
  %define global_PlayerY 7858
  %define global_DirX 7859
  %define global_DirY 7860
  %define global_PlaneX 7861
  %define global_PlaneY 7862
  %define global_Health 7863
  %define global_Ammo 7864
  %define global_Shells 7865
  %define global_Cells 7866
  %define global_Weapon 7867
  %define global_HasShotgun 7868
  %define global_HasRifle 7869
  %define global_FlashTimer 7870
  %define global_HasRedKey 7871
  %define global_HasBlueKey 7872
  %define global_FireTimer 7873
  %define global_DamageFlash 7874
  %define global_PickupFlash 7875
  %define global_WalkPhase 7876
  %define global_LockedTimer 7877
  %define global_ShowMap 7878
  %define global_GameState 7879
  %define global_StateTimer 7880
  %define global_FrameCount 7881
  %define global_CurrentLevel 7882
  %define global_LevelFrames 7883
  %define global_Kills 7884
  %define global_EnemiesTotal 7885
  %define global_SecretsFound 7886
  %define global_SecretsTotal 7887
  %define global_TotalKills 7888
  %define global_TotalEnemies 7889
  %define global_TotalSecrets 7890
  %define global_TotalSecretsAvailable 7891
  %define global_LevelStartAmmo 7892
  %define global_LevelStartShells 7893
  %define global_LevelStartCells 7894
  %define global_LevelStartShotgun 7895
  %define global_LevelStartRifle 7896
  %define global_BossIndex 7897
  %define global_BossActive 7898
  %define global_BossEnraged 7899
  %define global_BossDeathTimer 7900
  %define global_ZBuffer 7901
  %define global_CameraX 8029
  %define global_TextBuffer 8157
  %define global_NumberBuffer 8221
  %define global_LevelName 8237
  %define global_MessageText 8285
  %define global_MessageTimer 8349
  %define global_SpriteCount 8350

__global_scope_initialization:
  push BP
  mov BP, SP
  mov R0, 1048576
  mov [global_malloc_start_address], R0
  mov R0, 3145727
  mov [global_malloc_end_address], R0
  mov R0, -1
  mov [global_malloc_first_block], R0
  mov R0, 2
  mov [global_LevelTiles], R0
  mov R0, 2
  mov [4], R0
  mov R0, 2
  mov [5], R0
  mov R0, 2
  mov [6], R0
  mov R0, 2
  mov [7], R0
  mov R0, 2
  mov [8], R0
  mov R0, 2
  mov [9], R0
  mov R0, 2
  mov [10], R0
  mov R0, 2
  mov [11], R0
  mov R0, 2
  mov [12], R0
  mov R0, 2
  mov [13], R0
  mov R0, 2
  mov [14], R0
  mov R0, 2
  mov [15], R0
  mov R0, 2
  mov [16], R0
  mov R0, 2
  mov [17], R0
  mov R0, 2
  mov [18], R0
  mov R0, 2
  mov [19], R0
  mov R0, 2
  mov [20], R0
  mov R0, 2
  mov [21], R0
  mov R0, 2
  mov [22], R0
  mov R0, 2
  mov [23], R0
  mov R0, 2
  mov [24], R0
  mov R0, 2
  mov [25], R0
  mov R0, 2
  mov [26], R0
  mov R0, 1
  mov [27], R0
  mov R0, 1
  mov [28], R0
  mov R0, 1
  mov [29], R0
  mov R0, 1
  mov [30], R0
  mov R0, 1
  mov [31], R0
  mov R0, 1
  mov [32], R0
  mov R0, 1
  mov [33], R0
  mov R0, 1
  mov [34], R0
  mov R0, 2
  mov [35], R0
  mov R0, 0
  mov [36], R0
  mov R0, 0
  mov [37], R0
  mov R0, 0
  mov [38], R0
  mov R0, 0
  mov [39], R0
  mov R0, 0
  mov [40], R0
  mov R0, 0
  mov [41], R0
  mov R0, 0
  mov [42], R0
  mov R0, 2
  mov [43], R0
  mov R0, 0
  mov [44], R0
  mov R0, 0
  mov [45], R0
  mov R0, 0
  mov [46], R0
  mov R0, 0
  mov [47], R0
  mov R0, 0
  mov [48], R0
  mov R0, 0
  mov [49], R0
  mov R0, 0
  mov [50], R0
  mov R0, 0
  mov [51], R0
  mov R0, 0
  mov [52], R0
  mov R0, 0
  mov [53], R0
  mov R0, 0
  mov [54], R0
  mov R0, 0
  mov [55], R0
  mov R0, 0
  mov [56], R0
  mov R0, 0
  mov [57], R0
  mov R0, 0
  mov [58], R0
  mov R0, 1
  mov [59], R0
  mov R0, 0
  mov [60], R0
  mov R0, 0
  mov [61], R0
  mov R0, 0
  mov [62], R0
  mov R0, 0
  mov [63], R0
  mov R0, 0
  mov [64], R0
  mov R0, 0
  mov [65], R0
  mov R0, 1
  mov [66], R0
  mov R0, 2
  mov [67], R0
  mov R0, 0
  mov [68], R0
  mov R0, 0
  mov [69], R0
  mov R0, 0
  mov [70], R0
  mov R0, 0
  mov [71], R0
  mov R0, 0
  mov [72], R0
  mov R0, 0
  mov [73], R0
  mov R0, 0
  mov [74], R0
  mov R0, 2
  mov [75], R0
  mov R0, 0
  mov [76], R0
  mov R0, 0
  mov [77], R0
  mov R0, 0
  mov [78], R0
  mov R0, 0
  mov [79], R0
  mov R0, 0
  mov [80], R0
  mov R0, 0
  mov [81], R0
  mov R0, 0
  mov [82], R0
  mov R0, 0
  mov [83], R0
  mov R0, 0
  mov [84], R0
  mov R0, 0
  mov [85], R0
  mov R0, 0
  mov [86], R0
  mov R0, 0
  mov [87], R0
  mov R0, 0
  mov [88], R0
  mov R0, 0
  mov [89], R0
  mov R0, 0
  mov [90], R0
  mov R0, 1
  mov [91], R0
  mov R0, 0
  mov [92], R0
  mov R0, 0
  mov [93], R0
  mov R0, 0
  mov [94], R0
  mov R0, 0
  mov [95], R0
  mov R0, 0
  mov [96], R0
  mov R0, 0
  mov [97], R0
  mov R0, 1
  mov [98], R0
  mov R0, 2
  mov [99], R0
  mov R0, 0
  mov [100], R0
  mov R0, 0
  mov [101], R0
  mov R0, 0
  mov [102], R0
  mov R0, 0
  mov [103], R0
  mov R0, 0
  mov [104], R0
  mov R0, 0
  mov [105], R0
  mov R0, 0
  mov [106], R0
  mov R0, 2
  mov [107], R0
  mov R0, 0
  mov [108], R0
  mov R0, 0
  mov [109], R0
  mov R0, 0
  mov [110], R0
  mov R0, 0
  mov [111], R0
  mov R0, 0
  mov [112], R0
  mov R0, 0
  mov [113], R0
  mov R0, 0
  mov [114], R0
  mov R0, 0
  mov [115], R0
  mov R0, 0
  mov [116], R0
  mov R0, 0
  mov [117], R0
  mov R0, 0
  mov [118], R0
  mov R0, 0
  mov [119], R0
  mov R0, 0
  mov [120], R0
  mov R0, 0
  mov [121], R0
  mov R0, 0
  mov [122], R0
  mov R0, 1
  mov [123], R0
  mov R0, 0
  mov [124], R0
  mov R0, 0
  mov [125], R0
  mov R0, 0
  mov [126], R0
  mov R0, 0
  mov [127], R0
  mov R0, 0
  mov [128], R0
  mov R0, 0
  mov [129], R0
  mov R0, 1
  mov [130], R0
  mov R0, 2
  mov [131], R0
  mov R0, 0
  mov [132], R0
  mov R0, 0
  mov [133], R0
  mov R0, 0
  mov [134], R0
  mov R0, 0
  mov [135], R0
  mov R0, 0
  mov [136], R0
  mov R0, 0
  mov [137], R0
  mov R0, 0
  mov [138], R0
  mov R0, 6
  mov [139], R0
  mov R0, 0
  mov [140], R0
  mov R0, 0
  mov [141], R0
  mov R0, 0
  mov [142], R0
  mov R0, 3
  mov [143], R0
  mov R0, 0
  mov [144], R0
  mov R0, 0
  mov [145], R0
  mov R0, 0
  mov [146], R0
  mov R0, 0
  mov [147], R0
  mov R0, 0
  mov [148], R0
  mov R0, 0
  mov [149], R0
  mov R0, 0
  mov [150], R0
  mov R0, 3
  mov [151], R0
  mov R0, 0
  mov [152], R0
  mov R0, 0
  mov [153], R0
  mov R0, 0
  mov [154], R0
  mov R0, 6
  mov [155], R0
  mov R0, 0
  mov [156], R0
  mov R0, 0
  mov [157], R0
  mov R0, 0
  mov [158], R0
  mov R0, 0
  mov [159], R0
  mov R0, 0
  mov [160], R0
  mov R0, 0
  mov [161], R0
  mov R0, 1
  mov [162], R0
  mov R0, 2
  mov [163], R0
  mov R0, 0
  mov [164], R0
  mov R0, 0
  mov [165], R0
  mov R0, 0
  mov [166], R0
  mov R0, 0
  mov [167], R0
  mov R0, 0
  mov [168], R0
  mov R0, 0
  mov [169], R0
  mov R0, 0
  mov [170], R0
  mov R0, 2
  mov [171], R0
  mov R0, 0
  mov [172], R0
  mov R0, 0
  mov [173], R0
  mov R0, 0
  mov [174], R0
  mov R0, 0
  mov [175], R0
  mov R0, 0
  mov [176], R0
  mov R0, 0
  mov [177], R0
  mov R0, 0
  mov [178], R0
  mov R0, 0
  mov [179], R0
  mov R0, 0
  mov [180], R0
  mov R0, 0
  mov [181], R0
  mov R0, 0
  mov [182], R0
  mov R0, 0
  mov [183], R0
  mov R0, 0
  mov [184], R0
  mov R0, 0
  mov [185], R0
  mov R0, 0
  mov [186], R0
  mov R0, 1
  mov [187], R0
  mov R0, 0
  mov [188], R0
  mov R0, 0
  mov [189], R0
  mov R0, 0
  mov [190], R0
  mov R0, 0
  mov [191], R0
  mov R0, 0
  mov [192], R0
  mov R0, 0
  mov [193], R0
  mov R0, 1
  mov [194], R0
  mov R0, 2
  mov [195], R0
  mov R0, 0
  mov [196], R0
  mov R0, 0
  mov [197], R0
  mov R0, 0
  mov [198], R0
  mov R0, 0
  mov [199], R0
  mov R0, 0
  mov [200], R0
  mov R0, 0
  mov [201], R0
  mov R0, 0
  mov [202], R0
  mov R0, 2
  mov [203], R0
  mov R0, 0
  mov [204], R0
  mov R0, 0
  mov [205], R0
  mov R0, 0
  mov [206], R0
  mov R0, 0
  mov [207], R0
  mov R0, 0
  mov [208], R0
  mov R0, 0
  mov [209], R0
  mov R0, 0
  mov [210], R0
  mov R0, 0
  mov [211], R0
  mov R0, 0
  mov [212], R0
  mov R0, 0
  mov [213], R0
  mov R0, 0
  mov [214], R0
  mov R0, 0
  mov [215], R0
  mov R0, 0
  mov [216], R0
  mov R0, 0
  mov [217], R0
  mov R0, 0
  mov [218], R0
  mov R0, 1
  mov [219], R0
  mov R0, 0
  mov [220], R0
  mov R0, 0
  mov [221], R0
  mov R0, 0
  mov [222], R0
  mov R0, 0
  mov [223], R0
  mov R0, 0
  mov [224], R0
  mov R0, 0
  mov [225], R0
  mov R0, 1
  mov [226], R0
  mov R0, 2
  mov [227], R0
  mov R0, 0
  mov [228], R0
  mov R0, 0
  mov [229], R0
  mov R0, 0
  mov [230], R0
  mov R0, 0
  mov [231], R0
  mov R0, 0
  mov [232], R0
  mov R0, 0
  mov [233], R0
  mov R0, 0
  mov [234], R0
  mov R0, 2
  mov [235], R0
  mov R0, 0
  mov [236], R0
  mov R0, 0
  mov [237], R0
  mov R0, 0
  mov [238], R0
  mov R0, 0
  mov [239], R0
  mov R0, 0
  mov [240], R0
  mov R0, 0
  mov [241], R0
  mov R0, 0
  mov [242], R0
  mov R0, 0
  mov [243], R0
  mov R0, 0
  mov [244], R0
  mov R0, 0
  mov [245], R0
  mov R0, 0
  mov [246], R0
  mov R0, 0
  mov [247], R0
  mov R0, 0
  mov [248], R0
  mov R0, 0
  mov [249], R0
  mov R0, 0
  mov [250], R0
  mov R0, 1
  mov [251], R0
  mov R0, 0
  mov [252], R0
  mov R0, 0
  mov [253], R0
  mov R0, 0
  mov [254], R0
  mov R0, 0
  mov [255], R0
  mov R0, 0
  mov [256], R0
  mov R0, 0
  mov [257], R0
  mov R0, 1
  mov [258], R0
  mov R0, 1
  mov [259], R0
  mov R0, 1
  mov [260], R0
  mov R0, 1
  mov [261], R0
  mov R0, 1
  mov [262], R0
  mov R0, 1
  mov [263], R0
  mov R0, 1
  mov [264], R0
  mov R0, 1
  mov [265], R0
  mov R0, 1
  mov [266], R0
  mov R0, 3
  mov [267], R0
  mov R0, 3
  mov [268], R0
  mov R0, 2
  mov [269], R0
  mov R0, 0
  mov [270], R0
  mov R0, 0
  mov [271], R0
  mov R0, 0
  mov [272], R0
  mov R0, 2
  mov [273], R0
  mov R0, 3
  mov [274], R0
  mov R0, 3
  mov [275], R0
  mov R0, 3
  mov [276], R0
  mov R0, 3
  mov [277], R0
  mov R0, 3
  mov [278], R0
  mov R0, 3
  mov [279], R0
  mov R0, 3
  mov [280], R0
  mov R0, 3
  mov [281], R0
  mov R0, 3
  mov [282], R0
  mov R0, 1
  mov [283], R0
  mov R0, 1
  mov [284], R0
  mov R0, 0
  mov [285], R0
  mov R0, 0
  mov [286], R0
  mov R0, 0
  mov [287], R0
  mov R0, 1
  mov [288], R0
  mov R0, 1
  mov [289], R0
  mov R0, 1
  mov [290], R0
  mov R0, 1
  mov [291], R0
  mov R0, 0
  mov [292], R0
  mov R0, 0
  mov [293], R0
  mov R0, 0
  mov [294], R0
  mov R0, 0
  mov [295], R0
  mov R0, 0
  mov [296], R0
  mov R0, 0
  mov [297], R0
  mov R0, 0
  mov [298], R0
  mov R0, 3
  mov [299], R0
  mov R0, 0
  mov [300], R0
  mov R0, 0
  mov [301], R0
  mov R0, 0
  mov [302], R0
  mov R0, 0
  mov [303], R0
  mov R0, 0
  mov [304], R0
  mov R0, 0
  mov [305], R0
  mov R0, 0
  mov [306], R0
  mov R0, 0
  mov [307], R0
  mov R0, 0
  mov [308], R0
  mov R0, 0
  mov [309], R0
  mov R0, 0
  mov [310], R0
  mov R0, 0
  mov [311], R0
  mov R0, 0
  mov [312], R0
  mov R0, 0
  mov [313], R0
  mov R0, 0
  mov [314], R0
  mov R0, 1
  mov [315], R0
  mov R0, 0
  mov [316], R0
  mov R0, 0
  mov [317], R0
  mov R0, 0
  mov [318], R0
  mov R0, 0
  mov [319], R0
  mov R0, 0
  mov [320], R0
  mov R0, 0
  mov [321], R0
  mov R0, 1
  mov [322], R0
  mov R0, 1
  mov [323], R0
  mov R0, 0
  mov [324], R0
  mov R0, 0
  mov [325], R0
  mov R0, 0
  mov [326], R0
  mov R0, 0
  mov [327], R0
  mov R0, 0
  mov [328], R0
  mov R0, 0
  mov [329], R0
  mov R0, 0
  mov [330], R0
  mov R0, 3
  mov [331], R0
  mov R0, 0
  mov [332], R0
  mov R0, 0
  mov [333], R0
  mov R0, 0
  mov [334], R0
  mov R0, 0
  mov [335], R0
  mov R0, 0
  mov [336], R0
  mov R0, 0
  mov [337], R0
  mov R0, 0
  mov [338], R0
  mov R0, 0
  mov [339], R0
  mov R0, 0
  mov [340], R0
  mov R0, 0
  mov [341], R0
  mov R0, 0
  mov [342], R0
  mov R0, 0
  mov [343], R0
  mov R0, 0
  mov [344], R0
  mov R0, 0
  mov [345], R0
  mov R0, 0
  mov [346], R0
  mov R0, 1
  mov [347], R0
  mov R0, 0
  mov [348], R0
  mov R0, 0
  mov [349], R0
  mov R0, 0
  mov [350], R0
  mov R0, 0
  mov [351], R0
  mov R0, 0
  mov [352], R0
  mov R0, 0
  mov [353], R0
  mov R0, 1
  mov [354], R0
  mov R0, 1
  mov [355], R0
  mov R0, 0
  mov [356], R0
  mov R0, 0
  mov [357], R0
  mov R0, 0
  mov [358], R0
  mov R0, 0
  mov [359], R0
  mov R0, 0
  mov [360], R0
  mov R0, 0
  mov [361], R0
  mov R0, 0
  mov [362], R0
  mov R0, 3
  mov [363], R0
  mov R0, 0
  mov [364], R0
  mov R0, 0
  mov [365], R0
  mov R0, 0
  mov [366], R0
  mov R0, 0
  mov [367], R0
  mov R0, 0
  mov [368], R0
  mov R0, 0
  mov [369], R0
  mov R0, 0
  mov [370], R0
  mov R0, 0
  mov [371], R0
  mov R0, 0
  mov [372], R0
  mov R0, 0
  mov [373], R0
  mov R0, 0
  mov [374], R0
  mov R0, 0
  mov [375], R0
  mov R0, 0
  mov [376], R0
  mov R0, 0
  mov [377], R0
  mov R0, 0
  mov [378], R0
  mov R0, 1
  mov [379], R0
  mov R0, 0
  mov [380], R0
  mov R0, 0
  mov [381], R0
  mov R0, 0
  mov [382], R0
  mov R0, 0
  mov [383], R0
  mov R0, 0
  mov [384], R0
  mov R0, 0
  mov [385], R0
  mov R0, 1
  mov [386], R0
  mov R0, 1
  mov [387], R0
  mov R0, 0
  mov [388], R0
  mov R0, 0
  mov [389], R0
  mov R0, 0
  mov [390], R0
  mov R0, 0
  mov [391], R0
  mov R0, 0
  mov [392], R0
  mov R0, 0
  mov [393], R0
  mov R0, 0
  mov [394], R0
  mov R0, 6
  mov [395], R0
  mov R0, 0
  mov [396], R0
  mov R0, 0
  mov [397], R0
  mov R0, 0
  mov [398], R0
  mov R0, 2
  mov [399], R0
  mov R0, 0
  mov [400], R0
  mov R0, 0
  mov [401], R0
  mov R0, 0
  mov [402], R0
  mov R0, 0
  mov [403], R0
  mov R0, 0
  mov [404], R0
  mov R0, 0
  mov [405], R0
  mov R0, 0
  mov [406], R0
  mov R0, 2
  mov [407], R0
  mov R0, 0
  mov [408], R0
  mov R0, 0
  mov [409], R0
  mov R0, 0
  mov [410], R0
  mov R0, 6
  mov [411], R0
  mov R0, 0
  mov [412], R0
  mov R0, 0
  mov [413], R0
  mov R0, 0
  mov [414], R0
  mov R0, 0
  mov [415], R0
  mov R0, 0
  mov [416], R0
  mov R0, 0
  mov [417], R0
  mov R0, 1
  mov [418], R0
  mov R0, 1
  mov [419], R0
  mov R0, 0
  mov [420], R0
  mov R0, 0
  mov [421], R0
  mov R0, 0
  mov [422], R0
  mov R0, 0
  mov [423], R0
  mov R0, 0
  mov [424], R0
  mov R0, 0
  mov [425], R0
  mov R0, 0
  mov [426], R0
  mov R0, 3
  mov [427], R0
  mov R0, 0
  mov [428], R0
  mov R0, 0
  mov [429], R0
  mov R0, 0
  mov [430], R0
  mov R0, 0
  mov [431], R0
  mov R0, 0
  mov [432], R0
  mov R0, 0
  mov [433], R0
  mov R0, 0
  mov [434], R0
  mov R0, 0
  mov [435], R0
  mov R0, 0
  mov [436], R0
  mov R0, 0
  mov [437], R0
  mov R0, 0
  mov [438], R0
  mov R0, 0
  mov [439], R0
  mov R0, 0
  mov [440], R0
  mov R0, 0
  mov [441], R0
  mov R0, 0
  mov [442], R0
  mov R0, 1
  mov [443], R0
  mov R0, 0
  mov [444], R0
  mov R0, 0
  mov [445], R0
  mov R0, 0
  mov [446], R0
  mov R0, 0
  mov [447], R0
  mov R0, 0
  mov [448], R0
  mov R0, 0
  mov [449], R0
  mov R0, 1
  mov [450], R0
  mov R0, 1
  mov [451], R0
  mov R0, 0
  mov [452], R0
  mov R0, 0
  mov [453], R0
  mov R0, 0
  mov [454], R0
  mov R0, 0
  mov [455], R0
  mov R0, 0
  mov [456], R0
  mov R0, 0
  mov [457], R0
  mov R0, 0
  mov [458], R0
  mov R0, 3
  mov [459], R0
  mov R0, 0
  mov [460], R0
  mov R0, 0
  mov [461], R0
  mov R0, 0
  mov [462], R0
  mov R0, 0
  mov [463], R0
  mov R0, 0
  mov [464], R0
  mov R0, 0
  mov [465], R0
  mov R0, 0
  mov [466], R0
  mov R0, 0
  mov [467], R0
  mov R0, 0
  mov [468], R0
  mov R0, 0
  mov [469], R0
  mov R0, 0
  mov [470], R0
  mov R0, 0
  mov [471], R0
  mov R0, 0
  mov [472], R0
  mov R0, 0
  mov [473], R0
  mov R0, 0
  mov [474], R0
  mov R0, 1
  mov [475], R0
  mov R0, 0
  mov [476], R0
  mov R0, 0
  mov [477], R0
  mov R0, 0
  mov [478], R0
  mov R0, 0
  mov [479], R0
  mov R0, 0
  mov [480], R0
  mov R0, 0
  mov [481], R0
  mov R0, 1
  mov [482], R0
  mov R0, 1
  mov [483], R0
  mov R0, 0
  mov [484], R0
  mov R0, 0
  mov [485], R0
  mov R0, 0
  mov [486], R0
  mov R0, 0
  mov [487], R0
  mov R0, 0
  mov [488], R0
  mov R0, 0
  mov [489], R0
  mov R0, 0
  mov [490], R0
  mov R0, 3
  mov [491], R0
  mov R0, 0
  mov [492], R0
  mov R0, 0
  mov [493], R0
  mov R0, 0
  mov [494], R0
  mov R0, 0
  mov [495], R0
  mov R0, 0
  mov [496], R0
  mov R0, 0
  mov [497], R0
  mov R0, 0
  mov [498], R0
  mov R0, 0
  mov [499], R0
  mov R0, 0
  mov [500], R0
  mov R0, 0
  mov [501], R0
  mov R0, 0
  mov [502], R0
  mov R0, 0
  mov [503], R0
  mov R0, 0
  mov [504], R0
  mov R0, 0
  mov [505], R0
  mov R0, 0
  mov [506], R0
  mov R0, 1
  mov [507], R0
  mov R0, 0
  mov [508], R0
  mov R0, 0
  mov [509], R0
  mov R0, 0
  mov [510], R0
  mov R0, 0
  mov [511], R0
  mov R0, 0
  mov [512], R0
  mov R0, 0
  mov [513], R0
  mov R0, 1
  mov [514], R0
  mov R0, 2
  mov [515], R0
  mov R0, 2
  mov [516], R0
  mov R0, 2
  mov [517], R0
  mov R0, 1
  mov [518], R0
  mov R0, 6
  mov [519], R0
  mov R0, 1
  mov [520], R0
  mov R0, 2
  mov [521], R0
  mov R0, 2
  mov [522], R0
  mov R0, 4
  mov [523], R0
  mov R0, 4
  mov [524], R0
  mov R0, 4
  mov [525], R0
  mov R0, 4
  mov [526], R0
  mov R0, 4
  mov [527], R0
  mov R0, 4
  mov [528], R0
  mov R0, 4
  mov [529], R0
  mov R0, 4
  mov [530], R0
  mov R0, 3
  mov [531], R0
  mov R0, 1
  mov [532], R0
  mov R0, 1
  mov [533], R0
  mov R0, 1
  mov [534], R0
  mov R0, 1
  mov [535], R0
  mov R0, 1
  mov [536], R0
  mov R0, 1
  mov [537], R0
  mov R0, 1
  mov [538], R0
  mov R0, 1
  mov [539], R0
  mov R0, 1
  mov [540], R0
  mov R0, 1
  mov [541], R0
  mov R0, 1
  mov [542], R0
  mov R0, 1
  mov [543], R0
  mov R0, 1
  mov [544], R0
  mov R0, 1
  mov [545], R0
  mov R0, 1
  mov [546], R0
  mov R0, 2
  mov [547], R0
  mov R0, 0
  mov [548], R0
  mov R0, 0
  mov [549], R0
  mov R0, 0
  mov [550], R0
  mov R0, 0
  mov [551], R0
  mov R0, 0
  mov [552], R0
  mov R0, 0
  mov [553], R0
  mov R0, 0
  mov [554], R0
  mov R0, 4
  mov [555], R0
  mov R0, 0
  mov [556], R0
  mov R0, 0
  mov [557], R0
  mov R0, 0
  mov [558], R0
  mov R0, 0
  mov [559], R0
  mov R0, 0
  mov [560], R0
  mov R0, 0
  mov [561], R0
  mov R0, 0
  mov [562], R0
  mov R0, 1
  mov [563], R0
  mov R0, 0
  mov [564], R0
  mov R0, 0
  mov [565], R0
  mov R0, 0
  mov [566], R0
  mov R0, 0
  mov [567], R0
  mov R0, 0
  mov [568], R0
  mov R0, 0
  mov [569], R0
  mov R0, 0
  mov [570], R0
  mov R0, 0
  mov [571], R0
  mov R0, 0
  mov [572], R0
  mov R0, 0
  mov [573], R0
  mov R0, 0
  mov [574], R0
  mov R0, 0
  mov [575], R0
  mov R0, 0
  mov [576], R0
  mov R0, 0
  mov [577], R0
  mov R0, 1
  mov [578], R0
  mov R0, 2
  mov [579], R0
  mov R0, 0
  mov [580], R0
  mov R0, 0
  mov [581], R0
  mov R0, 0
  mov [582], R0
  mov R0, 0
  mov [583], R0
  mov R0, 0
  mov [584], R0
  mov R0, 0
  mov [585], R0
  mov R0, 0
  mov [586], R0
  mov R0, 4
  mov [587], R0
  mov R0, 0
  mov [588], R0
  mov R0, 0
  mov [589], R0
  mov R0, 0
  mov [590], R0
  mov R0, 0
  mov [591], R0
  mov R0, 0
  mov [592], R0
  mov R0, 0
  mov [593], R0
  mov R0, 0
  mov [594], R0
  mov R0, 1
  mov [595], R0
  mov R0, 0
  mov [596], R0
  mov R0, 0
  mov [597], R0
  mov R0, 0
  mov [598], R0
  mov R0, 0
  mov [599], R0
  mov R0, 0
  mov [600], R0
  mov R0, 0
  mov [601], R0
  mov R0, 0
  mov [602], R0
  mov R0, 0
  mov [603], R0
  mov R0, 0
  mov [604], R0
  mov R0, 0
  mov [605], R0
  mov R0, 0
  mov [606], R0
  mov R0, 0
  mov [607], R0
  mov R0, 0
  mov [608], R0
  mov R0, 0
  mov [609], R0
  mov R0, 1
  mov [610], R0
  mov R0, 2
  mov [611], R0
  mov R0, 0
  mov [612], R0
  mov R0, 0
  mov [613], R0
  mov R0, 0
  mov [614], R0
  mov R0, 0
  mov [615], R0
  mov R0, 0
  mov [616], R0
  mov R0, 0
  mov [617], R0
  mov R0, 0
  mov [618], R0
  mov R0, 0
  mov [619], R0
  mov R0, 0
  mov [620], R0
  mov R0, 0
  mov [621], R0
  mov R0, 0
  mov [622], R0
  mov R0, 0
  mov [623], R0
  mov R0, 0
  mov [624], R0
  mov R0, 0
  mov [625], R0
  mov R0, 0
  mov [626], R0
  mov R0, 1
  mov [627], R0
  mov R0, 0
  mov [628], R0
  mov R0, 0
  mov [629], R0
  mov R0, 0
  mov [630], R0
  mov R0, 0
  mov [631], R0
  mov R0, 0
  mov [632], R0
  mov R0, 0
  mov [633], R0
  mov R0, 0
  mov [634], R0
  mov R0, 0
  mov [635], R0
  mov R0, 0
  mov [636], R0
  mov R0, 0
  mov [637], R0
  mov R0, 0
  mov [638], R0
  mov R0, 0
  mov [639], R0
  mov R0, 0
  mov [640], R0
  mov R0, 0
  mov [641], R0
  mov R0, 1
  mov [642], R0
  mov R0, 2
  mov [643], R0
  mov R0, 0
  mov [644], R0
  mov R0, 0
  mov [645], R0
  mov R0, 0
  mov [646], R0
  mov R0, 0
  mov [647], R0
  mov R0, 0
  mov [648], R0
  mov R0, 0
  mov [649], R0
  mov R0, 0
  mov [650], R0
  mov R0, 0
  mov [651], R0
  mov R0, 0
  mov [652], R0
  mov R0, 0
  mov [653], R0
  mov R0, 0
  mov [654], R0
  mov R0, 0
  mov [655], R0
  mov R0, 0
  mov [656], R0
  mov R0, 0
  mov [657], R0
  mov R0, 0
  mov [658], R0
  mov R0, 6
  mov [659], R0
  mov R0, 0
  mov [660], R0
  mov R0, 0
  mov [661], R0
  mov R0, 0
  mov [662], R0
  mov R0, 0
  mov [663], R0
  mov R0, 0
  mov [664], R0
  mov R0, 0
  mov [665], R0
  mov R0, 0
  mov [666], R0
  mov R0, 0
  mov [667], R0
  mov R0, 0
  mov [668], R0
  mov R0, 0
  mov [669], R0
  mov R0, 0
  mov [670], R0
  mov R0, 0
  mov [671], R0
  mov R0, 0
  mov [672], R0
  mov R0, 0
  mov [673], R0
  mov R0, 1
  mov [674], R0
  mov R0, 2
  mov [675], R0
  mov R0, 0
  mov [676], R0
  mov R0, 0
  mov [677], R0
  mov R0, 0
  mov [678], R0
  mov R0, 0
  mov [679], R0
  mov R0, 0
  mov [680], R0
  mov R0, 0
  mov [681], R0
  mov R0, 0
  mov [682], R0
  mov R0, 0
  mov [683], R0
  mov R0, 0
  mov [684], R0
  mov R0, 0
  mov [685], R0
  mov R0, 0
  mov [686], R0
  mov R0, 0
  mov [687], R0
  mov R0, 0
  mov [688], R0
  mov R0, 0
  mov [689], R0
  mov R0, 0
  mov [690], R0
  mov R0, 1
  mov [691], R0
  mov R0, 0
  mov [692], R0
  mov R0, 0
  mov [693], R0
  mov R0, 0
  mov [694], R0
  mov R0, 0
  mov [695], R0
  mov R0, 0
  mov [696], R0
  mov R0, 0
  mov [697], R0
  mov R0, 0
  mov [698], R0
  mov R0, 0
  mov [699], R0
  mov R0, 0
  mov [700], R0
  mov R0, 0
  mov [701], R0
  mov R0, 0
  mov [702], R0
  mov R0, 0
  mov [703], R0
  mov R0, 0
  mov [704], R0
  mov R0, 0
  mov [705], R0
  mov R0, 1
  mov [706], R0
  mov R0, 2
  mov [707], R0
  mov R0, 0
  mov [708], R0
  mov R0, 0
  mov [709], R0
  mov R0, 0
  mov [710], R0
  mov R0, 0
  mov [711], R0
  mov R0, 0
  mov [712], R0
  mov R0, 0
  mov [713], R0
  mov R0, 0
  mov [714], R0
  mov R0, 4
  mov [715], R0
  mov R0, 0
  mov [716], R0
  mov R0, 0
  mov [717], R0
  mov R0, 0
  mov [718], R0
  mov R0, 0
  mov [719], R0
  mov R0, 0
  mov [720], R0
  mov R0, 0
  mov [721], R0
  mov R0, 0
  mov [722], R0
  mov R0, 1
  mov [723], R0
  mov R0, 0
  mov [724], R0
  mov R0, 0
  mov [725], R0
  mov R0, 0
  mov [726], R0
  mov R0, 0
  mov [727], R0
  mov R0, 0
  mov [728], R0
  mov R0, 0
  mov [729], R0
  mov R0, 0
  mov [730], R0
  mov R0, 0
  mov [731], R0
  mov R0, 0
  mov [732], R0
  mov R0, 0
  mov [733], R0
  mov R0, 0
  mov [734], R0
  mov R0, 0
  mov [735], R0
  mov R0, 0
  mov [736], R0
  mov R0, 0
  mov [737], R0
  mov R0, 1
  mov [738], R0
  mov R0, 2
  mov [739], R0
  mov R0, 0
  mov [740], R0
  mov R0, 0
  mov [741], R0
  mov R0, 0
  mov [742], R0
  mov R0, 0
  mov [743], R0
  mov R0, 0
  mov [744], R0
  mov R0, 0
  mov [745], R0
  mov R0, 0
  mov [746], R0
  mov R0, 4
  mov [747], R0
  mov R0, 0
  mov [748], R0
  mov R0, 0
  mov [749], R0
  mov R0, 0
  mov [750], R0
  mov R0, 0
  mov [751], R0
  mov R0, 0
  mov [752], R0
  mov R0, 0
  mov [753], R0
  mov R0, 0
  mov [754], R0
  mov R0, 1
  mov [755], R0
  mov R0, 0
  mov [756], R0
  mov R0, 0
  mov [757], R0
  mov R0, 0
  mov [758], R0
  mov R0, 0
  mov [759], R0
  mov R0, 0
  mov [760], R0
  mov R0, 0
  mov [761], R0
  mov R0, 0
  mov [762], R0
  mov R0, 0
  mov [763], R0
  mov R0, 0
  mov [764], R0
  mov R0, 0
  mov [765], R0
  mov R0, 0
  mov [766], R0
  mov R0, 0
  mov [767], R0
  mov R0, 0
  mov [768], R0
  mov R0, 0
  mov [769], R0
  mov R0, 1
  mov [770], R0
  mov R0, 1
  mov [771], R0
  mov R0, 1
  mov [772], R0
  mov R0, 1
  mov [773], R0
  mov R0, 1
  mov [774], R0
  mov R0, 11
  mov [775], R0
  mov R0, 1
  mov [776], R0
  mov R0, 1
  mov [777], R0
  mov R0, 1
  mov [778], R0
  mov R0, 4
  mov [779], R0
  mov R0, 4
  mov [780], R0
  mov R0, 4
  mov [781], R0
  mov R0, 4
  mov [782], R0
  mov R0, 4
  mov [783], R0
  mov R0, 4
  mov [784], R0
  mov R0, 4
  mov [785], R0
  mov R0, 4
  mov [786], R0
  mov R0, 4
  mov [787], R0
  mov R0, 4
  mov [788], R0
  mov R0, 4
  mov [789], R0
  mov R0, 1
  mov [790], R0
  mov R0, 6
  mov [791], R0
  mov R0, 1
  mov [792], R0
  mov R0, 4
  mov [793], R0
  mov R0, 4
  mov [794], R0
  mov R0, 1
  mov [795], R0
  mov R0, 3
  mov [796], R0
  mov R0, 1
  mov [797], R0
  mov R0, 7
  mov [798], R0
  mov R0, 1
  mov [799], R0
  mov R0, 3
  mov [800], R0
  mov R0, 3
  mov [801], R0
  mov R0, 1
  mov [802], R0
  mov R0, 1
  mov [803], R0
  mov R0, 0
  mov [804], R0
  mov R0, 0
  mov [805], R0
  mov R0, 0
  mov [806], R0
  mov R0, 0
  mov [807], R0
  mov R0, 0
  mov [808], R0
  mov R0, 0
  mov [809], R0
  mov R0, 0
  mov [810], R0
  mov R0, 4
  mov [811], R0
  mov R0, 0
  mov [812], R0
  mov R0, 0
  mov [813], R0
  mov R0, 0
  mov [814], R0
  mov R0, 0
  mov [815], R0
  mov R0, 0
  mov [816], R0
  mov R0, 0
  mov [817], R0
  mov R0, 0
  mov [818], R0
  mov R0, 4
  mov [819], R0
  mov R0, 0
  mov [820], R0
  mov R0, 0
  mov [821], R0
  mov R0, 0
  mov [822], R0
  mov R0, 0
  mov [823], R0
  mov R0, 0
  mov [824], R0
  mov R0, 0
  mov [825], R0
  mov R0, 0
  mov [826], R0
  mov R0, 3
  mov [827], R0
  mov R0, 0
  mov [828], R0
  mov R0, 0
  mov [829], R0
  mov R0, 0
  mov [830], R0
  mov R0, 0
  mov [831], R0
  mov R0, 0
  mov [832], R0
  mov R0, 0
  mov [833], R0
  mov R0, 3
  mov [834], R0
  mov R0, 1
  mov [835], R0
  mov R0, 0
  mov [836], R0
  mov R0, 0
  mov [837], R0
  mov R0, 0
  mov [838], R0
  mov R0, 0
  mov [839], R0
  mov R0, 0
  mov [840], R0
  mov R0, 0
  mov [841], R0
  mov R0, 0
  mov [842], R0
  mov R0, 4
  mov [843], R0
  mov R0, 0
  mov [844], R0
  mov R0, 0
  mov [845], R0
  mov R0, 0
  mov [846], R0
  mov R0, 0
  mov [847], R0
  mov R0, 0
  mov [848], R0
  mov R0, 0
  mov [849], R0
  mov R0, 0
  mov [850], R0
  mov R0, 4
  mov [851], R0
  mov R0, 0
  mov [852], R0
  mov R0, 0
  mov [853], R0
  mov R0, 0
  mov [854], R0
  mov R0, 0
  mov [855], R0
  mov R0, 0
  mov [856], R0
  mov R0, 0
  mov [857], R0
  mov R0, 0
  mov [858], R0
  mov R0, 3
  mov [859], R0
  mov R0, 0
  mov [860], R0
  mov R0, 0
  mov [861], R0
  mov R0, 0
  mov [862], R0
  mov R0, 0
  mov [863], R0
  mov R0, 0
  mov [864], R0
  mov R0, 0
  mov [865], R0
  mov R0, 3
  mov [866], R0
  mov R0, 1
  mov [867], R0
  mov R0, 0
  mov [868], R0
  mov R0, 0
  mov [869], R0
  mov R0, 0
  mov [870], R0
  mov R0, 0
  mov [871], R0
  mov R0, 0
  mov [872], R0
  mov R0, 0
  mov [873], R0
  mov R0, 0
  mov [874], R0
  mov R0, 4
  mov [875], R0
  mov R0, 0
  mov [876], R0
  mov R0, 0
  mov [877], R0
  mov R0, 0
  mov [878], R0
  mov R0, 0
  mov [879], R0
  mov R0, 0
  mov [880], R0
  mov R0, 0
  mov [881], R0
  mov R0, 0
  mov [882], R0
  mov R0, 6
  mov [883], R0
  mov R0, 0
  mov [884], R0
  mov R0, 0
  mov [885], R0
  mov R0, 0
  mov [886], R0
  mov R0, 0
  mov [887], R0
  mov R0, 0
  mov [888], R0
  mov R0, 0
  mov [889], R0
  mov R0, 0
  mov [890], R0
  mov R0, 3
  mov [891], R0
  mov R0, 0
  mov [892], R0
  mov R0, 0
  mov [893], R0
  mov R0, 0
  mov [894], R0
  mov R0, 0
  mov [895], R0
  mov R0, 0
  mov [896], R0
  mov R0, 0
  mov [897], R0
  mov R0, 5
  mov [898], R0
  mov R0, 1
  mov [899], R0
  mov R0, 0
  mov [900], R0
  mov R0, 0
  mov [901], R0
  mov R0, 0
  mov [902], R0
  mov R0, 0
  mov [903], R0
  mov R0, 0
  mov [904], R0
  mov R0, 0
  mov [905], R0
  mov R0, 0
  mov [906], R0
  mov R0, 4
  mov [907], R0
  mov R0, 0
  mov [908], R0
  mov R0, 0
  mov [909], R0
  mov R0, 0
  mov [910], R0
  mov R0, 0
  mov [911], R0
  mov R0, 0
  mov [912], R0
  mov R0, 0
  mov [913], R0
  mov R0, 0
  mov [914], R0
  mov R0, 4
  mov [915], R0
  mov R0, 0
  mov [916], R0
  mov R0, 0
  mov [917], R0
  mov R0, 0
  mov [918], R0
  mov R0, 0
  mov [919], R0
  mov R0, 0
  mov [920], R0
  mov R0, 0
  mov [921], R0
  mov R0, 0
  mov [922], R0
  mov R0, 3
  mov [923], R0
  mov R0, 0
  mov [924], R0
  mov R0, 0
  mov [925], R0
  mov R0, 0
  mov [926], R0
  mov R0, 0
  mov [927], R0
  mov R0, 0
  mov [928], R0
  mov R0, 0
  mov [929], R0
  mov R0, 3
  mov [930], R0
  mov R0, 1
  mov [931], R0
  mov R0, 0
  mov [932], R0
  mov R0, 0
  mov [933], R0
  mov R0, 0
  mov [934], R0
  mov R0, 0
  mov [935], R0
  mov R0, 0
  mov [936], R0
  mov R0, 0
  mov [937], R0
  mov R0, 0
  mov [938], R0
  mov R0, 4
  mov [939], R0
  mov R0, 0
  mov [940], R0
  mov R0, 0
  mov [941], R0
  mov R0, 0
  mov [942], R0
  mov R0, 0
  mov [943], R0
  mov R0, 0
  mov [944], R0
  mov R0, 0
  mov [945], R0
  mov R0, 0
  mov [946], R0
  mov R0, 4
  mov [947], R0
  mov R0, 0
  mov [948], R0
  mov R0, 0
  mov [949], R0
  mov R0, 0
  mov [950], R0
  mov R0, 0
  mov [951], R0
  mov R0, 0
  mov [952], R0
  mov R0, 0
  mov [953], R0
  mov R0, 0
  mov [954], R0
  mov R0, 3
  mov [955], R0
  mov R0, 0
  mov [956], R0
  mov R0, 0
  mov [957], R0
  mov R0, 0
  mov [958], R0
  mov R0, 0
  mov [959], R0
  mov R0, 0
  mov [960], R0
  mov R0, 0
  mov [961], R0
  mov R0, 3
  mov [962], R0
  mov R0, 1
  mov [963], R0
  mov R0, 0
  mov [964], R0
  mov R0, 0
  mov [965], R0
  mov R0, 0
  mov [966], R0
  mov R0, 0
  mov [967], R0
  mov R0, 0
  mov [968], R0
  mov R0, 0
  mov [969], R0
  mov R0, 0
  mov [970], R0
  mov R0, 4
  mov [971], R0
  mov R0, 0
  mov [972], R0
  mov R0, 0
  mov [973], R0
  mov R0, 0
  mov [974], R0
  mov R0, 0
  mov [975], R0
  mov R0, 0
  mov [976], R0
  mov R0, 0
  mov [977], R0
  mov R0, 0
  mov [978], R0
  mov R0, 4
  mov [979], R0
  mov R0, 0
  mov [980], R0
  mov R0, 0
  mov [981], R0
  mov R0, 0
  mov [982], R0
  mov R0, 0
  mov [983], R0
  mov R0, 0
  mov [984], R0
  mov R0, 0
  mov [985], R0
  mov R0, 0
  mov [986], R0
  mov R0, 3
  mov [987], R0
  mov R0, 0
  mov [988], R0
  mov R0, 0
  mov [989], R0
  mov R0, 0
  mov [990], R0
  mov R0, 0
  mov [991], R0
  mov R0, 0
  mov [992], R0
  mov R0, 0
  mov [993], R0
  mov R0, 3
  mov [994], R0
  mov R0, 1
  mov [995], R0
  mov R0, 1
  mov [996], R0
  mov R0, 1
  mov [997], R0
  mov R0, 1
  mov [998], R0
  mov R0, 1
  mov [999], R0
  mov R0, 1
  mov [1000], R0
  mov R0, 1
  mov [1001], R0
  mov R0, 1
  mov [1002], R0
  mov R0, 1
  mov [1003], R0
  mov R0, 4
  mov [1004], R0
  mov R0, 4
  mov [1005], R0
  mov R0, 4
  mov [1006], R0
  mov R0, 4
  mov [1007], R0
  mov R0, 4
  mov [1008], R0
  mov R0, 4
  mov [1009], R0
  mov R0, 4
  mov [1010], R0
  mov R0, 4
  mov [1011], R0
  mov R0, 4
  mov [1012], R0
  mov R0, 4
  mov [1013], R0
  mov R0, 4
  mov [1014], R0
  mov R0, 4
  mov [1015], R0
  mov R0, 4
  mov [1016], R0
  mov R0, 4
  mov [1017], R0
  mov R0, 4
  mov [1018], R0
  mov R0, 4
  mov [1019], R0
  mov R0, 3
  mov [1020], R0
  mov R0, 3
  mov [1021], R0
  mov R0, 3
  mov [1022], R0
  mov R0, 3
  mov [1023], R0
  mov R0, 3
  mov [1024], R0
  mov R0, 3
  mov [1025], R0
  mov R0, 3
  mov [1026], R0
  mov R0, 2
  mov [1027], R0
  mov R0, 2
  mov [1028], R0
  mov R0, 2
  mov [1029], R0
  mov R0, 2
  mov [1030], R0
  mov R0, 2
  mov [1031], R0
  mov R0, 2
  mov [1032], R0
  mov R0, 2
  mov [1033], R0
  mov R0, 2
  mov [1034], R0
  mov R0, 2
  mov [1035], R0
  mov R0, 2
  mov [1036], R0
  mov R0, 2
  mov [1037], R0
  mov R0, 2
  mov [1038], R0
  mov R0, 2
  mov [1039], R0
  mov R0, 2
  mov [1040], R0
  mov R0, 2
  mov [1041], R0
  mov R0, 2
  mov [1042], R0
  mov R0, 2
  mov [1043], R0
  mov R0, 2
  mov [1044], R0
  mov R0, 2
  mov [1045], R0
  mov R0, 2
  mov [1046], R0
  mov R0, 2
  mov [1047], R0
  mov R0, 2
  mov [1048], R0
  mov R0, 2
  mov [1049], R0
  mov R0, 2
  mov [1050], R0
  mov R0, 2
  mov [1051], R0
  mov R0, 2
  mov [1052], R0
  mov R0, 2
  mov [1053], R0
  mov R0, 2
  mov [1054], R0
  mov R0, 2
  mov [1055], R0
  mov R0, 2
  mov [1056], R0
  mov R0, 2
  mov [1057], R0
  mov R0, 2
  mov [1058], R0
  mov R0, 2
  mov [1059], R0
  mov R0, 0
  mov [1060], R0
  mov R0, 0
  mov [1061], R0
  mov R0, 0
  mov [1062], R0
  mov R0, 0
  mov [1063], R0
  mov R0, 0
  mov [1064], R0
  mov R0, 0
  mov [1065], R0
  mov R0, 0
  mov [1066], R0
  mov R0, 3
  mov [1067], R0
  mov R0, 3
  mov [1068], R0
  mov R0, 3
  mov [1069], R0
  mov R0, 3
  mov [1070], R0
  mov R0, 3
  mov [1071], R0
  mov R0, 3
  mov [1072], R0
  mov R0, 3
  mov [1073], R0
  mov R0, 3
  mov [1074], R0
  mov R0, 3
  mov [1075], R0
  mov R0, 3
  mov [1076], R0
  mov R0, 3
  mov [1077], R0
  mov R0, 3
  mov [1078], R0
  mov R0, 3
  mov [1079], R0
  mov R0, 3
  mov [1080], R0
  mov R0, 3
  mov [1081], R0
  mov R0, 3
  mov [1082], R0
  mov R0, 3
  mov [1083], R0
  mov R0, 3
  mov [1084], R0
  mov R0, 3
  mov [1085], R0
  mov R0, 3
  mov [1086], R0
  mov R0, 3
  mov [1087], R0
  mov R0, 3
  mov [1088], R0
  mov R0, 3
  mov [1089], R0
  mov R0, 2
  mov [1090], R0
  mov R0, 2
  mov [1091], R0
  mov R0, 0
  mov [1092], R0
  mov R0, 0
  mov [1093], R0
  mov R0, 0
  mov [1094], R0
  mov R0, 0
  mov [1095], R0
  mov R0, 0
  mov [1096], R0
  mov R0, 0
  mov [1097], R0
  mov R0, 0
  mov [1098], R0
  mov R0, 3
  mov [1099], R0
  mov R0, 0
  mov [1100], R0
  mov R0, 0
  mov [1101], R0
  mov R0, 0
  mov [1102], R0
  mov R0, 0
  mov [1103], R0
  mov R0, 0
  mov [1104], R0
  mov R0, 0
  mov [1105], R0
  mov R0, 0
  mov [1106], R0
  mov R0, 0
  mov [1107], R0
  mov R0, 0
  mov [1108], R0
  mov R0, 0
  mov [1109], R0
  mov R0, 0
  mov [1110], R0
  mov R0, 0
  mov [1111], R0
  mov R0, 0
  mov [1112], R0
  mov R0, 0
  mov [1113], R0
  mov R0, 0
  mov [1114], R0
  mov R0, 0
  mov [1115], R0
  mov R0, 0
  mov [1116], R0
  mov R0, 0
  mov [1117], R0
  mov R0, 0
  mov [1118], R0
  mov R0, 0
  mov [1119], R0
  mov R0, 0
  mov [1120], R0
  mov R0, 3
  mov [1121], R0
  mov R0, 2
  mov [1122], R0
  mov R0, 2
  mov [1123], R0
  mov R0, 0
  mov [1124], R0
  mov R0, 0
  mov [1125], R0
  mov R0, 0
  mov [1126], R0
  mov R0, 0
  mov [1127], R0
  mov R0, 0
  mov [1128], R0
  mov R0, 0
  mov [1129], R0
  mov R0, 0
  mov [1130], R0
  mov R0, 6
  mov [1131], R0
  mov R0, 0
  mov [1132], R0
  mov R0, 0
  mov [1133], R0
  mov R0, 0
  mov [1134], R0
  mov R0, 3
  mov [1135], R0
  mov R0, 0
  mov [1136], R0
  mov R0, 0
  mov [1137], R0
  mov R0, 0
  mov [1138], R0
  mov R0, 3
  mov [1139], R0
  mov R0, 0
  mov [1140], R0
  mov R0, 0
  mov [1141], R0
  mov R0, 0
  mov [1142], R0
  mov R0, 0
  mov [1143], R0
  mov R0, 0
  mov [1144], R0
  mov R0, 0
  mov [1145], R0
  mov R0, 3
  mov [1146], R0
  mov R0, 0
  mov [1147], R0
  mov R0, 0
  mov [1148], R0
  mov R0, 3
  mov [1149], R0
  mov R0, 0
  mov [1150], R0
  mov R0, 0
  mov [1151], R0
  mov R0, 0
  mov [1152], R0
  mov R0, 3
  mov [1153], R0
  mov R0, 2
  mov [1154], R0
  mov R0, 2
  mov [1155], R0
  mov R0, 0
  mov [1156], R0
  mov R0, 0
  mov [1157], R0
  mov R0, 0
  mov [1158], R0
  mov R0, 0
  mov [1159], R0
  mov R0, 0
  mov [1160], R0
  mov R0, 0
  mov [1161], R0
  mov R0, 0
  mov [1162], R0
  mov R0, 3
  mov [1163], R0
  mov R0, 0
  mov [1164], R0
  mov R0, 0
  mov [1165], R0
  mov R0, 0
  mov [1166], R0
  mov R0, 0
  mov [1167], R0
  mov R0, 0
  mov [1168], R0
  mov R0, 0
  mov [1169], R0
  mov R0, 0
  mov [1170], R0
  mov R0, 0
  mov [1171], R0
  mov R0, 0
  mov [1172], R0
  mov R0, 0
  mov [1173], R0
  mov R0, 0
  mov [1174], R0
  mov R0, 0
  mov [1175], R0
  mov R0, 0
  mov [1176], R0
  mov R0, 0
  mov [1177], R0
  mov R0, 0
  mov [1178], R0
  mov R0, 0
  mov [1179], R0
  mov R0, 0
  mov [1180], R0
  mov R0, 0
  mov [1181], R0
  mov R0, 0
  mov [1182], R0
  mov R0, 0
  mov [1183], R0
  mov R0, 0
  mov [1184], R0
  mov R0, 3
  mov [1185], R0
  mov R0, 2
  mov [1186], R0
  mov R0, 2
  mov [1187], R0
  mov R0, 0
  mov [1188], R0
  mov R0, 0
  mov [1189], R0
  mov R0, 0
  mov [1190], R0
  mov R0, 0
  mov [1191], R0
  mov R0, 0
  mov [1192], R0
  mov R0, 0
  mov [1193], R0
  mov R0, 0
  mov [1194], R0
  mov R0, 3
  mov [1195], R0
  mov R0, 0
  mov [1196], R0
  mov R0, 0
  mov [1197], R0
  mov R0, 0
  mov [1198], R0
  mov R0, 3
  mov [1199], R0
  mov R0, 0
  mov [1200], R0
  mov R0, 0
  mov [1201], R0
  mov R0, 0
  mov [1202], R0
  mov R0, 3
  mov [1203], R0
  mov R0, 0
  mov [1204], R0
  mov R0, 0
  mov [1205], R0
  mov R0, 0
  mov [1206], R0
  mov R0, 0
  mov [1207], R0
  mov R0, 0
  mov [1208], R0
  mov R0, 0
  mov [1209], R0
  mov R0, 3
  mov [1210], R0
  mov R0, 0
  mov [1211], R0
  mov R0, 0
  mov [1212], R0
  mov R0, 3
  mov [1213], R0
  mov R0, 0
  mov [1214], R0
  mov R0, 0
  mov [1215], R0
  mov R0, 0
  mov [1216], R0
  mov R0, 3
  mov [1217], R0
  mov R0, 2
  mov [1218], R0
  mov R0, 2
  mov [1219], R0
  mov R0, 0
  mov [1220], R0
  mov R0, 0
  mov [1221], R0
  mov R0, 0
  mov [1222], R0
  mov R0, 0
  mov [1223], R0
  mov R0, 0
  mov [1224], R0
  mov R0, 0
  mov [1225], R0
  mov R0, 0
  mov [1226], R0
  mov R0, 3
  mov [1227], R0
  mov R0, 0
  mov [1228], R0
  mov R0, 0
  mov [1229], R0
  mov R0, 0
  mov [1230], R0
  mov R0, 0
  mov [1231], R0
  mov R0, 0
  mov [1232], R0
  mov R0, 0
  mov [1233], R0
  mov R0, 0
  mov [1234], R0
  mov R0, 0
  mov [1235], R0
  mov R0, 0
  mov [1236], R0
  mov R0, 0
  mov [1237], R0
  mov R0, 0
  mov [1238], R0
  mov R0, 0
  mov [1239], R0
  mov R0, 0
  mov [1240], R0
  mov R0, 0
  mov [1241], R0
  mov R0, 0
  mov [1242], R0
  mov R0, 0
  mov [1243], R0
  mov R0, 0
  mov [1244], R0
  mov R0, 0
  mov [1245], R0
  mov R0, 0
  mov [1246], R0
  mov R0, 0
  mov [1247], R0
  mov R0, 0
  mov [1248], R0
  mov R0, 3
  mov [1249], R0
  mov R0, 2
  mov [1250], R0
  mov R0, 2
  mov [1251], R0
  mov R0, 3
  mov [1252], R0
  mov R0, 3
  mov [1253], R0
  mov R0, 3
  mov [1254], R0
  mov R0, 3
  mov [1255], R0
  mov R0, 3
  mov [1256], R0
  mov R0, 3
  mov [1257], R0
  mov R0, 3
  mov [1258], R0
  mov R0, 3
  mov [1259], R0
  mov R0, 3
  mov [1260], R0
  mov R0, 3
  mov [1261], R0
  mov R0, 3
  mov [1262], R0
  mov R0, 3
  mov [1263], R0
  mov R0, 3
  mov [1264], R0
  mov R0, 3
  mov [1265], R0
  mov R0, 3
  mov [1266], R0
  mov R0, 3
  mov [1267], R0
  mov R0, 3
  mov [1268], R0
  mov R0, 3
  mov [1269], R0
  mov R0, 3
  mov [1270], R0
  mov R0, 3
  mov [1271], R0
  mov R0, 3
  mov [1272], R0
  mov R0, 3
  mov [1273], R0
  mov R0, 3
  mov [1274], R0
  mov R0, 3
  mov [1275], R0
  mov R0, 3
  mov [1276], R0
  mov R0, 3
  mov [1277], R0
  mov R0, 3
  mov [1278], R0
  mov R0, 3
  mov [1279], R0
  mov R0, 6
  mov [1280], R0
  mov R0, 3
  mov [1281], R0
  mov R0, 2
  mov [1282], R0
  mov R0, 2
  mov [1283], R0
  mov R0, 0
  mov [1284], R0
  mov R0, 0
  mov [1285], R0
  mov R0, 0
  mov [1286], R0
  mov R0, 0
  mov [1287], R0
  mov R0, 0
  mov [1288], R0
  mov R0, 0
  mov [1289], R0
  mov R0, 0
  mov [1290], R0
  mov R0, 0
  mov [1291], R0
  mov R0, 0
  mov [1292], R0
  mov R0, 0
  mov [1293], R0
  mov R0, 0
  mov [1294], R0
  mov R0, 0
  mov [1295], R0
  mov R0, 0
  mov [1296], R0
  mov R0, 0
  mov [1297], R0
  mov R0, 0
  mov [1298], R0
  mov R0, 2
  mov [1299], R0
  mov R0, 0
  mov [1300], R0
  mov R0, 0
  mov [1301], R0
  mov R0, 0
  mov [1302], R0
  mov R0, 0
  mov [1303], R0
  mov R0, 0
  mov [1304], R0
  mov R0, 0
  mov [1305], R0
  mov R0, 0
  mov [1306], R0
  mov R0, 2
  mov [1307], R0
  mov R0, 0
  mov [1308], R0
  mov R0, 0
  mov [1309], R0
  mov R0, 0
  mov [1310], R0
  mov R0, 0
  mov [1311], R0
  mov R0, 0
  mov [1312], R0
  mov R0, 0
  mov [1313], R0
  mov R0, 2
  mov [1314], R0
  mov R0, 2
  mov [1315], R0
  mov R0, 0
  mov [1316], R0
  mov R0, 0
  mov [1317], R0
  mov R0, 0
  mov [1318], R0
  mov R0, 0
  mov [1319], R0
  mov R0, 0
  mov [1320], R0
  mov R0, 0
  mov [1321], R0
  mov R0, 0
  mov [1322], R0
  mov R0, 0
  mov [1323], R0
  mov R0, 0
  mov [1324], R0
  mov R0, 0
  mov [1325], R0
  mov R0, 0
  mov [1326], R0
  mov R0, 0
  mov [1327], R0
  mov R0, 0
  mov [1328], R0
  mov R0, 0
  mov [1329], R0
  mov R0, 0
  mov [1330], R0
  mov R0, 2
  mov [1331], R0
  mov R0, 0
  mov [1332], R0
  mov R0, 0
  mov [1333], R0
  mov R0, 0
  mov [1334], R0
  mov R0, 0
  mov [1335], R0
  mov R0, 0
  mov [1336], R0
  mov R0, 0
  mov [1337], R0
  mov R0, 0
  mov [1338], R0
  mov R0, 2
  mov [1339], R0
  mov R0, 0
  mov [1340], R0
  mov R0, 0
  mov [1341], R0
  mov R0, 0
  mov [1342], R0
  mov R0, 0
  mov [1343], R0
  mov R0, 0
  mov [1344], R0
  mov R0, 0
  mov [1345], R0
  mov R0, 2
  mov [1346], R0
  mov R0, 2
  mov [1347], R0
  mov R0, 0
  mov [1348], R0
  mov R0, 0
  mov [1349], R0
  mov R0, 0
  mov [1350], R0
  mov R0, 0
  mov [1351], R0
  mov R0, 0
  mov [1352], R0
  mov R0, 0
  mov [1353], R0
  mov R0, 0
  mov [1354], R0
  mov R0, 0
  mov [1355], R0
  mov R0, 0
  mov [1356], R0
  mov R0, 0
  mov [1357], R0
  mov R0, 0
  mov [1358], R0
  mov R0, 0
  mov [1359], R0
  mov R0, 0
  mov [1360], R0
  mov R0, 0
  mov [1361], R0
  mov R0, 0
  mov [1362], R0
  mov R0, 2
  mov [1363], R0
  mov R0, 0
  mov [1364], R0
  mov R0, 0
  mov [1365], R0
  mov R0, 0
  mov [1366], R0
  mov R0, 0
  mov [1367], R0
  mov R0, 0
  mov [1368], R0
  mov R0, 0
  mov [1369], R0
  mov R0, 0
  mov [1370], R0
  mov R0, 2
  mov [1371], R0
  mov R0, 0
  mov [1372], R0
  mov R0, 0
  mov [1373], R0
  mov R0, 0
  mov [1374], R0
  mov R0, 0
  mov [1375], R0
  mov R0, 0
  mov [1376], R0
  mov R0, 0
  mov [1377], R0
  mov R0, 2
  mov [1378], R0
  mov R0, 2
  mov [1379], R0
  mov R0, 0
  mov [1380], R0
  mov R0, 0
  mov [1381], R0
  mov R0, 0
  mov [1382], R0
  mov R0, 0
  mov [1383], R0
  mov R0, 0
  mov [1384], R0
  mov R0, 0
  mov [1385], R0
  mov R0, 0
  mov [1386], R0
  mov R0, 0
  mov [1387], R0
  mov R0, 0
  mov [1388], R0
  mov R0, 0
  mov [1389], R0
  mov R0, 0
  mov [1390], R0
  mov R0, 0
  mov [1391], R0
  mov R0, 0
  mov [1392], R0
  mov R0, 0
  mov [1393], R0
  mov R0, 0
  mov [1394], R0
  mov R0, 12
  mov [1395], R0
  mov R0, 0
  mov [1396], R0
  mov R0, 0
  mov [1397], R0
  mov R0, 0
  mov [1398], R0
  mov R0, 0
  mov [1399], R0
  mov R0, 0
  mov [1400], R0
  mov R0, 0
  mov [1401], R0
  mov R0, 0
  mov [1402], R0
  mov R0, 2
  mov [1403], R0
  mov R0, 0
  mov [1404], R0
  mov R0, 0
  mov [1405], R0
  mov R0, 0
  mov [1406], R0
  mov R0, 0
  mov [1407], R0
  mov R0, 0
  mov [1408], R0
  mov R0, 0
  mov [1409], R0
  mov R0, 2
  mov [1410], R0
  mov R0, 2
  mov [1411], R0
  mov R0, 0
  mov [1412], R0
  mov R0, 0
  mov [1413], R0
  mov R0, 0
  mov [1414], R0
  mov R0, 0
  mov [1415], R0
  mov R0, 0
  mov [1416], R0
  mov R0, 0
  mov [1417], R0
  mov R0, 0
  mov [1418], R0
  mov R0, 0
  mov [1419], R0
  mov R0, 0
  mov [1420], R0
  mov R0, 0
  mov [1421], R0
  mov R0, 0
  mov [1422], R0
  mov R0, 0
  mov [1423], R0
  mov R0, 0
  mov [1424], R0
  mov R0, 0
  mov [1425], R0
  mov R0, 0
  mov [1426], R0
  mov R0, 2
  mov [1427], R0
  mov R0, 0
  mov [1428], R0
  mov R0, 0
  mov [1429], R0
  mov R0, 0
  mov [1430], R0
  mov R0, 0
  mov [1431], R0
  mov R0, 0
  mov [1432], R0
  mov R0, 0
  mov [1433], R0
  mov R0, 0
  mov [1434], R0
  mov R0, 2
  mov [1435], R0
  mov R0, 0
  mov [1436], R0
  mov R0, 0
  mov [1437], R0
  mov R0, 0
  mov [1438], R0
  mov R0, 0
  mov [1439], R0
  mov R0, 0
  mov [1440], R0
  mov R0, 0
  mov [1441], R0
  mov R0, 2
  mov [1442], R0
  mov R0, 2
  mov [1443], R0
  mov R0, 0
  mov [1444], R0
  mov R0, 0
  mov [1445], R0
  mov R0, 0
  mov [1446], R0
  mov R0, 0
  mov [1447], R0
  mov R0, 0
  mov [1448], R0
  mov R0, 0
  mov [1449], R0
  mov R0, 0
  mov [1450], R0
  mov R0, 0
  mov [1451], R0
  mov R0, 0
  mov [1452], R0
  mov R0, 0
  mov [1453], R0
  mov R0, 0
  mov [1454], R0
  mov R0, 0
  mov [1455], R0
  mov R0, 0
  mov [1456], R0
  mov R0, 0
  mov [1457], R0
  mov R0, 0
  mov [1458], R0
  mov R0, 2
  mov [1459], R0
  mov R0, 0
  mov [1460], R0
  mov R0, 0
  mov [1461], R0
  mov R0, 0
  mov [1462], R0
  mov R0, 0
  mov [1463], R0
  mov R0, 0
  mov [1464], R0
  mov R0, 0
  mov [1465], R0
  mov R0, 0
  mov [1466], R0
  mov R0, 2
  mov [1467], R0
  mov R0, 0
  mov [1468], R0
  mov R0, 0
  mov [1469], R0
  mov R0, 0
  mov [1470], R0
  mov R0, 0
  mov [1471], R0
  mov R0, 0
  mov [1472], R0
  mov R0, 0
  mov [1473], R0
  mov R0, 2
  mov [1474], R0
  mov R0, 2
  mov [1475], R0
  mov R0, 0
  mov [1476], R0
  mov R0, 0
  mov [1477], R0
  mov R0, 0
  mov [1478], R0
  mov R0, 0
  mov [1479], R0
  mov R0, 0
  mov [1480], R0
  mov R0, 0
  mov [1481], R0
  mov R0, 0
  mov [1482], R0
  mov R0, 0
  mov [1483], R0
  mov R0, 0
  mov [1484], R0
  mov R0, 0
  mov [1485], R0
  mov R0, 0
  mov [1486], R0
  mov R0, 0
  mov [1487], R0
  mov R0, 0
  mov [1488], R0
  mov R0, 0
  mov [1489], R0
  mov R0, 0
  mov [1490], R0
  mov R0, 2
  mov [1491], R0
  mov R0, 0
  mov [1492], R0
  mov R0, 0
  mov [1493], R0
  mov R0, 0
  mov [1494], R0
  mov R0, 0
  mov [1495], R0
  mov R0, 0
  mov [1496], R0
  mov R0, 0
  mov [1497], R0
  mov R0, 0
  mov [1498], R0
  mov R0, 2
  mov [1499], R0
  mov R0, 0
  mov [1500], R0
  mov R0, 0
  mov [1501], R0
  mov R0, 0
  mov [1502], R0
  mov R0, 0
  mov [1503], R0
  mov R0, 0
  mov [1504], R0
  mov R0, 0
  mov [1505], R0
  mov R0, 2
  mov [1506], R0
  mov R0, 2
  mov [1507], R0
  mov R0, 0
  mov [1508], R0
  mov R0, 0
  mov [1509], R0
  mov R0, 0
  mov [1510], R0
  mov R0, 0
  mov [1511], R0
  mov R0, 0
  mov [1512], R0
  mov R0, 0
  mov [1513], R0
  mov R0, 0
  mov [1514], R0
  mov R0, 0
  mov [1515], R0
  mov R0, 0
  mov [1516], R0
  mov R0, 0
  mov [1517], R0
  mov R0, 0
  mov [1518], R0
  mov R0, 0
  mov [1519], R0
  mov R0, 0
  mov [1520], R0
  mov R0, 0
  mov [1521], R0
  mov R0, 0
  mov [1522], R0
  mov R0, 2
  mov [1523], R0
  mov R0, 0
  mov [1524], R0
  mov R0, 0
  mov [1525], R0
  mov R0, 0
  mov [1526], R0
  mov R0, 0
  mov [1527], R0
  mov R0, 0
  mov [1528], R0
  mov R0, 0
  mov [1529], R0
  mov R0, 0
  mov [1530], R0
  mov R0, 2
  mov [1531], R0
  mov R0, 0
  mov [1532], R0
  mov R0, 0
  mov [1533], R0
  mov R0, 0
  mov [1534], R0
  mov R0, 0
  mov [1535], R0
  mov R0, 0
  mov [1536], R0
  mov R0, 0
  mov [1537], R0
  mov R0, 2
  mov [1538], R0
  mov R0, 2
  mov [1539], R0
  mov R0, 2
  mov [1540], R0
  mov R0, 2
  mov [1541], R0
  mov R0, 2
  mov [1542], R0
  mov R0, 6
  mov [1543], R0
  mov R0, 2
  mov [1544], R0
  mov R0, 2
  mov [1545], R0
  mov R0, 2
  mov [1546], R0
  mov R0, 2
  mov [1547], R0
  mov R0, 0
  mov [1548], R0
  mov R0, 0
  mov [1549], R0
  mov R0, 2
  mov [1550], R0
  mov R0, 2
  mov [1551], R0
  mov R0, 2
  mov [1552], R0
  mov R0, 0
  mov [1553], R0
  mov R0, 0
  mov [1554], R0
  mov R0, 2
  mov [1555], R0
  mov R0, 2
  mov [1556], R0
  mov R0, 2
  mov [1557], R0
  mov R0, 2
  mov [1558], R0
  mov R0, 2
  mov [1559], R0
  mov R0, 2
  mov [1560], R0
  mov R0, 2
  mov [1561], R0
  mov R0, 2
  mov [1562], R0
  mov R0, 2
  mov [1563], R0
  mov R0, 0
  mov [1564], R0
  mov R0, 2
  mov [1565], R0
  mov R0, 2
  mov [1566], R0
  mov R0, 2
  mov [1567], R0
  mov R0, 2
  mov [1568], R0
  mov R0, 0
  mov [1569], R0
  mov R0, 2
  mov [1570], R0
  mov R0, 2
  mov [1571], R0
  mov R0, 0
  mov [1572], R0
  mov R0, 0
  mov [1573], R0
  mov R0, 0
  mov [1574], R0
  mov R0, 0
  mov [1575], R0
  mov R0, 0
  mov [1576], R0
  mov R0, 0
  mov [1577], R0
  mov R0, 0
  mov [1578], R0
  mov R0, 2
  mov [1579], R0
  mov R0, 0
  mov [1580], R0
  mov R0, 0
  mov [1581], R0
  mov R0, 0
  mov [1582], R0
  mov R0, 0
  mov [1583], R0
  mov R0, 0
  mov [1584], R0
  mov R0, 0
  mov [1585], R0
  mov R0, 0
  mov [1586], R0
  mov R0, 0
  mov [1587], R0
  mov R0, 0
  mov [1588], R0
  mov R0, 0
  mov [1589], R0
  mov R0, 0
  mov [1590], R0
  mov R0, 0
  mov [1591], R0
  mov R0, 0
  mov [1592], R0
  mov R0, 0
  mov [1593], R0
  mov R0, 0
  mov [1594], R0
  mov R0, 2
  mov [1595], R0
  mov R0, 0
  mov [1596], R0
  mov R0, 0
  mov [1597], R0
  mov R0, 0
  mov [1598], R0
  mov R0, 0
  mov [1599], R0
  mov R0, 0
  mov [1600], R0
  mov R0, 0
  mov [1601], R0
  mov R0, 2
  mov [1602], R0
  mov R0, 2
  mov [1603], R0
  mov R0, 0
  mov [1604], R0
  mov R0, 0
  mov [1605], R0
  mov R0, 0
  mov [1606], R0
  mov R0, 0
  mov [1607], R0
  mov R0, 0
  mov [1608], R0
  mov R0, 0
  mov [1609], R0
  mov R0, 0
  mov [1610], R0
  mov R0, 2
  mov [1611], R0
  mov R0, 0
  mov [1612], R0
  mov R0, 0
  mov [1613], R0
  mov R0, 0
  mov [1614], R0
  mov R0, 0
  mov [1615], R0
  mov R0, 0
  mov [1616], R0
  mov R0, 0
  mov [1617], R0
  mov R0, 0
  mov [1618], R0
  mov R0, 0
  mov [1619], R0
  mov R0, 0
  mov [1620], R0
  mov R0, 0
  mov [1621], R0
  mov R0, 0
  mov [1622], R0
  mov R0, 0
  mov [1623], R0
  mov R0, 0
  mov [1624], R0
  mov R0, 0
  mov [1625], R0
  mov R0, 0
  mov [1626], R0
  mov R0, 2
  mov [1627], R0
  mov R0, 0
  mov [1628], R0
  mov R0, 0
  mov [1629], R0
  mov R0, 0
  mov [1630], R0
  mov R0, 0
  mov [1631], R0
  mov R0, 0
  mov [1632], R0
  mov R0, 0
  mov [1633], R0
  mov R0, 2
  mov [1634], R0
  mov R0, 2
  mov [1635], R0
  mov R0, 0
  mov [1636], R0
  mov R0, 0
  mov [1637], R0
  mov R0, 0
  mov [1638], R0
  mov R0, 0
  mov [1639], R0
  mov R0, 0
  mov [1640], R0
  mov R0, 0
  mov [1641], R0
  mov R0, 0
  mov [1642], R0
  mov R0, 2
  mov [1643], R0
  mov R0, 0
  mov [1644], R0
  mov R0, 0
  mov [1645], R0
  mov R0, 0
  mov [1646], R0
  mov R0, 0
  mov [1647], R0
  mov R0, 0
  mov [1648], R0
  mov R0, 0
  mov [1649], R0
  mov R0, 0
  mov [1650], R0
  mov R0, 0
  mov [1651], R0
  mov R0, 0
  mov [1652], R0
  mov R0, 0
  mov [1653], R0
  mov R0, 0
  mov [1654], R0
  mov R0, 0
  mov [1655], R0
  mov R0, 0
  mov [1656], R0
  mov R0, 0
  mov [1657], R0
  mov R0, 5
  mov [1658], R0
  mov R0, 2
  mov [1659], R0
  mov R0, 0
  mov [1660], R0
  mov R0, 0
  mov [1661], R0
  mov R0, 0
  mov [1662], R0
  mov R0, 0
  mov [1663], R0
  mov R0, 0
  mov [1664], R0
  mov R0, 0
  mov [1665], R0
  mov R0, 2
  mov [1666], R0
  mov R0, 2
  mov [1667], R0
  mov R0, 0
  mov [1668], R0
  mov R0, 0
  mov [1669], R0
  mov R0, 0
  mov [1670], R0
  mov R0, 0
  mov [1671], R0
  mov R0, 0
  mov [1672], R0
  mov R0, 0
  mov [1673], R0
  mov R0, 0
  mov [1674], R0
  mov R0, 2
  mov [1675], R0
  mov R0, 0
  mov [1676], R0
  mov R0, 0
  mov [1677], R0
  mov R0, 0
  mov [1678], R0
  mov R0, 0
  mov [1679], R0
  mov R0, 0
  mov [1680], R0
  mov R0, 0
  mov [1681], R0
  mov R0, 0
  mov [1682], R0
  mov R0, 0
  mov [1683], R0
  mov R0, 0
  mov [1684], R0
  mov R0, 0
  mov [1685], R0
  mov R0, 0
  mov [1686], R0
  mov R0, 0
  mov [1687], R0
  mov R0, 0
  mov [1688], R0
  mov R0, 0
  mov [1689], R0
  mov R0, 0
  mov [1690], R0
  mov R0, 2
  mov [1691], R0
  mov R0, 0
  mov [1692], R0
  mov R0, 0
  mov [1693], R0
  mov R0, 0
  mov [1694], R0
  mov R0, 0
  mov [1695], R0
  mov R0, 0
  mov [1696], R0
  mov R0, 0
  mov [1697], R0
  mov R0, 2
  mov [1698], R0
  mov R0, 2
  mov [1699], R0
  mov R0, 0
  mov [1700], R0
  mov R0, 0
  mov [1701], R0
  mov R0, 0
  mov [1702], R0
  mov R0, 0
  mov [1703], R0
  mov R0, 0
  mov [1704], R0
  mov R0, 0
  mov [1705], R0
  mov R0, 0
  mov [1706], R0
  mov R0, 2
  mov [1707], R0
  mov R0, 0
  mov [1708], R0
  mov R0, 0
  mov [1709], R0
  mov R0, 0
  mov [1710], R0
  mov R0, 0
  mov [1711], R0
  mov R0, 0
  mov [1712], R0
  mov R0, 0
  mov [1713], R0
  mov R0, 0
  mov [1714], R0
  mov R0, 0
  mov [1715], R0
  mov R0, 0
  mov [1716], R0
  mov R0, 0
  mov [1717], R0
  mov R0, 0
  mov [1718], R0
  mov R0, 0
  mov [1719], R0
  mov R0, 0
  mov [1720], R0
  mov R0, 0
  mov [1721], R0
  mov R0, 0
  mov [1722], R0
  mov R0, 2
  mov [1723], R0
  mov R0, 0
  mov [1724], R0
  mov R0, 0
  mov [1725], R0
  mov R0, 0
  mov [1726], R0
  mov R0, 0
  mov [1727], R0
  mov R0, 0
  mov [1728], R0
  mov R0, 0
  mov [1729], R0
  mov R0, 2
  mov [1730], R0
  mov R0, 2
  mov [1731], R0
  mov R0, 0
  mov [1732], R0
  mov R0, 0
  mov [1733], R0
  mov R0, 0
  mov [1734], R0
  mov R0, 0
  mov [1735], R0
  mov R0, 0
  mov [1736], R0
  mov R0, 0
  mov [1737], R0
  mov R0, 0
  mov [1738], R0
  mov R0, 2
  mov [1739], R0
  mov R0, 0
  mov [1740], R0
  mov R0, 0
  mov [1741], R0
  mov R0, 0
  mov [1742], R0
  mov R0, 0
  mov [1743], R0
  mov R0, 0
  mov [1744], R0
  mov R0, 0
  mov [1745], R0
  mov R0, 0
  mov [1746], R0
  mov R0, 0
  mov [1747], R0
  mov R0, 0
  mov [1748], R0
  mov R0, 0
  mov [1749], R0
  mov R0, 0
  mov [1750], R0
  mov R0, 0
  mov [1751], R0
  mov R0, 0
  mov [1752], R0
  mov R0, 0
  mov [1753], R0
  mov R0, 0
  mov [1754], R0
  mov R0, 2
  mov [1755], R0
  mov R0, 0
  mov [1756], R0
  mov R0, 0
  mov [1757], R0
  mov R0, 0
  mov [1758], R0
  mov R0, 0
  mov [1759], R0
  mov R0, 0
  mov [1760], R0
  mov R0, 0
  mov [1761], R0
  mov R0, 2
  mov [1762], R0
  mov R0, 2
  mov [1763], R0
  mov R0, 0
  mov [1764], R0
  mov R0, 0
  mov [1765], R0
  mov R0, 0
  mov [1766], R0
  mov R0, 0
  mov [1767], R0
  mov R0, 0
  mov [1768], R0
  mov R0, 0
  mov [1769], R0
  mov R0, 0
  mov [1770], R0
  mov R0, 2
  mov [1771], R0
  mov R0, 0
  mov [1772], R0
  mov R0, 0
  mov [1773], R0
  mov R0, 0
  mov [1774], R0
  mov R0, 0
  mov [1775], R0
  mov R0, 0
  mov [1776], R0
  mov R0, 0
  mov [1777], R0
  mov R0, 0
  mov [1778], R0
  mov R0, 0
  mov [1779], R0
  mov R0, 0
  mov [1780], R0
  mov R0, 0
  mov [1781], R0
  mov R0, 0
  mov [1782], R0
  mov R0, 0
  mov [1783], R0
  mov R0, 0
  mov [1784], R0
  mov R0, 0
  mov [1785], R0
  mov R0, 0
  mov [1786], R0
  mov R0, 2
  mov [1787], R0
  mov R0, 0
  mov [1788], R0
  mov R0, 0
  mov [1789], R0
  mov R0, 0
  mov [1790], R0
  mov R0, 0
  mov [1791], R0
  mov R0, 0
  mov [1792], R0
  mov R0, 0
  mov [1793], R0
  mov R0, 2
  mov [1794], R0
  mov R0, 2
  mov [1795], R0
  mov R0, 0
  mov [1796], R0
  mov R0, 0
  mov [1797], R0
  mov R0, 0
  mov [1798], R0
  mov R0, 0
  mov [1799], R0
  mov R0, 0
  mov [1800], R0
  mov R0, 0
  mov [1801], R0
  mov R0, 0
  mov [1802], R0
  mov R0, 2
  mov [1803], R0
  mov R0, 2
  mov [1804], R0
  mov R0, 2
  mov [1805], R0
  mov R0, 2
  mov [1806], R0
  mov R0, 2
  mov [1807], R0
  mov R0, 2
  mov [1808], R0
  mov R0, 2
  mov [1809], R0
  mov R0, 2
  mov [1810], R0
  mov R0, 2
  mov [1811], R0
  mov R0, 2
  mov [1812], R0
  mov R0, 2
  mov [1813], R0
  mov R0, 2
  mov [1814], R0
  mov R0, 2
  mov [1815], R0
  mov R0, 2
  mov [1816], R0
  mov R0, 2
  mov [1817], R0
  mov R0, 2
  mov [1818], R0
  mov R0, 2
  mov [1819], R0
  mov R0, 0
  mov [1820], R0
  mov R0, 0
  mov [1821], R0
  mov R0, 0
  mov [1822], R0
  mov R0, 0
  mov [1823], R0
  mov R0, 0
  mov [1824], R0
  mov R0, 0
  mov [1825], R0
  mov R0, 2
  mov [1826], R0
  mov R0, 2
  mov [1827], R0
  mov R0, 0
  mov [1828], R0
  mov R0, 0
  mov [1829], R0
  mov R0, 0
  mov [1830], R0
  mov R0, 0
  mov [1831], R0
  mov R0, 0
  mov [1832], R0
  mov R0, 0
  mov [1833], R0
  mov R0, 0
  mov [1834], R0
  mov R0, 0
  mov [1835], R0
  mov R0, 0
  mov [1836], R0
  mov R0, 0
  mov [1837], R0
  mov R0, 0
  mov [1838], R0
  mov R0, 0
  mov [1839], R0
  mov R0, 0
  mov [1840], R0
  mov R0, 0
  mov [1841], R0
  mov R0, 0
  mov [1842], R0
  mov R0, 0
  mov [1843], R0
  mov R0, 0
  mov [1844], R0
  mov R0, 0
  mov [1845], R0
  mov R0, 0
  mov [1846], R0
  mov R0, 0
  mov [1847], R0
  mov R0, 0
  mov [1848], R0
  mov R0, 0
  mov [1849], R0
  mov R0, 0
  mov [1850], R0
  mov R0, 0
  mov [1851], R0
  mov R0, 0
  mov [1852], R0
  mov R0, 0
  mov [1853], R0
  mov R0, 0
  mov [1854], R0
  mov R0, 0
  mov [1855], R0
  mov R0, 0
  mov [1856], R0
  mov R0, 0
  mov [1857], R0
  mov R0, 2
  mov [1858], R0
  mov R0, 2
  mov [1859], R0
  mov R0, 0
  mov [1860], R0
  mov R0, 0
  mov [1861], R0
  mov R0, 0
  mov [1862], R0
  mov R0, 0
  mov [1863], R0
  mov R0, 0
  mov [1864], R0
  mov R0, 0
  mov [1865], R0
  mov R0, 0
  mov [1866], R0
  mov R0, 0
  mov [1867], R0
  mov R0, 0
  mov [1868], R0
  mov R0, 0
  mov [1869], R0
  mov R0, 0
  mov [1870], R0
  mov R0, 0
  mov [1871], R0
  mov R0, 0
  mov [1872], R0
  mov R0, 0
  mov [1873], R0
  mov R0, 0
  mov [1874], R0
  mov R0, 0
  mov [1875], R0
  mov R0, 0
  mov [1876], R0
  mov R0, 0
  mov [1877], R0
  mov R0, 0
  mov [1878], R0
  mov R0, 0
  mov [1879], R0
  mov R0, 0
  mov [1880], R0
  mov R0, 0
  mov [1881], R0
  mov R0, 0
  mov [1882], R0
  mov R0, 0
  mov [1883], R0
  mov R0, 0
  mov [1884], R0
  mov R0, 0
  mov [1885], R0
  mov R0, 0
  mov [1886], R0
  mov R0, 0
  mov [1887], R0
  mov R0, 0
  mov [1888], R0
  mov R0, 0
  mov [1889], R0
  mov R0, 2
  mov [1890], R0
  mov R0, 2
  mov [1891], R0
  mov R0, 0
  mov [1892], R0
  mov R0, 0
  mov [1893], R0
  mov R0, 0
  mov [1894], R0
  mov R0, 0
  mov [1895], R0
  mov R0, 0
  mov [1896], R0
  mov R0, 0
  mov [1897], R0
  mov R0, 0
  mov [1898], R0
  mov R0, 0
  mov [1899], R0
  mov R0, 0
  mov [1900], R0
  mov R0, 0
  mov [1901], R0
  mov R0, 1
  mov [1902], R0
  mov R0, 1
  mov [1903], R0
  mov R0, 0
  mov [1904], R0
  mov R0, 0
  mov [1905], R0
  mov R0, 0
  mov [1906], R0
  mov R0, 0
  mov [1907], R0
  mov R0, 0
  mov [1908], R0
  mov R0, 0
  mov [1909], R0
  mov R0, 1
  mov [1910], R0
  mov R0, 1
  mov [1911], R0
  mov R0, 0
  mov [1912], R0
  mov R0, 0
  mov [1913], R0
  mov R0, 0
  mov [1914], R0
  mov R0, 0
  mov [1915], R0
  mov R0, 0
  mov [1916], R0
  mov R0, 0
  mov [1917], R0
  mov R0, 0
  mov [1918], R0
  mov R0, 0
  mov [1919], R0
  mov R0, 0
  mov [1920], R0
  mov R0, 0
  mov [1921], R0
  mov R0, 2
  mov [1922], R0
  mov R0, 2
  mov [1923], R0
  mov R0, 0
  mov [1924], R0
  mov R0, 0
  mov [1925], R0
  mov R0, 0
  mov [1926], R0
  mov R0, 0
  mov [1927], R0
  mov R0, 0
  mov [1928], R0
  mov R0, 0
  mov [1929], R0
  mov R0, 0
  mov [1930], R0
  mov R0, 0
  mov [1931], R0
  mov R0, 0
  mov [1932], R0
  mov R0, 0
  mov [1933], R0
  mov R0, 1
  mov [1934], R0
  mov R0, 1
  mov [1935], R0
  mov R0, 0
  mov [1936], R0
  mov R0, 0
  mov [1937], R0
  mov R0, 0
  mov [1938], R0
  mov R0, 0
  mov [1939], R0
  mov R0, 0
  mov [1940], R0
  mov R0, 0
  mov [1941], R0
  mov R0, 1
  mov [1942], R0
  mov R0, 1
  mov [1943], R0
  mov R0, 0
  mov [1944], R0
  mov R0, 0
  mov [1945], R0
  mov R0, 0
  mov [1946], R0
  mov R0, 0
  mov [1947], R0
  mov R0, 0
  mov [1948], R0
  mov R0, 0
  mov [1949], R0
  mov R0, 0
  mov [1950], R0
  mov R0, 0
  mov [1951], R0
  mov R0, 0
  mov [1952], R0
  mov R0, 0
  mov [1953], R0
  mov R0, 2
  mov [1954], R0
  mov R0, 2
  mov [1955], R0
  mov R0, 0
  mov [1956], R0
  mov R0, 0
  mov [1957], R0
  mov R0, 0
  mov [1958], R0
  mov R0, 0
  mov [1959], R0
  mov R0, 0
  mov [1960], R0
  mov R0, 0
  mov [1961], R0
  mov R0, 0
  mov [1962], R0
  mov R0, 0
  mov [1963], R0
  mov R0, 0
  mov [1964], R0
  mov R0, 0
  mov [1965], R0
  mov R0, 0
  mov [1966], R0
  mov R0, 0
  mov [1967], R0
  mov R0, 0
  mov [1968], R0
  mov R0, 0
  mov [1969], R0
  mov R0, 0
  mov [1970], R0
  mov R0, 0
  mov [1971], R0
  mov R0, 0
  mov [1972], R0
  mov R0, 0
  mov [1973], R0
  mov R0, 0
  mov [1974], R0
  mov R0, 0
  mov [1975], R0
  mov R0, 0
  mov [1976], R0
  mov R0, 0
  mov [1977], R0
  mov R0, 0
  mov [1978], R0
  mov R0, 0
  mov [1979], R0
  mov R0, 0
  mov [1980], R0
  mov R0, 0
  mov [1981], R0
  mov R0, 0
  mov [1982], R0
  mov R0, 0
  mov [1983], R0
  mov R0, 0
  mov [1984], R0
  mov R0, 0
  mov [1985], R0
  mov R0, 2
  mov [1986], R0
  mov R0, 2
  mov [1987], R0
  mov R0, 0
  mov [1988], R0
  mov R0, 0
  mov [1989], R0
  mov R0, 0
  mov [1990], R0
  mov R0, 0
  mov [1991], R0
  mov R0, 0
  mov [1992], R0
  mov R0, 0
  mov [1993], R0
  mov R0, 0
  mov [1994], R0
  mov R0, 0
  mov [1995], R0
  mov R0, 0
  mov [1996], R0
  mov R0, 0
  mov [1997], R0
  mov R0, 0
  mov [1998], R0
  mov R0, 0
  mov [1999], R0
  mov R0, 0
  mov [2000], R0
  mov R0, 0
  mov [2001], R0
  mov R0, 0
  mov [2002], R0
  mov R0, 0
  mov [2003], R0
  mov R0, 0
  mov [2004], R0
  mov R0, 0
  mov [2005], R0
  mov R0, 0
  mov [2006], R0
  mov R0, 0
  mov [2007], R0
  mov R0, 0
  mov [2008], R0
  mov R0, 0
  mov [2009], R0
  mov R0, 0
  mov [2010], R0
  mov R0, 0
  mov [2011], R0
  mov R0, 0
  mov [2012], R0
  mov R0, 0
  mov [2013], R0
  mov R0, 0
  mov [2014], R0
  mov R0, 0
  mov [2015], R0
  mov R0, 0
  mov [2016], R0
  mov R0, 0
  mov [2017], R0
  mov R0, 2
  mov [2018], R0
  mov R0, 2
  mov [2019], R0
  mov R0, 2
  mov [2020], R0
  mov R0, 2
  mov [2021], R0
  mov R0, 2
  mov [2022], R0
  mov R0, 2
  mov [2023], R0
  mov R0, 2
  mov [2024], R0
  mov R0, 2
  mov [2025], R0
  mov R0, 2
  mov [2026], R0
  mov R0, 2
  mov [2027], R0
  mov R0, 2
  mov [2028], R0
  mov R0, 2
  mov [2029], R0
  mov R0, 2
  mov [2030], R0
  mov R0, 2
  mov [2031], R0
  mov R0, 2
  mov [2032], R0
  mov R0, 2
  mov [2033], R0
  mov R0, 2
  mov [2034], R0
  mov R0, 2
  mov [2035], R0
  mov R0, 2
  mov [2036], R0
  mov R0, 2
  mov [2037], R0
  mov R0, 2
  mov [2038], R0
  mov R0, 2
  mov [2039], R0
  mov R0, 2
  mov [2040], R0
  mov R0, 2
  mov [2041], R0
  mov R0, 2
  mov [2042], R0
  mov R0, 2
  mov [2043], R0
  mov R0, 2
  mov [2044], R0
  mov R0, 2
  mov [2045], R0
  mov R0, 2
  mov [2046], R0
  mov R0, 2
  mov [2047], R0
  mov R0, 2
  mov [2048], R0
  mov R0, 2
  mov [2049], R0
  mov R0, 2
  mov [2050], R0
  mov R0, 1
  mov [2051], R0
  mov R0, 1
  mov [2052], R0
  mov R0, 1
  mov [2053], R0
  mov R0, 1
  mov [2054], R0
  mov R0, 1
  mov [2055], R0
  mov R0, 1
  mov [2056], R0
  mov R0, 1
  mov [2057], R0
  mov R0, 1
  mov [2058], R0
  mov R0, 1
  mov [2059], R0
  mov R0, 1
  mov [2060], R0
  mov R0, 1
  mov [2061], R0
  mov R0, 1
  mov [2062], R0
  mov R0, 1
  mov [2063], R0
  mov R0, 1
  mov [2064], R0
  mov R0, 1
  mov [2065], R0
  mov R0, 1
  mov [2066], R0
  mov R0, 3
  mov [2067], R0
  mov R0, 3
  mov [2068], R0
  mov R0, 3
  mov [2069], R0
  mov R0, 3
  mov [2070], R0
  mov R0, 3
  mov [2071], R0
  mov R0, 3
  mov [2072], R0
  mov R0, 3
  mov [2073], R0
  mov R0, 3
  mov [2074], R0
  mov R0, 3
  mov [2075], R0
  mov R0, 3
  mov [2076], R0
  mov R0, 3
  mov [2077], R0
  mov R0, 3
  mov [2078], R0
  mov R0, 3
  mov [2079], R0
  mov R0, 3
  mov [2080], R0
  mov R0, 3
  mov [2081], R0
  mov R0, 3
  mov [2082], R0
  mov R0, 1
  mov [2083], R0
  mov R0, 0
  mov [2084], R0
  mov R0, 0
  mov [2085], R0
  mov R0, 0
  mov [2086], R0
  mov R0, 0
  mov [2087], R0
  mov R0, 0
  mov [2088], R0
  mov R0, 0
  mov [2089], R0
  mov R0, 0
  mov [2090], R0
  mov R0, 0
  mov [2091], R0
  mov R0, 0
  mov [2092], R0
  mov R0, 0
  mov [2093], R0
  mov R0, 0
  mov [2094], R0
  mov R0, 0
  mov [2095], R0
  mov R0, 0
  mov [2096], R0
  mov R0, 0
  mov [2097], R0
  mov R0, 0
  mov [2098], R0
  mov R0, 3
  mov [2099], R0
  mov R0, 0
  mov [2100], R0
  mov R0, 0
  mov [2101], R0
  mov R0, 0
  mov [2102], R0
  mov R0, 0
  mov [2103], R0
  mov R0, 0
  mov [2104], R0
  mov R0, 0
  mov [2105], R0
  mov R0, 0
  mov [2106], R0
  mov R0, 0
  mov [2107], R0
  mov R0, 0
  mov [2108], R0
  mov R0, 0
  mov [2109], R0
  mov R0, 0
  mov [2110], R0
  mov R0, 0
  mov [2111], R0
  mov R0, 0
  mov [2112], R0
  mov R0, 0
  mov [2113], R0
  mov R0, 3
  mov [2114], R0
  mov R0, 1
  mov [2115], R0
  mov R0, 0
  mov [2116], R0
  mov R0, 0
  mov [2117], R0
  mov R0, 0
  mov [2118], R0
  mov R0, 0
  mov [2119], R0
  mov R0, 0
  mov [2120], R0
  mov R0, 0
  mov [2121], R0
  mov R0, 0
  mov [2122], R0
  mov R0, 0
  mov [2123], R0
  mov R0, 0
  mov [2124], R0
  mov R0, 0
  mov [2125], R0
  mov R0, 0
  mov [2126], R0
  mov R0, 0
  mov [2127], R0
  mov R0, 0
  mov [2128], R0
  mov R0, 0
  mov [2129], R0
  mov R0, 0
  mov [2130], R0
  mov R0, 3
  mov [2131], R0
  mov R0, 0
  mov [2132], R0
  mov R0, 0
  mov [2133], R0
  mov R0, 0
  mov [2134], R0
  mov R0, 0
  mov [2135], R0
  mov R0, 0
  mov [2136], R0
  mov R0, 0
  mov [2137], R0
  mov R0, 0
  mov [2138], R0
  mov R0, 0
  mov [2139], R0
  mov R0, 0
  mov [2140], R0
  mov R0, 0
  mov [2141], R0
  mov R0, 0
  mov [2142], R0
  mov R0, 0
  mov [2143], R0
  mov R0, 0
  mov [2144], R0
  mov R0, 0
  mov [2145], R0
  mov R0, 3
  mov [2146], R0
  mov R0, 1
  mov [2147], R0
  mov R0, 0
  mov [2148], R0
  mov R0, 0
  mov [2149], R0
  mov R0, 0
  mov [2150], R0
  mov R0, 0
  mov [2151], R0
  mov R0, 0
  mov [2152], R0
  mov R0, 0
  mov [2153], R0
  mov R0, 0
  mov [2154], R0
  mov R0, 0
  mov [2155], R0
  mov R0, 0
  mov [2156], R0
  mov R0, 0
  mov [2157], R0
  mov R0, 0
  mov [2158], R0
  mov R0, 0
  mov [2159], R0
  mov R0, 0
  mov [2160], R0
  mov R0, 0
  mov [2161], R0
  mov R0, 0
  mov [2162], R0
  mov R0, 3
  mov [2163], R0
  mov R0, 0
  mov [2164], R0
  mov R0, 0
  mov [2165], R0
  mov R0, 0
  mov [2166], R0
  mov R0, 0
  mov [2167], R0
  mov R0, 0
  mov [2168], R0
  mov R0, 0
  mov [2169], R0
  mov R0, 0
  mov [2170], R0
  mov R0, 0
  mov [2171], R0
  mov R0, 0
  mov [2172], R0
  mov R0, 0
  mov [2173], R0
  mov R0, 0
  mov [2174], R0
  mov R0, 0
  mov [2175], R0
  mov R0, 0
  mov [2176], R0
  mov R0, 0
  mov [2177], R0
  mov R0, 3
  mov [2178], R0
  mov R0, 1
  mov [2179], R0
  mov R0, 0
  mov [2180], R0
  mov R0, 0
  mov [2181], R0
  mov R0, 0
  mov [2182], R0
  mov R0, 0
  mov [2183], R0
  mov R0, 0
  mov [2184], R0
  mov R0, 0
  mov [2185], R0
  mov R0, 0
  mov [2186], R0
  mov R0, 0
  mov [2187], R0
  mov R0, 0
  mov [2188], R0
  mov R0, 0
  mov [2189], R0
  mov R0, 0
  mov [2190], R0
  mov R0, 1
  mov [2191], R0
  mov R0, 0
  mov [2192], R0
  mov R0, 0
  mov [2193], R0
  mov R0, 0
  mov [2194], R0
  mov R0, 3
  mov [2195], R0
  mov R0, 0
  mov [2196], R0
  mov R0, 0
  mov [2197], R0
  mov R0, 0
  mov [2198], R0
  mov R0, 0
  mov [2199], R0
  mov R0, 0
  mov [2200], R0
  mov R0, 0
  mov [2201], R0
  mov R0, 0
  mov [2202], R0
  mov R0, 0
  mov [2203], R0
  mov R0, 0
  mov [2204], R0
  mov R0, 0
  mov [2205], R0
  mov R0, 0
  mov [2206], R0
  mov R0, 0
  mov [2207], R0
  mov R0, 0
  mov [2208], R0
  mov R0, 0
  mov [2209], R0
  mov R0, 3
  mov [2210], R0
  mov R0, 1
  mov [2211], R0
  mov R0, 0
  mov [2212], R0
  mov R0, 0
  mov [2213], R0
  mov R0, 0
  mov [2214], R0
  mov R0, 0
  mov [2215], R0
  mov R0, 0
  mov [2216], R0
  mov R0, 0
  mov [2217], R0
  mov R0, 0
  mov [2218], R0
  mov R0, 0
  mov [2219], R0
  mov R0, 0
  mov [2220], R0
  mov R0, 0
  mov [2221], R0
  mov R0, 0
  mov [2222], R0
  mov R0, 0
  mov [2223], R0
  mov R0, 0
  mov [2224], R0
  mov R0, 0
  mov [2225], R0
  mov R0, 0
  mov [2226], R0
  mov R0, 3
  mov [2227], R0
  mov R0, 0
  mov [2228], R0
  mov R0, 0
  mov [2229], R0
  mov R0, 0
  mov [2230], R0
  mov R0, 0
  mov [2231], R0
  mov R0, 0
  mov [2232], R0
  mov R0, 0
  mov [2233], R0
  mov R0, 0
  mov [2234], R0
  mov R0, 0
  mov [2235], R0
  mov R0, 0
  mov [2236], R0
  mov R0, 0
  mov [2237], R0
  mov R0, 0
  mov [2238], R0
  mov R0, 0
  mov [2239], R0
  mov R0, 0
  mov [2240], R0
  mov R0, 0
  mov [2241], R0
  mov R0, 3
  mov [2242], R0
  mov R0, 1
  mov [2243], R0
  mov R0, 0
  mov [2244], R0
  mov R0, 0
  mov [2245], R0
  mov R0, 0
  mov [2246], R0
  mov R0, 0
  mov [2247], R0
  mov R0, 0
  mov [2248], R0
  mov R0, 0
  mov [2249], R0
  mov R0, 0
  mov [2250], R0
  mov R0, 0
  mov [2251], R0
  mov R0, 0
  mov [2252], R0
  mov R0, 0
  mov [2253], R0
  mov R0, 0
  mov [2254], R0
  mov R0, 0
  mov [2255], R0
  mov R0, 0
  mov [2256], R0
  mov R0, 0
  mov [2257], R0
  mov R0, 0
  mov [2258], R0
  mov R0, 3
  mov [2259], R0
  mov R0, 0
  mov [2260], R0
  mov R0, 0
  mov [2261], R0
  mov R0, 0
  mov [2262], R0
  mov R0, 0
  mov [2263], R0
  mov R0, 0
  mov [2264], R0
  mov R0, 0
  mov [2265], R0
  mov R0, 0
  mov [2266], R0
  mov R0, 0
  mov [2267], R0
  mov R0, 0
  mov [2268], R0
  mov R0, 0
  mov [2269], R0
  mov R0, 0
  mov [2270], R0
  mov R0, 0
  mov [2271], R0
  mov R0, 0
  mov [2272], R0
  mov R0, 0
  mov [2273], R0
  mov R0, 3
  mov [2274], R0
  mov R0, 1
  mov [2275], R0
  mov R0, 0
  mov [2276], R0
  mov R0, 0
  mov [2277], R0
  mov R0, 0
  mov [2278], R0
  mov R0, 0
  mov [2279], R0
  mov R0, 0
  mov [2280], R0
  mov R0, 0
  mov [2281], R0
  mov R0, 0
  mov [2282], R0
  mov R0, 0
  mov [2283], R0
  mov R0, 0
  mov [2284], R0
  mov R0, 0
  mov [2285], R0
  mov R0, 0
  mov [2286], R0
  mov R0, 0
  mov [2287], R0
  mov R0, 0
  mov [2288], R0
  mov R0, 0
  mov [2289], R0
  mov R0, 0
  mov [2290], R0
  mov R0, 3
  mov [2291], R0
  mov R0, 0
  mov [2292], R0
  mov R0, 0
  mov [2293], R0
  mov R0, 0
  mov [2294], R0
  mov R0, 0
  mov [2295], R0
  mov R0, 0
  mov [2296], R0
  mov R0, 0
  mov [2297], R0
  mov R0, 0
  mov [2298], R0
  mov R0, 0
  mov [2299], R0
  mov R0, 0
  mov [2300], R0
  mov R0, 0
  mov [2301], R0
  mov R0, 0
  mov [2302], R0
  mov R0, 0
  mov [2303], R0
  mov R0, 0
  mov [2304], R0
  mov R0, 0
  mov [2305], R0
  mov R0, 3
  mov [2306], R0
  mov R0, 2
  mov [2307], R0
  mov R0, 2
  mov [2308], R0
  mov R0, 2
  mov [2309], R0
  mov R0, 1
  mov [2310], R0
  mov R0, 6
  mov [2311], R0
  mov R0, 1
  mov [2312], R0
  mov R0, 2
  mov [2313], R0
  mov R0, 2
  mov [2314], R0
  mov R0, 1
  mov [2315], R0
  mov R0, 2
  mov [2316], R0
  mov R0, 1
  mov [2317], R0
  mov R0, 0
  mov [2318], R0
  mov R0, 0
  mov [2319], R0
  mov R0, 0
  mov [2320], R0
  mov R0, 1
  mov [2321], R0
  mov R0, 2
  mov [2322], R0
  mov R0, 3
  mov [2323], R0
  mov R0, 3
  mov [2324], R0
  mov R0, 3
  mov [2325], R0
  mov R0, 3
  mov [2326], R0
  mov R0, 8
  mov [2327], R0
  mov R0, 3
  mov [2328], R0
  mov R0, 3
  mov [2329], R0
  mov R0, 3
  mov [2330], R0
  mov R0, 3
  mov [2331], R0
  mov R0, 3
  mov [2332], R0
  mov R0, 3
  mov [2333], R0
  mov R0, 6
  mov [2334], R0
  mov R0, 3
  mov [2335], R0
  mov R0, 3
  mov [2336], R0
  mov R0, 3
  mov [2337], R0
  mov R0, 3
  mov [2338], R0
  mov R0, 2
  mov [2339], R0
  mov R0, 0
  mov [2340], R0
  mov R0, 0
  mov [2341], R0
  mov R0, 0
  mov [2342], R0
  mov R0, 0
  mov [2343], R0
  mov R0, 0
  mov [2344], R0
  mov R0, 0
  mov [2345], R0
  mov R0, 0
  mov [2346], R0
  mov R0, 2
  mov [2347], R0
  mov R0, 0
  mov [2348], R0
  mov R0, 0
  mov [2349], R0
  mov R0, 0
  mov [2350], R0
  mov R0, 0
  mov [2351], R0
  mov R0, 0
  mov [2352], R0
  mov R0, 0
  mov [2353], R0
  mov R0, 0
  mov [2354], R0
  mov R0, 3
  mov [2355], R0
  mov R0, 0
  mov [2356], R0
  mov R0, 0
  mov [2357], R0
  mov R0, 0
  mov [2358], R0
  mov R0, 0
  mov [2359], R0
  mov R0, 0
  mov [2360], R0
  mov R0, 0
  mov [2361], R0
  mov R0, 0
  mov [2362], R0
  mov R0, 3
  mov [2363], R0
  mov R0, 0
  mov [2364], R0
  mov R0, 0
  mov [2365], R0
  mov R0, 0
  mov [2366], R0
  mov R0, 0
  mov [2367], R0
  mov R0, 0
  mov [2368], R0
  mov R0, 0
  mov [2369], R0
  mov R0, 3
  mov [2370], R0
  mov R0, 2
  mov [2371], R0
  mov R0, 0
  mov [2372], R0
  mov R0, 0
  mov [2373], R0
  mov R0, 0
  mov [2374], R0
  mov R0, 0
  mov [2375], R0
  mov R0, 0
  mov [2376], R0
  mov R0, 0
  mov [2377], R0
  mov R0, 0
  mov [2378], R0
  mov R0, 2
  mov [2379], R0
  mov R0, 0
  mov [2380], R0
  mov R0, 0
  mov [2381], R0
  mov R0, 0
  mov [2382], R0
  mov R0, 0
  mov [2383], R0
  mov R0, 0
  mov [2384], R0
  mov R0, 0
  mov [2385], R0
  mov R0, 0
  mov [2386], R0
  mov R0, 3
  mov [2387], R0
  mov R0, 0
  mov [2388], R0
  mov R0, 0
  mov [2389], R0
  mov R0, 0
  mov [2390], R0
  mov R0, 0
  mov [2391], R0
  mov R0, 0
  mov [2392], R0
  mov R0, 0
  mov [2393], R0
  mov R0, 0
  mov [2394], R0
  mov R0, 3
  mov [2395], R0
  mov R0, 0
  mov [2396], R0
  mov R0, 0
  mov [2397], R0
  mov R0, 0
  mov [2398], R0
  mov R0, 0
  mov [2399], R0
  mov R0, 0
  mov [2400], R0
  mov R0, 0
  mov [2401], R0
  mov R0, 3
  mov [2402], R0
  mov R0, 2
  mov [2403], R0
  mov R0, 0
  mov [2404], R0
  mov R0, 0
  mov [2405], R0
  mov R0, 0
  mov [2406], R0
  mov R0, 0
  mov [2407], R0
  mov R0, 0
  mov [2408], R0
  mov R0, 0
  mov [2409], R0
  mov R0, 0
  mov [2410], R0
  mov R0, 2
  mov [2411], R0
  mov R0, 0
  mov [2412], R0
  mov R0, 0
  mov [2413], R0
  mov R0, 0
  mov [2414], R0
  mov R0, 0
  mov [2415], R0
  mov R0, 0
  mov [2416], R0
  mov R0, 0
  mov [2417], R0
  mov R0, 0
  mov [2418], R0
  mov R0, 3
  mov [2419], R0
  mov R0, 0
  mov [2420], R0
  mov R0, 0
  mov [2421], R0
  mov R0, 0
  mov [2422], R0
  mov R0, 0
  mov [2423], R0
  mov R0, 0
  mov [2424], R0
  mov R0, 0
  mov [2425], R0
  mov R0, 0
  mov [2426], R0
  mov R0, 3
  mov [2427], R0
  mov R0, 0
  mov [2428], R0
  mov R0, 0
  mov [2429], R0
  mov R0, 0
  mov [2430], R0
  mov R0, 0
  mov [2431], R0
  mov R0, 0
  mov [2432], R0
  mov R0, 0
  mov [2433], R0
  mov R0, 3
  mov [2434], R0
  mov R0, 2
  mov [2435], R0
  mov R0, 0
  mov [2436], R0
  mov R0, 0
  mov [2437], R0
  mov R0, 0
  mov [2438], R0
  mov R0, 2
  mov [2439], R0
  mov R0, 0
  mov [2440], R0
  mov R0, 0
  mov [2441], R0
  mov R0, 0
  mov [2442], R0
  mov R0, 2
  mov [2443], R0
  mov R0, 0
  mov [2444], R0
  mov R0, 0
  mov [2445], R0
  mov R0, 0
  mov [2446], R0
  mov R0, 0
  mov [2447], R0
  mov R0, 0
  mov [2448], R0
  mov R0, 0
  mov [2449], R0
  mov R0, 0
  mov [2450], R0
  mov R0, 3
  mov [2451], R0
  mov R0, 0
  mov [2452], R0
  mov R0, 0
  mov [2453], R0
  mov R0, 0
  mov [2454], R0
  mov R0, 0
  mov [2455], R0
  mov R0, 0
  mov [2456], R0
  mov R0, 0
  mov [2457], R0
  mov R0, 0
  mov [2458], R0
  mov R0, 3
  mov [2459], R0
  mov R0, 0
  mov [2460], R0
  mov R0, 0
  mov [2461], R0
  mov R0, 0
  mov [2462], R0
  mov R0, 0
  mov [2463], R0
  mov R0, 0
  mov [2464], R0
  mov R0, 0
  mov [2465], R0
  mov R0, 5
  mov [2466], R0
  mov R0, 2
  mov [2467], R0
  mov R0, 0
  mov [2468], R0
  mov R0, 0
  mov [2469], R0
  mov R0, 0
  mov [2470], R0
  mov R0, 0
  mov [2471], R0
  mov R0, 0
  mov [2472], R0
  mov R0, 0
  mov [2473], R0
  mov R0, 0
  mov [2474], R0
  mov R0, 2
  mov [2475], R0
  mov R0, 0
  mov [2476], R0
  mov R0, 0
  mov [2477], R0
  mov R0, 0
  mov [2478], R0
  mov R0, 0
  mov [2479], R0
  mov R0, 0
  mov [2480], R0
  mov R0, 0
  mov [2481], R0
  mov R0, 0
  mov [2482], R0
  mov R0, 3
  mov [2483], R0
  mov R0, 0
  mov [2484], R0
  mov R0, 0
  mov [2485], R0
  mov R0, 0
  mov [2486], R0
  mov R0, 0
  mov [2487], R0
  mov R0, 0
  mov [2488], R0
  mov R0, 0
  mov [2489], R0
  mov R0, 0
  mov [2490], R0
  mov R0, 3
  mov [2491], R0
  mov R0, 0
  mov [2492], R0
  mov R0, 0
  mov [2493], R0
  mov R0, 0
  mov [2494], R0
  mov R0, 0
  mov [2495], R0
  mov R0, 0
  mov [2496], R0
  mov R0, 0
  mov [2497], R0
  mov R0, 3
  mov [2498], R0
  mov R0, 2
  mov [2499], R0
  mov R0, 0
  mov [2500], R0
  mov R0, 0
  mov [2501], R0
  mov R0, 0
  mov [2502], R0
  mov R0, 0
  mov [2503], R0
  mov R0, 0
  mov [2504], R0
  mov R0, 0
  mov [2505], R0
  mov R0, 0
  mov [2506], R0
  mov R0, 2
  mov [2507], R0
  mov R0, 0
  mov [2508], R0
  mov R0, 0
  mov [2509], R0
  mov R0, 0
  mov [2510], R0
  mov R0, 0
  mov [2511], R0
  mov R0, 0
  mov [2512], R0
  mov R0, 0
  mov [2513], R0
  mov R0, 0
  mov [2514], R0
  mov R0, 3
  mov [2515], R0
  mov R0, 0
  mov [2516], R0
  mov R0, 0
  mov [2517], R0
  mov R0, 0
  mov [2518], R0
  mov R0, 0
  mov [2519], R0
  mov R0, 0
  mov [2520], R0
  mov R0, 0
  mov [2521], R0
  mov R0, 0
  mov [2522], R0
  mov R0, 3
  mov [2523], R0
  mov R0, 0
  mov [2524], R0
  mov R0, 0
  mov [2525], R0
  mov R0, 0
  mov [2526], R0
  mov R0, 0
  mov [2527], R0
  mov R0, 0
  mov [2528], R0
  mov R0, 0
  mov [2529], R0
  mov R0, 3
  mov [2530], R0
  mov R0, 2
  mov [2531], R0
  mov R0, 0
  mov [2532], R0
  mov R0, 0
  mov [2533], R0
  mov R0, 0
  mov [2534], R0
  mov R0, 0
  mov [2535], R0
  mov R0, 0
  mov [2536], R0
  mov R0, 0
  mov [2537], R0
  mov R0, 0
  mov [2538], R0
  mov R0, 2
  mov [2539], R0
  mov R0, 0
  mov [2540], R0
  mov R0, 0
  mov [2541], R0
  mov R0, 0
  mov [2542], R0
  mov R0, 0
  mov [2543], R0
  mov R0, 0
  mov [2544], R0
  mov R0, 0
  mov [2545], R0
  mov R0, 0
  mov [2546], R0
  mov R0, 3
  mov [2547], R0
  mov R0, 0
  mov [2548], R0
  mov R0, 0
  mov [2549], R0
  mov R0, 0
  mov [2550], R0
  mov R0, 0
  mov [2551], R0
  mov R0, 0
  mov [2552], R0
  mov R0, 0
  mov [2553], R0
  mov R0, 0
  mov [2554], R0
  mov R0, 3
  mov [2555], R0
  mov R0, 0
  mov [2556], R0
  mov R0, 0
  mov [2557], R0
  mov R0, 0
  mov [2558], R0
  mov R0, 0
  mov [2559], R0
  mov R0, 0
  mov [2560], R0
  mov R0, 0
  mov [2561], R0
  mov R0, 3
  mov [2562], R0
  mov R0, 2
  mov [2563], R0
  mov R0, 2
  mov [2564], R0
  mov R0, 2
  mov [2565], R0
  mov R0, 2
  mov [2566], R0
  mov R0, 6
  mov [2567], R0
  mov R0, 2
  mov [2568], R0
  mov R0, 2
  mov [2569], R0
  mov R0, 2
  mov [2570], R0
  mov R0, 4
  mov [2571], R0
  mov R0, 4
  mov [2572], R0
  mov R0, 4
  mov [2573], R0
  mov R0, 4
  mov [2574], R0
  mov R0, 4
  mov [2575], R0
  mov R0, 4
  mov [2576], R0
  mov R0, 4
  mov [2577], R0
  mov R0, 4
  mov [2578], R0
  mov R0, 3
  mov [2579], R0
  mov R0, 3
  mov [2580], R0
  mov R0, 3
  mov [2581], R0
  mov R0, 3
  mov [2582], R0
  mov R0, 6
  mov [2583], R0
  mov R0, 3
  mov [2584], R0
  mov R0, 3
  mov [2585], R0
  mov R0, 3
  mov [2586], R0
  mov R0, 4
  mov [2587], R0
  mov R0, 4
  mov [2588], R0
  mov R0, 4
  mov [2589], R0
  mov R0, 4
  mov [2590], R0
  mov R0, 4
  mov [2591], R0
  mov R0, 4
  mov [2592], R0
  mov R0, 4
  mov [2593], R0
  mov R0, 3
  mov [2594], R0
  mov R0, 2
  mov [2595], R0
  mov R0, 0
  mov [2596], R0
  mov R0, 0
  mov [2597], R0
  mov R0, 0
  mov [2598], R0
  mov R0, 0
  mov [2599], R0
  mov R0, 0
  mov [2600], R0
  mov R0, 0
  mov [2601], R0
  mov R0, 0
  mov [2602], R0
  mov R0, 4
  mov [2603], R0
  mov R0, 0
  mov [2604], R0
  mov R0, 0
  mov [2605], R0
  mov R0, 0
  mov [2606], R0
  mov R0, 0
  mov [2607], R0
  mov R0, 0
  mov [2608], R0
  mov R0, 0
  mov [2609], R0
  mov R0, 0
  mov [2610], R0
  mov R0, 3
  mov [2611], R0
  mov R0, 0
  mov [2612], R0
  mov R0, 0
  mov [2613], R0
  mov R0, 0
  mov [2614], R0
  mov R0, 0
  mov [2615], R0
  mov R0, 0
  mov [2616], R0
  mov R0, 0
  mov [2617], R0
  mov R0, 0
  mov [2618], R0
  mov R0, 4
  mov [2619], R0
  mov R0, 0
  mov [2620], R0
  mov R0, 0
  mov [2621], R0
  mov R0, 0
  mov [2622], R0
  mov R0, 0
  mov [2623], R0
  mov R0, 0
  mov [2624], R0
  mov R0, 0
  mov [2625], R0
  mov R0, 4
  mov [2626], R0
  mov R0, 2
  mov [2627], R0
  mov R0, 0
  mov [2628], R0
  mov R0, 0
  mov [2629], R0
  mov R0, 0
  mov [2630], R0
  mov R0, 0
  mov [2631], R0
  mov R0, 0
  mov [2632], R0
  mov R0, 0
  mov [2633], R0
  mov R0, 0
  mov [2634], R0
  mov R0, 4
  mov [2635], R0
  mov R0, 0
  mov [2636], R0
  mov R0, 0
  mov [2637], R0
  mov R0, 0
  mov [2638], R0
  mov R0, 0
  mov [2639], R0
  mov R0, 0
  mov [2640], R0
  mov R0, 0
  mov [2641], R0
  mov R0, 0
  mov [2642], R0
  mov R0, 3
  mov [2643], R0
  mov R0, 0
  mov [2644], R0
  mov R0, 0
  mov [2645], R0
  mov R0, 0
  mov [2646], R0
  mov R0, 0
  mov [2647], R0
  mov R0, 0
  mov [2648], R0
  mov R0, 0
  mov [2649], R0
  mov R0, 0
  mov [2650], R0
  mov R0, 4
  mov [2651], R0
  mov R0, 0
  mov [2652], R0
  mov R0, 0
  mov [2653], R0
  mov R0, 0
  mov [2654], R0
  mov R0, 0
  mov [2655], R0
  mov R0, 0
  mov [2656], R0
  mov R0, 0
  mov [2657], R0
  mov R0, 4
  mov [2658], R0
  mov R0, 2
  mov [2659], R0
  mov R0, 0
  mov [2660], R0
  mov R0, 0
  mov [2661], R0
  mov R0, 0
  mov [2662], R0
  mov R0, 0
  mov [2663], R0
  mov R0, 0
  mov [2664], R0
  mov R0, 0
  mov [2665], R0
  mov R0, 0
  mov [2666], R0
  mov R0, 4
  mov [2667], R0
  mov R0, 0
  mov [2668], R0
  mov R0, 0
  mov [2669], R0
  mov R0, 0
  mov [2670], R0
  mov R0, 0
  mov [2671], R0
  mov R0, 0
  mov [2672], R0
  mov R0, 0
  mov [2673], R0
  mov R0, 0
  mov [2674], R0
  mov R0, 3
  mov [2675], R0
  mov R0, 0
  mov [2676], R0
  mov R0, 0
  mov [2677], R0
  mov R0, 0
  mov [2678], R0
  mov R0, 0
  mov [2679], R0
  mov R0, 0
  mov [2680], R0
  mov R0, 0
  mov [2681], R0
  mov R0, 0
  mov [2682], R0
  mov R0, 4
  mov [2683], R0
  mov R0, 0
  mov [2684], R0
  mov R0, 0
  mov [2685], R0
  mov R0, 0
  mov [2686], R0
  mov R0, 0
  mov [2687], R0
  mov R0, 0
  mov [2688], R0
  mov R0, 0
  mov [2689], R0
  mov R0, 4
  mov [2690], R0
  mov R0, 2
  mov [2691], R0
  mov R0, 0
  mov [2692], R0
  mov R0, 0
  mov [2693], R0
  mov R0, 0
  mov [2694], R0
  mov R0, 0
  mov [2695], R0
  mov R0, 0
  mov [2696], R0
  mov R0, 0
  mov [2697], R0
  mov R0, 0
  mov [2698], R0
  mov R0, 4
  mov [2699], R0
  mov R0, 0
  mov [2700], R0
  mov R0, 0
  mov [2701], R0
  mov R0, 0
  mov [2702], R0
  mov R0, 0
  mov [2703], R0
  mov R0, 0
  mov [2704], R0
  mov R0, 0
  mov [2705], R0
  mov R0, 0
  mov [2706], R0
  mov R0, 3
  mov [2707], R0
  mov R0, 0
  mov [2708], R0
  mov R0, 0
  mov [2709], R0
  mov R0, 0
  mov [2710], R0
  mov R0, 3
  mov [2711], R0
  mov R0, 0
  mov [2712], R0
  mov R0, 0
  mov [2713], R0
  mov R0, 0
  mov [2714], R0
  mov R0, 4
  mov [2715], R0
  mov R0, 0
  mov [2716], R0
  mov R0, 0
  mov [2717], R0
  mov R0, 0
  mov [2718], R0
  mov R0, 0
  mov [2719], R0
  mov R0, 0
  mov [2720], R0
  mov R0, 0
  mov [2721], R0
  mov R0, 4
  mov [2722], R0
  mov R0, 2
  mov [2723], R0
  mov R0, 0
  mov [2724], R0
  mov R0, 0
  mov [2725], R0
  mov R0, 0
  mov [2726], R0
  mov R0, 0
  mov [2727], R0
  mov R0, 0
  mov [2728], R0
  mov R0, 0
  mov [2729], R0
  mov R0, 0
  mov [2730], R0
  mov R0, 4
  mov [2731], R0
  mov R0, 0
  mov [2732], R0
  mov R0, 0
  mov [2733], R0
  mov R0, 0
  mov [2734], R0
  mov R0, 0
  mov [2735], R0
  mov R0, 0
  mov [2736], R0
  mov R0, 0
  mov [2737], R0
  mov R0, 0
  mov [2738], R0
  mov R0, 3
  mov [2739], R0
  mov R0, 0
  mov [2740], R0
  mov R0, 0
  mov [2741], R0
  mov R0, 0
  mov [2742], R0
  mov R0, 0
  mov [2743], R0
  mov R0, 0
  mov [2744], R0
  mov R0, 0
  mov [2745], R0
  mov R0, 0
  mov [2746], R0
  mov R0, 4
  mov [2747], R0
  mov R0, 0
  mov [2748], R0
  mov R0, 0
  mov [2749], R0
  mov R0, 0
  mov [2750], R0
  mov R0, 0
  mov [2751], R0
  mov R0, 0
  mov [2752], R0
  mov R0, 0
  mov [2753], R0
  mov R0, 4
  mov [2754], R0
  mov R0, 2
  mov [2755], R0
  mov R0, 0
  mov [2756], R0
  mov R0, 0
  mov [2757], R0
  mov R0, 0
  mov [2758], R0
  mov R0, 0
  mov [2759], R0
  mov R0, 0
  mov [2760], R0
  mov R0, 0
  mov [2761], R0
  mov R0, 0
  mov [2762], R0
  mov R0, 4
  mov [2763], R0
  mov R0, 0
  mov [2764], R0
  mov R0, 0
  mov [2765], R0
  mov R0, 0
  mov [2766], R0
  mov R0, 0
  mov [2767], R0
  mov R0, 0
  mov [2768], R0
  mov R0, 0
  mov [2769], R0
  mov R0, 0
  mov [2770], R0
  mov R0, 3
  mov [2771], R0
  mov R0, 0
  mov [2772], R0
  mov R0, 0
  mov [2773], R0
  mov R0, 0
  mov [2774], R0
  mov R0, 0
  mov [2775], R0
  mov R0, 0
  mov [2776], R0
  mov R0, 0
  mov [2777], R0
  mov R0, 0
  mov [2778], R0
  mov R0, 4
  mov [2779], R0
  mov R0, 0
  mov [2780], R0
  mov R0, 0
  mov [2781], R0
  mov R0, 0
  mov [2782], R0
  mov R0, 0
  mov [2783], R0
  mov R0, 0
  mov [2784], R0
  mov R0, 0
  mov [2785], R0
  mov R0, 4
  mov [2786], R0
  mov R0, 2
  mov [2787], R0
  mov R0, 0
  mov [2788], R0
  mov R0, 0
  mov [2789], R0
  mov R0, 0
  mov [2790], R0
  mov R0, 0
  mov [2791], R0
  mov R0, 0
  mov [2792], R0
  mov R0, 0
  mov [2793], R0
  mov R0, 0
  mov [2794], R0
  mov R0, 4
  mov [2795], R0
  mov R0, 0
  mov [2796], R0
  mov R0, 0
  mov [2797], R0
  mov R0, 0
  mov [2798], R0
  mov R0, 0
  mov [2799], R0
  mov R0, 0
  mov [2800], R0
  mov R0, 0
  mov [2801], R0
  mov R0, 0
  mov [2802], R0
  mov R0, 3
  mov [2803], R0
  mov R0, 0
  mov [2804], R0
  mov R0, 0
  mov [2805], R0
  mov R0, 0
  mov [2806], R0
  mov R0, 0
  mov [2807], R0
  mov R0, 0
  mov [2808], R0
  mov R0, 0
  mov [2809], R0
  mov R0, 0
  mov [2810], R0
  mov R0, 4
  mov [2811], R0
  mov R0, 0
  mov [2812], R0
  mov R0, 0
  mov [2813], R0
  mov R0, 0
  mov [2814], R0
  mov R0, 0
  mov [2815], R0
  mov R0, 0
  mov [2816], R0
  mov R0, 0
  mov [2817], R0
  mov R0, 4
  mov [2818], R0
  mov R0, 2
  mov [2819], R0
  mov R0, 2
  mov [2820], R0
  mov R0, 2
  mov [2821], R0
  mov R0, 0
  mov [2822], R0
  mov R0, 0
  mov [2823], R0
  mov R0, 0
  mov [2824], R0
  mov R0, 2
  mov [2825], R0
  mov R0, 2
  mov [2826], R0
  mov R0, 2
  mov [2827], R0
  mov R0, 2
  mov [2828], R0
  mov R0, 2
  mov [2829], R0
  mov R0, 2
  mov [2830], R0
  mov R0, 12
  mov [2831], R0
  mov R0, 2
  mov [2832], R0
  mov R0, 2
  mov [2833], R0
  mov R0, 2
  mov [2834], R0
  mov R0, 3
  mov [2835], R0
  mov R0, 3
  mov [2836], R0
  mov R0, 3
  mov [2837], R0
  mov R0, 0
  mov [2838], R0
  mov R0, 0
  mov [2839], R0
  mov R0, 0
  mov [2840], R0
  mov R0, 3
  mov [2841], R0
  mov R0, 3
  mov [2842], R0
  mov R0, 1
  mov [2843], R0
  mov R0, 1
  mov [2844], R0
  mov R0, 1
  mov [2845], R0
  mov R0, 14
  mov [2846], R0
  mov R0, 1
  mov [2847], R0
  mov R0, 1
  mov [2848], R0
  mov R0, 1
  mov [2849], R0
  mov R0, 4
  mov [2850], R0
  mov R0, 2
  mov [2851], R0
  mov R0, 0
  mov [2852], R0
  mov R0, 0
  mov [2853], R0
  mov R0, 0
  mov [2854], R0
  mov R0, 0
  mov [2855], R0
  mov R0, 0
  mov [2856], R0
  mov R0, 0
  mov [2857], R0
  mov R0, 0
  mov [2858], R0
  mov R0, 2
  mov [2859], R0
  mov R0, 0
  mov [2860], R0
  mov R0, 0
  mov [2861], R0
  mov R0, 0
  mov [2862], R0
  mov R0, 0
  mov [2863], R0
  mov R0, 0
  mov [2864], R0
  mov R0, 0
  mov [2865], R0
  mov R0, 0
  mov [2866], R0
  mov R0, 3
  mov [2867], R0
  mov R0, 0
  mov [2868], R0
  mov R0, 0
  mov [2869], R0
  mov R0, 0
  mov [2870], R0
  mov R0, 0
  mov [2871], R0
  mov R0, 0
  mov [2872], R0
  mov R0, 0
  mov [2873], R0
  mov R0, 0
  mov [2874], R0
  mov R0, 1
  mov [2875], R0
  mov R0, 0
  mov [2876], R0
  mov R0, 0
  mov [2877], R0
  mov R0, 0
  mov [2878], R0
  mov R0, 0
  mov [2879], R0
  mov R0, 0
  mov [2880], R0
  mov R0, 0
  mov [2881], R0
  mov R0, 1
  mov [2882], R0
  mov R0, 2
  mov [2883], R0
  mov R0, 0
  mov [2884], R0
  mov R0, 0
  mov [2885], R0
  mov R0, 0
  mov [2886], R0
  mov R0, 0
  mov [2887], R0
  mov R0, 0
  mov [2888], R0
  mov R0, 0
  mov [2889], R0
  mov R0, 0
  mov [2890], R0
  mov R0, 2
  mov [2891], R0
  mov R0, 0
  mov [2892], R0
  mov R0, 0
  mov [2893], R0
  mov R0, 0
  mov [2894], R0
  mov R0, 0
  mov [2895], R0
  mov R0, 0
  mov [2896], R0
  mov R0, 0
  mov [2897], R0
  mov R0, 0
  mov [2898], R0
  mov R0, 3
  mov [2899], R0
  mov R0, 0
  mov [2900], R0
  mov R0, 0
  mov [2901], R0
  mov R0, 0
  mov [2902], R0
  mov R0, 0
  mov [2903], R0
  mov R0, 0
  mov [2904], R0
  mov R0, 0
  mov [2905], R0
  mov R0, 0
  mov [2906], R0
  mov R0, 1
  mov [2907], R0
  mov R0, 0
  mov [2908], R0
  mov R0, 0
  mov [2909], R0
  mov R0, 0
  mov [2910], R0
  mov R0, 0
  mov [2911], R0
  mov R0, 0
  mov [2912], R0
  mov R0, 0
  mov [2913], R0
  mov R0, 1
  mov [2914], R0
  mov R0, 2
  mov [2915], R0
  mov R0, 0
  mov [2916], R0
  mov R0, 0
  mov [2917], R0
  mov R0, 0
  mov [2918], R0
  mov R0, 0
  mov [2919], R0
  mov R0, 0
  mov [2920], R0
  mov R0, 0
  mov [2921], R0
  mov R0, 0
  mov [2922], R0
  mov R0, 6
  mov [2923], R0
  mov R0, 0
  mov [2924], R0
  mov R0, 0
  mov [2925], R0
  mov R0, 0
  mov [2926], R0
  mov R0, 0
  mov [2927], R0
  mov R0, 0
  mov [2928], R0
  mov R0, 0
  mov [2929], R0
  mov R0, 0
  mov [2930], R0
  mov R0, 7
  mov [2931], R0
  mov R0, 0
  mov [2932], R0
  mov R0, 0
  mov [2933], R0
  mov R0, 0
  mov [2934], R0
  mov R0, 0
  mov [2935], R0
  mov R0, 0
  mov [2936], R0
  mov R0, 0
  mov [2937], R0
  mov R0, 0
  mov [2938], R0
  mov R0, 6
  mov [2939], R0
  mov R0, 0
  mov [2940], R0
  mov R0, 0
  mov [2941], R0
  mov R0, 0
  mov [2942], R0
  mov R0, 0
  mov [2943], R0
  mov R0, 0
  mov [2944], R0
  mov R0, 0
  mov [2945], R0
  mov R0, 1
  mov [2946], R0
  mov R0, 2
  mov [2947], R0
  mov R0, 0
  mov [2948], R0
  mov R0, 0
  mov [2949], R0
  mov R0, 0
  mov [2950], R0
  mov R0, 0
  mov [2951], R0
  mov R0, 0
  mov [2952], R0
  mov R0, 0
  mov [2953], R0
  mov R0, 0
  mov [2954], R0
  mov R0, 2
  mov [2955], R0
  mov R0, 0
  mov [2956], R0
  mov R0, 0
  mov [2957], R0
  mov R0, 0
  mov [2958], R0
  mov R0, 0
  mov [2959], R0
  mov R0, 0
  mov [2960], R0
  mov R0, 0
  mov [2961], R0
  mov R0, 0
  mov [2962], R0
  mov R0, 3
  mov [2963], R0
  mov R0, 0
  mov [2964], R0
  mov R0, 0
  mov [2965], R0
  mov R0, 0
  mov [2966], R0
  mov R0, 0
  mov [2967], R0
  mov R0, 0
  mov [2968], R0
  mov R0, 0
  mov [2969], R0
  mov R0, 0
  mov [2970], R0
  mov R0, 1
  mov [2971], R0
  mov R0, 0
  mov [2972], R0
  mov R0, 0
  mov [2973], R0
  mov R0, 0
  mov [2974], R0
  mov R0, 0
  mov [2975], R0
  mov R0, 0
  mov [2976], R0
  mov R0, 0
  mov [2977], R0
  mov R0, 1
  mov [2978], R0
  mov R0, 2
  mov [2979], R0
  mov R0, 0
  mov [2980], R0
  mov R0, 0
  mov [2981], R0
  mov R0, 0
  mov [2982], R0
  mov R0, 0
  mov [2983], R0
  mov R0, 0
  mov [2984], R0
  mov R0, 0
  mov [2985], R0
  mov R0, 0
  mov [2986], R0
  mov R0, 2
  mov [2987], R0
  mov R0, 0
  mov [2988], R0
  mov R0, 0
  mov [2989], R0
  mov R0, 0
  mov [2990], R0
  mov R0, 0
  mov [2991], R0
  mov R0, 0
  mov [2992], R0
  mov R0, 0
  mov [2993], R0
  mov R0, 0
  mov [2994], R0
  mov R0, 3
  mov [2995], R0
  mov R0, 0
  mov [2996], R0
  mov R0, 0
  mov [2997], R0
  mov R0, 0
  mov [2998], R0
  mov R0, 0
  mov [2999], R0
  mov R0, 0
  mov [3000], R0
  mov R0, 0
  mov [3001], R0
  mov R0, 0
  mov [3002], R0
  mov R0, 1
  mov [3003], R0
  mov R0, 0
  mov [3004], R0
  mov R0, 0
  mov [3005], R0
  mov R0, 0
  mov [3006], R0
  mov R0, 0
  mov [3007], R0
  mov R0, 0
  mov [3008], R0
  mov R0, 0
  mov [3009], R0
  mov R0, 1
  mov [3010], R0
  mov R0, 2
  mov [3011], R0
  mov R0, 0
  mov [3012], R0
  mov R0, 0
  mov [3013], R0
  mov R0, 0
  mov [3014], R0
  mov R0, 0
  mov [3015], R0
  mov R0, 0
  mov [3016], R0
  mov R0, 0
  mov [3017], R0
  mov R0, 0
  mov [3018], R0
  mov R0, 2
  mov [3019], R0
  mov R0, 0
  mov [3020], R0
  mov R0, 0
  mov [3021], R0
  mov R0, 0
  mov [3022], R0
  mov R0, 0
  mov [3023], R0
  mov R0, 0
  mov [3024], R0
  mov R0, 0
  mov [3025], R0
  mov R0, 0
  mov [3026], R0
  mov R0, 3
  mov [3027], R0
  mov R0, 0
  mov [3028], R0
  mov R0, 0
  mov [3029], R0
  mov R0, 0
  mov [3030], R0
  mov R0, 0
  mov [3031], R0
  mov R0, 0
  mov [3032], R0
  mov R0, 0
  mov [3033], R0
  mov R0, 0
  mov [3034], R0
  mov R0, 1
  mov [3035], R0
  mov R0, 0
  mov [3036], R0
  mov R0, 0
  mov [3037], R0
  mov R0, 0
  mov [3038], R0
  mov R0, 0
  mov [3039], R0
  mov R0, 0
  mov [3040], R0
  mov R0, 0
  mov [3041], R0
  mov R0, 1
  mov [3042], R0
  mov R0, 2
  mov [3043], R0
  mov R0, 2
  mov [3044], R0
  mov R0, 2
  mov [3045], R0
  mov R0, 2
  mov [3046], R0
  mov R0, 2
  mov [3047], R0
  mov R0, 2
  mov [3048], R0
  mov R0, 2
  mov [3049], R0
  mov R0, 2
  mov [3050], R0
  mov R0, 2
  mov [3051], R0
  mov R0, 2
  mov [3052], R0
  mov R0, 2
  mov [3053], R0
  mov R0, 2
  mov [3054], R0
  mov R0, 2
  mov [3055], R0
  mov R0, 2
  mov [3056], R0
  mov R0, 2
  mov [3057], R0
  mov R0, 2
  mov [3058], R0
  mov R0, 2
  mov [3059], R0
  mov R0, 3
  mov [3060], R0
  mov R0, 3
  mov [3061], R0
  mov R0, 3
  mov [3062], R0
  mov R0, 3
  mov [3063], R0
  mov R0, 3
  mov [3064], R0
  mov R0, 3
  mov [3065], R0
  mov R0, 3
  mov [3066], R0
  mov R0, 3
  mov [3067], R0
  mov R0, 1
  mov [3068], R0
  mov R0, 1
  mov [3069], R0
  mov R0, 1
  mov [3070], R0
  mov R0, 1
  mov [3071], R0
  mov R0, 1
  mov [3072], R0
  mov R0, 1
  mov [3073], R0
  mov R0, 1
  mov [3074], R0
  mov R0, 3
  mov [3075], R0
  mov R0, 3
  mov [3076], R0
  mov R0, 3
  mov [3077], R0
  mov R0, 3
  mov [3078], R0
  mov R0, 3
  mov [3079], R0
  mov R0, 3
  mov [3080], R0
  mov R0, 3
  mov [3081], R0
  mov R0, 3
  mov [3082], R0
  mov R0, 3
  mov [3083], R0
  mov R0, 3
  mov [3084], R0
  mov R0, 3
  mov [3085], R0
  mov R0, 3
  mov [3086], R0
  mov R0, 3
  mov [3087], R0
  mov R0, 3
  mov [3088], R0
  mov R0, 3
  mov [3089], R0
  mov R0, 3
  mov [3090], R0
  mov R0, 1
  mov [3091], R0
  mov R0, 1
  mov [3092], R0
  mov R0, 1
  mov [3093], R0
  mov R0, 1
  mov [3094], R0
  mov R0, 1
  mov [3095], R0
  mov R0, 1
  mov [3096], R0
  mov R0, 1
  mov [3097], R0
  mov R0, 1
  mov [3098], R0
  mov R0, 4
  mov [3099], R0
  mov R0, 4
  mov [3100], R0
  mov R0, 4
  mov [3101], R0
  mov R0, 4
  mov [3102], R0
  mov R0, 4
  mov [3103], R0
  mov R0, 4
  mov [3104], R0
  mov R0, 4
  mov [3105], R0
  mov R0, 4
  mov [3106], R0
  mov R0, 3
  mov [3107], R0
  mov R0, 0
  mov [3108], R0
  mov R0, 0
  mov [3109], R0
  mov R0, 0
  mov [3110], R0
  mov R0, 0
  mov [3111], R0
  mov R0, 0
  mov [3112], R0
  mov R0, 0
  mov [3113], R0
  mov R0, 0
  mov [3114], R0
  mov R0, 3
  mov [3115], R0
  mov R0, 0
  mov [3116], R0
  mov R0, 0
  mov [3117], R0
  mov R0, 0
  mov [3118], R0
  mov R0, 0
  mov [3119], R0
  mov R0, 0
  mov [3120], R0
  mov R0, 0
  mov [3121], R0
  mov R0, 0
  mov [3122], R0
  mov R0, 1
  mov [3123], R0
  mov R0, 0
  mov [3124], R0
  mov R0, 0
  mov [3125], R0
  mov R0, 0
  mov [3126], R0
  mov R0, 0
  mov [3127], R0
  mov R0, 0
  mov [3128], R0
  mov R0, 0
  mov [3129], R0
  mov R0, 0
  mov [3130], R0
  mov R0, 4
  mov [3131], R0
  mov R0, 0
  mov [3132], R0
  mov R0, 0
  mov [3133], R0
  mov R0, 0
  mov [3134], R0
  mov R0, 0
  mov [3135], R0
  mov R0, 0
  mov [3136], R0
  mov R0, 0
  mov [3137], R0
  mov R0, 4
  mov [3138], R0
  mov R0, 3
  mov [3139], R0
  mov R0, 0
  mov [3140], R0
  mov R0, 0
  mov [3141], R0
  mov R0, 0
  mov [3142], R0
  mov R0, 0
  mov [3143], R0
  mov R0, 0
  mov [3144], R0
  mov R0, 0
  mov [3145], R0
  mov R0, 0
  mov [3146], R0
  mov R0, 3
  mov [3147], R0
  mov R0, 0
  mov [3148], R0
  mov R0, 0
  mov [3149], R0
  mov R0, 0
  mov [3150], R0
  mov R0, 0
  mov [3151], R0
  mov R0, 0
  mov [3152], R0
  mov R0, 0
  mov [3153], R0
  mov R0, 0
  mov [3154], R0
  mov R0, 1
  mov [3155], R0
  mov R0, 0
  mov [3156], R0
  mov R0, 0
  mov [3157], R0
  mov R0, 0
  mov [3158], R0
  mov R0, 0
  mov [3159], R0
  mov R0, 0
  mov [3160], R0
  mov R0, 0
  mov [3161], R0
  mov R0, 0
  mov [3162], R0
  mov R0, 4
  mov [3163], R0
  mov R0, 0
  mov [3164], R0
  mov R0, 0
  mov [3165], R0
  mov R0, 0
  mov [3166], R0
  mov R0, 0
  mov [3167], R0
  mov R0, 0
  mov [3168], R0
  mov R0, 0
  mov [3169], R0
  mov R0, 4
  mov [3170], R0
  mov R0, 3
  mov [3171], R0
  mov R0, 0
  mov [3172], R0
  mov R0, 0
  mov [3173], R0
  mov R0, 0
  mov [3174], R0
  mov R0, 0
  mov [3175], R0
  mov R0, 0
  mov [3176], R0
  mov R0, 0
  mov [3177], R0
  mov R0, 0
  mov [3178], R0
  mov R0, 3
  mov [3179], R0
  mov R0, 0
  mov [3180], R0
  mov R0, 0
  mov [3181], R0
  mov R0, 0
  mov [3182], R0
  mov R0, 0
  mov [3183], R0
  mov R0, 0
  mov [3184], R0
  mov R0, 0
  mov [3185], R0
  mov R0, 0
  mov [3186], R0
  mov R0, 0
  mov [3187], R0
  mov R0, 0
  mov [3188], R0
  mov R0, 0
  mov [3189], R0
  mov R0, 0
  mov [3190], R0
  mov R0, 0
  mov [3191], R0
  mov R0, 0
  mov [3192], R0
  mov R0, 0
  mov [3193], R0
  mov R0, 0
  mov [3194], R0
  mov R0, 4
  mov [3195], R0
  mov R0, 0
  mov [3196], R0
  mov R0, 0
  mov [3197], R0
  mov R0, 0
  mov [3198], R0
  mov R0, 0
  mov [3199], R0
  mov R0, 0
  mov [3200], R0
  mov R0, 0
  mov [3201], R0
  mov R0, 4
  mov [3202], R0
  mov R0, 3
  mov [3203], R0
  mov R0, 0
  mov [3204], R0
  mov R0, 0
  mov [3205], R0
  mov R0, 0
  mov [3206], R0
  mov R0, 0
  mov [3207], R0
  mov R0, 0
  mov [3208], R0
  mov R0, 0
  mov [3209], R0
  mov R0, 0
  mov [3210], R0
  mov R0, 6
  mov [3211], R0
  mov R0, 0
  mov [3212], R0
  mov R0, 0
  mov [3213], R0
  mov R0, 0
  mov [3214], R0
  mov R0, 0
  mov [3215], R0
  mov R0, 0
  mov [3216], R0
  mov R0, 0
  mov [3217], R0
  mov R0, 0
  mov [3218], R0
  mov R0, 0
  mov [3219], R0
  mov R0, 0
  mov [3220], R0
  mov R0, 0
  mov [3221], R0
  mov R0, 0
  mov [3222], R0
  mov R0, 0
  mov [3223], R0
  mov R0, 0
  mov [3224], R0
  mov R0, 0
  mov [3225], R0
  mov R0, 0
  mov [3226], R0
  mov R0, 7
  mov [3227], R0
  mov R0, 0
  mov [3228], R0
  mov R0, 0
  mov [3229], R0
  mov R0, 0
  mov [3230], R0
  mov R0, 0
  mov [3231], R0
  mov R0, 0
  mov [3232], R0
  mov R0, 0
  mov [3233], R0
  mov R0, 4
  mov [3234], R0
  mov R0, 3
  mov [3235], R0
  mov R0, 0
  mov [3236], R0
  mov R0, 0
  mov [3237], R0
  mov R0, 0
  mov [3238], R0
  mov R0, 0
  mov [3239], R0
  mov R0, 0
  mov [3240], R0
  mov R0, 0
  mov [3241], R0
  mov R0, 0
  mov [3242], R0
  mov R0, 3
  mov [3243], R0
  mov R0, 0
  mov [3244], R0
  mov R0, 0
  mov [3245], R0
  mov R0, 0
  mov [3246], R0
  mov R0, 0
  mov [3247], R0
  mov R0, 0
  mov [3248], R0
  mov R0, 0
  mov [3249], R0
  mov R0, 0
  mov [3250], R0
  mov R0, 0
  mov [3251], R0
  mov R0, 0
  mov [3252], R0
  mov R0, 0
  mov [3253], R0
  mov R0, 0
  mov [3254], R0
  mov R0, 0
  mov [3255], R0
  mov R0, 0
  mov [3256], R0
  mov R0, 0
  mov [3257], R0
  mov R0, 0
  mov [3258], R0
  mov R0, 4
  mov [3259], R0
  mov R0, 0
  mov [3260], R0
  mov R0, 0
  mov [3261], R0
  mov R0, 0
  mov [3262], R0
  mov R0, 0
  mov [3263], R0
  mov R0, 0
  mov [3264], R0
  mov R0, 0
  mov [3265], R0
  mov R0, 4
  mov [3266], R0
  mov R0, 3
  mov [3267], R0
  mov R0, 0
  mov [3268], R0
  mov R0, 0
  mov [3269], R0
  mov R0, 0
  mov [3270], R0
  mov R0, 0
  mov [3271], R0
  mov R0, 0
  mov [3272], R0
  mov R0, 0
  mov [3273], R0
  mov R0, 0
  mov [3274], R0
  mov R0, 3
  mov [3275], R0
  mov R0, 0
  mov [3276], R0
  mov R0, 0
  mov [3277], R0
  mov R0, 0
  mov [3278], R0
  mov R0, 0
  mov [3279], R0
  mov R0, 0
  mov [3280], R0
  mov R0, 0
  mov [3281], R0
  mov R0, 0
  mov [3282], R0
  mov R0, 1
  mov [3283], R0
  mov R0, 0
  mov [3284], R0
  mov R0, 0
  mov [3285], R0
  mov R0, 0
  mov [3286], R0
  mov R0, 0
  mov [3287], R0
  mov R0, 0
  mov [3288], R0
  mov R0, 0
  mov [3289], R0
  mov R0, 0
  mov [3290], R0
  mov R0, 4
  mov [3291], R0
  mov R0, 0
  mov [3292], R0
  mov R0, 0
  mov [3293], R0
  mov R0, 0
  mov [3294], R0
  mov R0, 0
  mov [3295], R0
  mov R0, 0
  mov [3296], R0
  mov R0, 0
  mov [3297], R0
  mov R0, 4
  mov [3298], R0
  mov R0, 3
  mov [3299], R0
  mov R0, 0
  mov [3300], R0
  mov R0, 0
  mov [3301], R0
  mov R0, 0
  mov [3302], R0
  mov R0, 0
  mov [3303], R0
  mov R0, 0
  mov [3304], R0
  mov R0, 0
  mov [3305], R0
  mov R0, 0
  mov [3306], R0
  mov R0, 3
  mov [3307], R0
  mov R0, 0
  mov [3308], R0
  mov R0, 0
  mov [3309], R0
  mov R0, 0
  mov [3310], R0
  mov R0, 0
  mov [3311], R0
  mov R0, 0
  mov [3312], R0
  mov R0, 0
  mov [3313], R0
  mov R0, 0
  mov [3314], R0
  mov R0, 1
  mov [3315], R0
  mov R0, 0
  mov [3316], R0
  mov R0, 0
  mov [3317], R0
  mov R0, 0
  mov [3318], R0
  mov R0, 0
  mov [3319], R0
  mov R0, 0
  mov [3320], R0
  mov R0, 0
  mov [3321], R0
  mov R0, 0
  mov [3322], R0
  mov R0, 4
  mov [3323], R0
  mov R0, 0
  mov [3324], R0
  mov R0, 0
  mov [3325], R0
  mov R0, 0
  mov [3326], R0
  mov R0, 0
  mov [3327], R0
  mov R0, 0
  mov [3328], R0
  mov R0, 0
  mov [3329], R0
  mov R0, 4
  mov [3330], R0
  mov R0, 2
  mov [3331], R0
  mov R0, 2
  mov [3332], R0
  mov R0, 2
  mov [3333], R0
  mov R0, 3
  mov [3334], R0
  mov R0, 6
  mov [3335], R0
  mov R0, 3
  mov [3336], R0
  mov R0, 2
  mov [3337], R0
  mov R0, 2
  mov [3338], R0
  mov R0, 2
  mov [3339], R0
  mov R0, 2
  mov [3340], R0
  mov R0, 2
  mov [3341], R0
  mov R0, 3
  mov [3342], R0
  mov R0, 6
  mov [3343], R0
  mov R0, 3
  mov [3344], R0
  mov R0, 2
  mov [3345], R0
  mov R0, 2
  mov [3346], R0
  mov R0, 4
  mov [3347], R0
  mov R0, 4
  mov [3348], R0
  mov R0, 4
  mov [3349], R0
  mov R0, 4
  mov [3350], R0
  mov R0, 4
  mov [3351], R0
  mov R0, 4
  mov [3352], R0
  mov R0, 4
  mov [3353], R0
  mov R0, 4
  mov [3354], R0
  mov R0, 4
  mov [3355], R0
  mov R0, 4
  mov [3356], R0
  mov R0, 4
  mov [3357], R0
  mov R0, 6
  mov [3358], R0
  mov R0, 4
  mov [3359], R0
  mov R0, 4
  mov [3360], R0
  mov R0, 4
  mov [3361], R0
  mov R0, 4
  mov [3362], R0
  mov R0, 2
  mov [3363], R0
  mov R0, 0
  mov [3364], R0
  mov R0, 0
  mov [3365], R0
  mov R0, 0
  mov [3366], R0
  mov R0, 0
  mov [3367], R0
  mov R0, 0
  mov [3368], R0
  mov R0, 0
  mov [3369], R0
  mov R0, 0
  mov [3370], R0
  mov R0, 0
  mov [3371], R0
  mov R0, 0
  mov [3372], R0
  mov R0, 0
  mov [3373], R0
  mov R0, 0
  mov [3374], R0
  mov R0, 0
  mov [3375], R0
  mov R0, 0
  mov [3376], R0
  mov R0, 0
  mov [3377], R0
  mov R0, 0
  mov [3378], R0
  mov R0, 4
  mov [3379], R0
  mov R0, 0
  mov [3380], R0
  mov R0, 0
  mov [3381], R0
  mov R0, 0
  mov [3382], R0
  mov R0, 0
  mov [3383], R0
  mov R0, 0
  mov [3384], R0
  mov R0, 0
  mov [3385], R0
  mov R0, 0
  mov [3386], R0
  mov R0, 4
  mov [3387], R0
  mov R0, 0
  mov [3388], R0
  mov R0, 0
  mov [3389], R0
  mov R0, 0
  mov [3390], R0
  mov R0, 0
  mov [3391], R0
  mov R0, 0
  mov [3392], R0
  mov R0, 0
  mov [3393], R0
  mov R0, 4
  mov [3394], R0
  mov R0, 2
  mov [3395], R0
  mov R0, 0
  mov [3396], R0
  mov R0, 0
  mov [3397], R0
  mov R0, 0
  mov [3398], R0
  mov R0, 0
  mov [3399], R0
  mov R0, 0
  mov [3400], R0
  mov R0, 0
  mov [3401], R0
  mov R0, 0
  mov [3402], R0
  mov R0, 0
  mov [3403], R0
  mov R0, 0
  mov [3404], R0
  mov R0, 0
  mov [3405], R0
  mov R0, 0
  mov [3406], R0
  mov R0, 0
  mov [3407], R0
  mov R0, 0
  mov [3408], R0
  mov R0, 0
  mov [3409], R0
  mov R0, 0
  mov [3410], R0
  mov R0, 4
  mov [3411], R0
  mov R0, 0
  mov [3412], R0
  mov R0, 0
  mov [3413], R0
  mov R0, 0
  mov [3414], R0
  mov R0, 0
  mov [3415], R0
  mov R0, 0
  mov [3416], R0
  mov R0, 0
  mov [3417], R0
  mov R0, 0
  mov [3418], R0
  mov R0, 4
  mov [3419], R0
  mov R0, 0
  mov [3420], R0
  mov R0, 0
  mov [3421], R0
  mov R0, 0
  mov [3422], R0
  mov R0, 0
  mov [3423], R0
  mov R0, 0
  mov [3424], R0
  mov R0, 0
  mov [3425], R0
  mov R0, 4
  mov [3426], R0
  mov R0, 2
  mov [3427], R0
  mov R0, 0
  mov [3428], R0
  mov R0, 0
  mov [3429], R0
  mov R0, 0
  mov [3430], R0
  mov R0, 0
  mov [3431], R0
  mov R0, 0
  mov [3432], R0
  mov R0, 0
  mov [3433], R0
  mov R0, 0
  mov [3434], R0
  mov R0, 0
  mov [3435], R0
  mov R0, 0
  mov [3436], R0
  mov R0, 0
  mov [3437], R0
  mov R0, 0
  mov [3438], R0
  mov R0, 0
  mov [3439], R0
  mov R0, 0
  mov [3440], R0
  mov R0, 0
  mov [3441], R0
  mov R0, 0
  mov [3442], R0
  mov R0, 4
  mov [3443], R0
  mov R0, 0
  mov [3444], R0
  mov R0, 0
  mov [3445], R0
  mov R0, 0
  mov [3446], R0
  mov R0, 0
  mov [3447], R0
  mov R0, 0
  mov [3448], R0
  mov R0, 0
  mov [3449], R0
  mov R0, 0
  mov [3450], R0
  mov R0, 4
  mov [3451], R0
  mov R0, 0
  mov [3452], R0
  mov R0, 0
  mov [3453], R0
  mov R0, 0
  mov [3454], R0
  mov R0, 0
  mov [3455], R0
  mov R0, 0
  mov [3456], R0
  mov R0, 0
  mov [3457], R0
  mov R0, 4
  mov [3458], R0
  mov R0, 2
  mov [3459], R0
  mov R0, 0
  mov [3460], R0
  mov R0, 0
  mov [3461], R0
  mov R0, 0
  mov [3462], R0
  mov R0, 0
  mov [3463], R0
  mov R0, 0
  mov [3464], R0
  mov R0, 0
  mov [3465], R0
  mov R0, 0
  mov [3466], R0
  mov R0, 0
  mov [3467], R0
  mov R0, 0
  mov [3468], R0
  mov R0, 0
  mov [3469], R0
  mov R0, 0
  mov [3470], R0
  mov R0, 0
  mov [3471], R0
  mov R0, 0
  mov [3472], R0
  mov R0, 0
  mov [3473], R0
  mov R0, 0
  mov [3474], R0
  mov R0, 12
  mov [3475], R0
  mov R0, 0
  mov [3476], R0
  mov R0, 0
  mov [3477], R0
  mov R0, 0
  mov [3478], R0
  mov R0, 0
  mov [3479], R0
  mov R0, 0
  mov [3480], R0
  mov R0, 0
  mov [3481], R0
  mov R0, 0
  mov [3482], R0
  mov R0, 4
  mov [3483], R0
  mov R0, 0
  mov [3484], R0
  mov R0, 0
  mov [3485], R0
  mov R0, 0
  mov [3486], R0
  mov R0, 0
  mov [3487], R0
  mov R0, 0
  mov [3488], R0
  mov R0, 0
  mov [3489], R0
  mov R0, 4
  mov [3490], R0
  mov R0, 2
  mov [3491], R0
  mov R0, 0
  mov [3492], R0
  mov R0, 0
  mov [3493], R0
  mov R0, 0
  mov [3494], R0
  mov R0, 0
  mov [3495], R0
  mov R0, 0
  mov [3496], R0
  mov R0, 0
  mov [3497], R0
  mov R0, 0
  mov [3498], R0
  mov R0, 0
  mov [3499], R0
  mov R0, 0
  mov [3500], R0
  mov R0, 0
  mov [3501], R0
  mov R0, 0
  mov [3502], R0
  mov R0, 0
  mov [3503], R0
  mov R0, 0
  mov [3504], R0
  mov R0, 0
  mov [3505], R0
  mov R0, 0
  mov [3506], R0
  mov R0, 4
  mov [3507], R0
  mov R0, 0
  mov [3508], R0
  mov R0, 0
  mov [3509], R0
  mov R0, 0
  mov [3510], R0
  mov R0, 0
  mov [3511], R0
  mov R0, 0
  mov [3512], R0
  mov R0, 0
  mov [3513], R0
  mov R0, 0
  mov [3514], R0
  mov R0, 4
  mov [3515], R0
  mov R0, 0
  mov [3516], R0
  mov R0, 0
  mov [3517], R0
  mov R0, 0
  mov [3518], R0
  mov R0, 0
  mov [3519], R0
  mov R0, 0
  mov [3520], R0
  mov R0, 0
  mov [3521], R0
  mov R0, 4
  mov [3522], R0
  mov R0, 2
  mov [3523], R0
  mov R0, 0
  mov [3524], R0
  mov R0, 0
  mov [3525], R0
  mov R0, 0
  mov [3526], R0
  mov R0, 0
  mov [3527], R0
  mov R0, 0
  mov [3528], R0
  mov R0, 0
  mov [3529], R0
  mov R0, 0
  mov [3530], R0
  mov R0, 0
  mov [3531], R0
  mov R0, 0
  mov [3532], R0
  mov R0, 0
  mov [3533], R0
  mov R0, 0
  mov [3534], R0
  mov R0, 0
  mov [3535], R0
  mov R0, 0
  mov [3536], R0
  mov R0, 0
  mov [3537], R0
  mov R0, 0
  mov [3538], R0
  mov R0, 4
  mov [3539], R0
  mov R0, 0
  mov [3540], R0
  mov R0, 0
  mov [3541], R0
  mov R0, 0
  mov [3542], R0
  mov R0, 0
  mov [3543], R0
  mov R0, 0
  mov [3544], R0
  mov R0, 0
  mov [3545], R0
  mov R0, 0
  mov [3546], R0
  mov R0, 4
  mov [3547], R0
  mov R0, 0
  mov [3548], R0
  mov R0, 0
  mov [3549], R0
  mov R0, 0
  mov [3550], R0
  mov R0, 0
  mov [3551], R0
  mov R0, 0
  mov [3552], R0
  mov R0, 0
  mov [3553], R0
  mov R0, 4
  mov [3554], R0
  mov R0, 2
  mov [3555], R0
  mov R0, 0
  mov [3556], R0
  mov R0, 0
  mov [3557], R0
  mov R0, 0
  mov [3558], R0
  mov R0, 0
  mov [3559], R0
  mov R0, 0
  mov [3560], R0
  mov R0, 0
  mov [3561], R0
  mov R0, 0
  mov [3562], R0
  mov R0, 0
  mov [3563], R0
  mov R0, 0
  mov [3564], R0
  mov R0, 0
  mov [3565], R0
  mov R0, 0
  mov [3566], R0
  mov R0, 0
  mov [3567], R0
  mov R0, 0
  mov [3568], R0
  mov R0, 0
  mov [3569], R0
  mov R0, 0
  mov [3570], R0
  mov R0, 4
  mov [3571], R0
  mov R0, 0
  mov [3572], R0
  mov R0, 0
  mov [3573], R0
  mov R0, 0
  mov [3574], R0
  mov R0, 0
  mov [3575], R0
  mov R0, 0
  mov [3576], R0
  mov R0, 0
  mov [3577], R0
  mov R0, 0
  mov [3578], R0
  mov R0, 4
  mov [3579], R0
  mov R0, 0
  mov [3580], R0
  mov R0, 0
  mov [3581], R0
  mov R0, 0
  mov [3582], R0
  mov R0, 0
  mov [3583], R0
  mov R0, 0
  mov [3584], R0
  mov R0, 0
  mov [3585], R0
  mov R0, 4
  mov [3586], R0
  mov R0, 1
  mov [3587], R0
  mov R0, 1
  mov [3588], R0
  mov R0, 1
  mov [3589], R0
  mov R0, 2
  mov [3590], R0
  mov R0, 6
  mov [3591], R0
  mov R0, 2
  mov [3592], R0
  mov R0, 1
  mov [3593], R0
  mov R0, 1
  mov [3594], R0
  mov R0, 1
  mov [3595], R0
  mov R0, 1
  mov [3596], R0
  mov R0, 1
  mov [3597], R0
  mov R0, 1
  mov [3598], R0
  mov R0, 1
  mov [3599], R0
  mov R0, 1
  mov [3600], R0
  mov R0, 1
  mov [3601], R0
  mov R0, 1
  mov [3602], R0
  mov R0, 3
  mov [3603], R0
  mov R0, 3
  mov [3604], R0
  mov R0, 3
  mov [3605], R0
  mov R0, 3
  mov [3606], R0
  mov R0, 3
  mov [3607], R0
  mov R0, 3
  mov [3608], R0
  mov R0, 3
  mov [3609], R0
  mov R0, 3
  mov [3610], R0
  mov R0, 3
  mov [3611], R0
  mov R0, 3
  mov [3612], R0
  mov R0, 3
  mov [3613], R0
  mov R0, 3
  mov [3614], R0
  mov R0, 3
  mov [3615], R0
  mov R0, 3
  mov [3616], R0
  mov R0, 3
  mov [3617], R0
  mov R0, 4
  mov [3618], R0
  mov R0, 1
  mov [3619], R0
  mov R0, 0
  mov [3620], R0
  mov R0, 0
  mov [3621], R0
  mov R0, 0
  mov [3622], R0
  mov R0, 0
  mov [3623], R0
  mov R0, 0
  mov [3624], R0
  mov R0, 0
  mov [3625], R0
  mov R0, 0
  mov [3626], R0
  mov R0, 0
  mov [3627], R0
  mov R0, 0
  mov [3628], R0
  mov R0, 0
  mov [3629], R0
  mov R0, 0
  mov [3630], R0
  mov R0, 0
  mov [3631], R0
  mov R0, 0
  mov [3632], R0
  mov R0, 0
  mov [3633], R0
  mov R0, 0
  mov [3634], R0
  mov R0, 3
  mov [3635], R0
  mov R0, 0
  mov [3636], R0
  mov R0, 0
  mov [3637], R0
  mov R0, 0
  mov [3638], R0
  mov R0, 0
  mov [3639], R0
  mov R0, 0
  mov [3640], R0
  mov R0, 0
  mov [3641], R0
  mov R0, 0
  mov [3642], R0
  mov R0, 0
  mov [3643], R0
  mov R0, 0
  mov [3644], R0
  mov R0, 0
  mov [3645], R0
  mov R0, 0
  mov [3646], R0
  mov R0, 0
  mov [3647], R0
  mov R0, 0
  mov [3648], R0
  mov R0, 0
  mov [3649], R0
  mov R0, 3
  mov [3650], R0
  mov R0, 1
  mov [3651], R0
  mov R0, 0
  mov [3652], R0
  mov R0, 0
  mov [3653], R0
  mov R0, 0
  mov [3654], R0
  mov R0, 0
  mov [3655], R0
  mov R0, 0
  mov [3656], R0
  mov R0, 0
  mov [3657], R0
  mov R0, 0
  mov [3658], R0
  mov R0, 0
  mov [3659], R0
  mov R0, 0
  mov [3660], R0
  mov R0, 0
  mov [3661], R0
  mov R0, 0
  mov [3662], R0
  mov R0, 0
  mov [3663], R0
  mov R0, 0
  mov [3664], R0
  mov R0, 0
  mov [3665], R0
  mov R0, 0
  mov [3666], R0
  mov R0, 3
  mov [3667], R0
  mov R0, 0
  mov [3668], R0
  mov R0, 0
  mov [3669], R0
  mov R0, 0
  mov [3670], R0
  mov R0, 0
  mov [3671], R0
  mov R0, 0
  mov [3672], R0
  mov R0, 0
  mov [3673], R0
  mov R0, 0
  mov [3674], R0
  mov R0, 0
  mov [3675], R0
  mov R0, 0
  mov [3676], R0
  mov R0, 0
  mov [3677], R0
  mov R0, 0
  mov [3678], R0
  mov R0, 0
  mov [3679], R0
  mov R0, 0
  mov [3680], R0
  mov R0, 0
  mov [3681], R0
  mov R0, 3
  mov [3682], R0
  mov R0, 1
  mov [3683], R0
  mov R0, 0
  mov [3684], R0
  mov R0, 0
  mov [3685], R0
  mov R0, 0
  mov [3686], R0
  mov R0, 0
  mov [3687], R0
  mov R0, 0
  mov [3688], R0
  mov R0, 0
  mov [3689], R0
  mov R0, 0
  mov [3690], R0
  mov R0, 0
  mov [3691], R0
  mov R0, 0
  mov [3692], R0
  mov R0, 0
  mov [3693], R0
  mov R0, 0
  mov [3694], R0
  mov R0, 0
  mov [3695], R0
  mov R0, 0
  mov [3696], R0
  mov R0, 0
  mov [3697], R0
  mov R0, 0
  mov [3698], R0
  mov R0, 3
  mov [3699], R0
  mov R0, 0
  mov [3700], R0
  mov R0, 0
  mov [3701], R0
  mov R0, 0
  mov [3702], R0
  mov R0, 0
  mov [3703], R0
  mov R0, 0
  mov [3704], R0
  mov R0, 0
  mov [3705], R0
  mov R0, 0
  mov [3706], R0
  mov R0, 0
  mov [3707], R0
  mov R0, 0
  mov [3708], R0
  mov R0, 0
  mov [3709], R0
  mov R0, 0
  mov [3710], R0
  mov R0, 0
  mov [3711], R0
  mov R0, 0
  mov [3712], R0
  mov R0, 0
  mov [3713], R0
  mov R0, 3
  mov [3714], R0
  mov R0, 1
  mov [3715], R0
  mov R0, 0
  mov [3716], R0
  mov R0, 0
  mov [3717], R0
  mov R0, 0
  mov [3718], R0
  mov R0, 0
  mov [3719], R0
  mov R0, 0
  mov [3720], R0
  mov R0, 0
  mov [3721], R0
  mov R0, 0
  mov [3722], R0
  mov R0, 0
  mov [3723], R0
  mov R0, 0
  mov [3724], R0
  mov R0, 0
  mov [3725], R0
  mov R0, 0
  mov [3726], R0
  mov R0, 0
  mov [3727], R0
  mov R0, 0
  mov [3728], R0
  mov R0, 0
  mov [3729], R0
  mov R0, 0
  mov [3730], R0
  mov R0, 8
  mov [3731], R0
  mov R0, 0
  mov [3732], R0
  mov R0, 0
  mov [3733], R0
  mov R0, 0
  mov [3734], R0
  mov R0, 3
  mov [3735], R0
  mov R0, 0
  mov [3736], R0
  mov R0, 0
  mov [3737], R0
  mov R0, 0
  mov [3738], R0
  mov R0, 0
  mov [3739], R0
  mov R0, 0
  mov [3740], R0
  mov R0, 0
  mov [3741], R0
  mov R0, 3
  mov [3742], R0
  mov R0, 0
  mov [3743], R0
  mov R0, 0
  mov [3744], R0
  mov R0, 0
  mov [3745], R0
  mov R0, 3
  mov [3746], R0
  mov R0, 1
  mov [3747], R0
  mov R0, 0
  mov [3748], R0
  mov R0, 0
  mov [3749], R0
  mov R0, 0
  mov [3750], R0
  mov R0, 0
  mov [3751], R0
  mov R0, 0
  mov [3752], R0
  mov R0, 0
  mov [3753], R0
  mov R0, 0
  mov [3754], R0
  mov R0, 0
  mov [3755], R0
  mov R0, 0
  mov [3756], R0
  mov R0, 0
  mov [3757], R0
  mov R0, 0
  mov [3758], R0
  mov R0, 0
  mov [3759], R0
  mov R0, 0
  mov [3760], R0
  mov R0, 0
  mov [3761], R0
  mov R0, 0
  mov [3762], R0
  mov R0, 3
  mov [3763], R0
  mov R0, 0
  mov [3764], R0
  mov R0, 0
  mov [3765], R0
  mov R0, 0
  mov [3766], R0
  mov R0, 0
  mov [3767], R0
  mov R0, 0
  mov [3768], R0
  mov R0, 0
  mov [3769], R0
  mov R0, 0
  mov [3770], R0
  mov R0, 0
  mov [3771], R0
  mov R0, 0
  mov [3772], R0
  mov R0, 0
  mov [3773], R0
  mov R0, 0
  mov [3774], R0
  mov R0, 0
  mov [3775], R0
  mov R0, 0
  mov [3776], R0
  mov R0, 0
  mov [3777], R0
  mov R0, 3
  mov [3778], R0
  mov R0, 1
  mov [3779], R0
  mov R0, 0
  mov [3780], R0
  mov R0, 0
  mov [3781], R0
  mov R0, 0
  mov [3782], R0
  mov R0, 0
  mov [3783], R0
  mov R0, 0
  mov [3784], R0
  mov R0, 0
  mov [3785], R0
  mov R0, 0
  mov [3786], R0
  mov R0, 0
  mov [3787], R0
  mov R0, 0
  mov [3788], R0
  mov R0, 0
  mov [3789], R0
  mov R0, 0
  mov [3790], R0
  mov R0, 0
  mov [3791], R0
  mov R0, 0
  mov [3792], R0
  mov R0, 0
  mov [3793], R0
  mov R0, 0
  mov [3794], R0
  mov R0, 3
  mov [3795], R0
  mov R0, 0
  mov [3796], R0
  mov R0, 0
  mov [3797], R0
  mov R0, 0
  mov [3798], R0
  mov R0, 0
  mov [3799], R0
  mov R0, 0
  mov [3800], R0
  mov R0, 0
  mov [3801], R0
  mov R0, 0
  mov [3802], R0
  mov R0, 0
  mov [3803], R0
  mov R0, 0
  mov [3804], R0
  mov R0, 0
  mov [3805], R0
  mov R0, 0
  mov [3806], R0
  mov R0, 0
  mov [3807], R0
  mov R0, 0
  mov [3808], R0
  mov R0, 0
  mov [3809], R0
  mov R0, 3
  mov [3810], R0
  mov R0, 1
  mov [3811], R0
  mov R0, 0
  mov [3812], R0
  mov R0, 0
  mov [3813], R0
  mov R0, 0
  mov [3814], R0
  mov R0, 0
  mov [3815], R0
  mov R0, 0
  mov [3816], R0
  mov R0, 0
  mov [3817], R0
  mov R0, 0
  mov [3818], R0
  mov R0, 0
  mov [3819], R0
  mov R0, 0
  mov [3820], R0
  mov R0, 0
  mov [3821], R0
  mov R0, 0
  mov [3822], R0
  mov R0, 0
  mov [3823], R0
  mov R0, 0
  mov [3824], R0
  mov R0, 0
  mov [3825], R0
  mov R0, 0
  mov [3826], R0
  mov R0, 3
  mov [3827], R0
  mov R0, 0
  mov [3828], R0
  mov R0, 0
  mov [3829], R0
  mov R0, 0
  mov [3830], R0
  mov R0, 0
  mov [3831], R0
  mov R0, 0
  mov [3832], R0
  mov R0, 0
  mov [3833], R0
  mov R0, 0
  mov [3834], R0
  mov R0, 0
  mov [3835], R0
  mov R0, 0
  mov [3836], R0
  mov R0, 0
  mov [3837], R0
  mov R0, 0
  mov [3838], R0
  mov R0, 0
  mov [3839], R0
  mov R0, 0
  mov [3840], R0
  mov R0, 0
  mov [3841], R0
  mov R0, 3
  mov [3842], R0
  mov R0, 2
  mov [3843], R0
  mov R0, 2
  mov [3844], R0
  mov R0, 1
  mov [3845], R0
  mov R0, 0
  mov [3846], R0
  mov R0, 0
  mov [3847], R0
  mov R0, 0
  mov [3848], R0
  mov R0, 1
  mov [3849], R0
  mov R0, 2
  mov [3850], R0
  mov R0, 1
  mov [3851], R0
  mov R0, 4
  mov [3852], R0
  mov R0, 4
  mov [3853], R0
  mov R0, 4
  mov [3854], R0
  mov R0, 4
  mov [3855], R0
  mov R0, 4
  mov [3856], R0
  mov R0, 4
  mov [3857], R0
  mov R0, 4
  mov [3858], R0
  mov R0, 3
  mov [3859], R0
  mov R0, 0
  mov [3860], R0
  mov R0, 0
  mov [3861], R0
  mov R0, 0
  mov [3862], R0
  mov R0, 0
  mov [3863], R0
  mov R0, 0
  mov [3864], R0
  mov R0, 0
  mov [3865], R0
  mov R0, 0
  mov [3866], R0
  mov R0, 3
  mov [3867], R0
  mov R0, 0
  mov [3868], R0
  mov R0, 0
  mov [3869], R0
  mov R0, 0
  mov [3870], R0
  mov R0, 0
  mov [3871], R0
  mov R0, 0
  mov [3872], R0
  mov R0, 0
  mov [3873], R0
  mov R0, 3
  mov [3874], R0
  mov R0, 2
  mov [3875], R0
  mov R0, 0
  mov [3876], R0
  mov R0, 0
  mov [3877], R0
  mov R0, 0
  mov [3878], R0
  mov R0, 0
  mov [3879], R0
  mov R0, 0
  mov [3880], R0
  mov R0, 0
  mov [3881], R0
  mov R0, 0
  mov [3882], R0
  mov R0, 4
  mov [3883], R0
  mov R0, 0
  mov [3884], R0
  mov R0, 0
  mov [3885], R0
  mov R0, 0
  mov [3886], R0
  mov R0, 0
  mov [3887], R0
  mov R0, 0
  mov [3888], R0
  mov R0, 0
  mov [3889], R0
  mov R0, 0
  mov [3890], R0
  mov R0, 3
  mov [3891], R0
  mov R0, 0
  mov [3892], R0
  mov R0, 0
  mov [3893], R0
  mov R0, 0
  mov [3894], R0
  mov R0, 0
  mov [3895], R0
  mov R0, 0
  mov [3896], R0
  mov R0, 0
  mov [3897], R0
  mov R0, 0
  mov [3898], R0
  mov R0, 0
  mov [3899], R0
  mov R0, 0
  mov [3900], R0
  mov R0, 0
  mov [3901], R0
  mov R0, 0
  mov [3902], R0
  mov R0, 0
  mov [3903], R0
  mov R0, 0
  mov [3904], R0
  mov R0, 0
  mov [3905], R0
  mov R0, 3
  mov [3906], R0
  mov R0, 2
  mov [3907], R0
  mov R0, 0
  mov [3908], R0
  mov R0, 0
  mov [3909], R0
  mov R0, 0
  mov [3910], R0
  mov R0, 0
  mov [3911], R0
  mov R0, 0
  mov [3912], R0
  mov R0, 0
  mov [3913], R0
  mov R0, 0
  mov [3914], R0
  mov R0, 4
  mov [3915], R0
  mov R0, 0
  mov [3916], R0
  mov R0, 0
  mov [3917], R0
  mov R0, 0
  mov [3918], R0
  mov R0, 0
  mov [3919], R0
  mov R0, 0
  mov [3920], R0
  mov R0, 0
  mov [3921], R0
  mov R0, 0
  mov [3922], R0
  mov R0, 3
  mov [3923], R0
  mov R0, 0
  mov [3924], R0
  mov R0, 0
  mov [3925], R0
  mov R0, 0
  mov [3926], R0
  mov R0, 0
  mov [3927], R0
  mov R0, 0
  mov [3928], R0
  mov R0, 0
  mov [3929], R0
  mov R0, 0
  mov [3930], R0
  mov R0, 0
  mov [3931], R0
  mov R0, 0
  mov [3932], R0
  mov R0, 0
  mov [3933], R0
  mov R0, 0
  mov [3934], R0
  mov R0, 0
  mov [3935], R0
  mov R0, 0
  mov [3936], R0
  mov R0, 0
  mov [3937], R0
  mov R0, 3
  mov [3938], R0
  mov R0, 2
  mov [3939], R0
  mov R0, 0
  mov [3940], R0
  mov R0, 0
  mov [3941], R0
  mov R0, 0
  mov [3942], R0
  mov R0, 0
  mov [3943], R0
  mov R0, 0
  mov [3944], R0
  mov R0, 0
  mov [3945], R0
  mov R0, 0
  mov [3946], R0
  mov R0, 12
  mov [3947], R0
  mov R0, 0
  mov [3948], R0
  mov R0, 0
  mov [3949], R0
  mov R0, 0
  mov [3950], R0
  mov R0, 0
  mov [3951], R0
  mov R0, 0
  mov [3952], R0
  mov R0, 0
  mov [3953], R0
  mov R0, 0
  mov [3954], R0
  mov R0, 3
  mov [3955], R0
  mov R0, 0
  mov [3956], R0
  mov R0, 0
  mov [3957], R0
  mov R0, 0
  mov [3958], R0
  mov R0, 3
  mov [3959], R0
  mov R0, 0
  mov [3960], R0
  mov R0, 0
  mov [3961], R0
  mov R0, 0
  mov [3962], R0
  mov R0, 0
  mov [3963], R0
  mov R0, 0
  mov [3964], R0
  mov R0, 0
  mov [3965], R0
  mov R0, 0
  mov [3966], R0
  mov R0, 0
  mov [3967], R0
  mov R0, 0
  mov [3968], R0
  mov R0, 0
  mov [3969], R0
  mov R0, 3
  mov [3970], R0
  mov R0, 2
  mov [3971], R0
  mov R0, 0
  mov [3972], R0
  mov R0, 0
  mov [3973], R0
  mov R0, 0
  mov [3974], R0
  mov R0, 0
  mov [3975], R0
  mov R0, 0
  mov [3976], R0
  mov R0, 0
  mov [3977], R0
  mov R0, 0
  mov [3978], R0
  mov R0, 4
  mov [3979], R0
  mov R0, 0
  mov [3980], R0
  mov R0, 0
  mov [3981], R0
  mov R0, 0
  mov [3982], R0
  mov R0, 0
  mov [3983], R0
  mov R0, 0
  mov [3984], R0
  mov R0, 0
  mov [3985], R0
  mov R0, 0
  mov [3986], R0
  mov R0, 3
  mov [3987], R0
  mov R0, 0
  mov [3988], R0
  mov R0, 0
  mov [3989], R0
  mov R0, 0
  mov [3990], R0
  mov R0, 0
  mov [3991], R0
  mov R0, 0
  mov [3992], R0
  mov R0, 0
  mov [3993], R0
  mov R0, 0
  mov [3994], R0
  mov R0, 0
  mov [3995], R0
  mov R0, 0
  mov [3996], R0
  mov R0, 0
  mov [3997], R0
  mov R0, 0
  mov [3998], R0
  mov R0, 0
  mov [3999], R0
  mov R0, 0
  mov [4000], R0
  mov R0, 0
  mov [4001], R0
  mov R0, 3
  mov [4002], R0
  mov R0, 2
  mov [4003], R0
  mov R0, 0
  mov [4004], R0
  mov R0, 0
  mov [4005], R0
  mov R0, 0
  mov [4006], R0
  mov R0, 0
  mov [4007], R0
  mov R0, 0
  mov [4008], R0
  mov R0, 0
  mov [4009], R0
  mov R0, 0
  mov [4010], R0
  mov R0, 4
  mov [4011], R0
  mov R0, 0
  mov [4012], R0
  mov R0, 0
  mov [4013], R0
  mov R0, 0
  mov [4014], R0
  mov R0, 0
  mov [4015], R0
  mov R0, 0
  mov [4016], R0
  mov R0, 0
  mov [4017], R0
  mov R0, 0
  mov [4018], R0
  mov R0, 3
  mov [4019], R0
  mov R0, 0
  mov [4020], R0
  mov R0, 0
  mov [4021], R0
  mov R0, 0
  mov [4022], R0
  mov R0, 0
  mov [4023], R0
  mov R0, 0
  mov [4024], R0
  mov R0, 0
  mov [4025], R0
  mov R0, 0
  mov [4026], R0
  mov R0, 0
  mov [4027], R0
  mov R0, 0
  mov [4028], R0
  mov R0, 0
  mov [4029], R0
  mov R0, 0
  mov [4030], R0
  mov R0, 0
  mov [4031], R0
  mov R0, 0
  mov [4032], R0
  mov R0, 0
  mov [4033], R0
  mov R0, 3
  mov [4034], R0
  mov R0, 2
  mov [4035], R0
  mov R0, 0
  mov [4036], R0
  mov R0, 0
  mov [4037], R0
  mov R0, 0
  mov [4038], R0
  mov R0, 0
  mov [4039], R0
  mov R0, 0
  mov [4040], R0
  mov R0, 0
  mov [4041], R0
  mov R0, 0
  mov [4042], R0
  mov R0, 4
  mov [4043], R0
  mov R0, 0
  mov [4044], R0
  mov R0, 0
  mov [4045], R0
  mov R0, 0
  mov [4046], R0
  mov R0, 0
  mov [4047], R0
  mov R0, 0
  mov [4048], R0
  mov R0, 0
  mov [4049], R0
  mov R0, 0
  mov [4050], R0
  mov R0, 3
  mov [4051], R0
  mov R0, 0
  mov [4052], R0
  mov R0, 0
  mov [4053], R0
  mov R0, 0
  mov [4054], R0
  mov R0, 0
  mov [4055], R0
  mov R0, 0
  mov [4056], R0
  mov R0, 0
  mov [4057], R0
  mov R0, 0
  mov [4058], R0
  mov R0, 0
  mov [4059], R0
  mov R0, 0
  mov [4060], R0
  mov R0, 0
  mov [4061], R0
  mov R0, 0
  mov [4062], R0
  mov R0, 0
  mov [4063], R0
  mov R0, 0
  mov [4064], R0
  mov R0, 0
  mov [4065], R0
  mov R0, 3
  mov [4066], R0
  mov R0, 2
  mov [4067], R0
  mov R0, 2
  mov [4068], R0
  mov R0, 2
  mov [4069], R0
  mov R0, 2
  mov [4070], R0
  mov R0, 2
  mov [4071], R0
  mov R0, 2
  mov [4072], R0
  mov R0, 2
  mov [4073], R0
  mov R0, 2
  mov [4074], R0
  mov R0, 2
  mov [4075], R0
  mov R0, 4
  mov [4076], R0
  mov R0, 4
  mov [4077], R0
  mov R0, 4
  mov [4078], R0
  mov R0, 4
  mov [4079], R0
  mov R0, 4
  mov [4080], R0
  mov R0, 4
  mov [4081], R0
  mov R0, 4
  mov [4082], R0
  mov R0, 4
  mov [4083], R0
  mov R0, 3
  mov [4084], R0
  mov R0, 3
  mov [4085], R0
  mov R0, 3
  mov [4086], R0
  mov R0, 3
  mov [4087], R0
  mov R0, 3
  mov [4088], R0
  mov R0, 3
  mov [4089], R0
  mov R0, 3
  mov [4090], R0
  mov R0, 3
  mov [4091], R0
  mov R0, 3
  mov [4092], R0
  mov R0, 3
  mov [4093], R0
  mov R0, 3
  mov [4094], R0
  mov R0, 3
  mov [4095], R0
  mov R0, 3
  mov [4096], R0
  mov R0, 3
  mov [4097], R0
  mov R0, 3
  mov [4098], R0
  mov R0, 3
  mov [global_LevelStarts], R0
  mov R0, 4
  mov [4100], R0
  mov R0, 0
  mov [4101], R0
  mov R0, 2
  mov [4102], R0
  mov R0, 2
  mov [4103], R0
  mov R0, 0
  mov [4104], R0
  mov R0, 4
  mov [4105], R0
  mov R0, 29
  mov [4106], R0
  mov R0, 3
  mov [4107], R0
  mov R0, 4
  mov [4108], R0
  mov R0, 4
  mov [4109], R0
  mov R0, 1
  mov [4110], R0
  mov R0, 0
  mov [global_LevelEnemies], R0
  mov R0, 14
  mov [4112], R0
  mov R0, 2
  mov [4113], R0
  mov R0, 1
  mov [4114], R0
  mov R0, 22
  mov [4115], R0
  mov R0, 2
  mov [4116], R0
  mov R0, 1
  mov [4117], R0
  mov R0, 28
  mov [4118], R0
  mov R0, 2
  mov [4119], R0
  mov R0, 0
  mov [4120], R0
  mov R0, 20
  mov [4121], R0
  mov R0, 6
  mov [4122], R0
  mov R0, 1
  mov [4123], R0
  mov R0, 28
  mov [4124], R0
  mov R0, 6
  mov [4125], R0
  mov R0, 1
  mov [4126], R0
  mov R0, 14
  mov [4127], R0
  mov R0, 10
  mov [4128], R0
  mov R0, 0
  mov [4129], R0
  mov R0, 20
  mov [4130], R0
  mov R0, 10
  mov [4131], R0
  mov R0, 0
  mov [4132], R0
  mov R0, 28
  mov [4133], R0
  mov R0, 12
  mov [4134], R0
  mov R0, 0
  mov [4135], R0
  mov R0, 11
  mov [4136], R0
  mov R0, 14
  mov [4137], R0
  mov R0, 1
  mov [4138], R0
  mov R0, 11
  mov [4139], R0
  mov R0, 18
  mov [4140], R0
  mov R0, 0
  mov [4141], R0
  mov R0, 5
  mov [4142], R0
  mov R0, 19
  mov [4143], R0
  mov R0, 0
  mov [4144], R0
  mov R0, 19
  mov [4145], R0
  mov R0, 19
  mov [4146], R0
  mov R0, 0
  mov [4147], R0
  mov R0, 28
  mov [4148], R0
  mov R0, 21
  mov [4149], R0
  mov R0, 1
  mov [4150], R0
  mov R0, 13
  mov [4151], R0
  mov R0, 22
  mov [4152], R0
  mov R0, 0
  mov [4153], R0
  mov R0, 14
  mov [4154], R0
  mov R0, 26
  mov [4155], R0
  mov R0, 0
  mov [4156], R0
  mov R0, 20
  mov [4157], R0
  mov R0, 28
  mov [4158], R0
  mov R0, 1
  mov [4159], R0
  mov R0, 22
  mov [4160], R0
  mov R0, 30
  mov [4161], R0
  mov R0, -1
  mov [4162], R0
  mov R0, 0
  mov [4163], R0
  mov R0, 0
  mov [4164], R0
  mov R0, -1
  mov [4165], R0
  mov R0, 0
  mov [4166], R0
  mov R0, 0
  mov [4167], R0
  mov R0, -1
  mov [4168], R0
  mov R0, 0
  mov [4169], R0
  mov R0, 0
  mov [4170], R0
  mov R0, -1
  mov [4171], R0
  mov R0, 0
  mov [4172], R0
  mov R0, 0
  mov [4173], R0
  mov R0, -1
  mov [4174], R0
  mov R0, 0
  mov [4175], R0
  mov R0, 0
  mov [4176], R0
  mov R0, -1
  mov [4177], R0
  mov R0, 0
  mov [4178], R0
  mov R0, 0
  mov [4179], R0
  mov R0, -1
  mov [4180], R0
  mov R0, 0
  mov [4181], R0
  mov R0, 0
  mov [4182], R0
  mov R0, 1
  mov [4183], R0
  mov R0, 17
  mov [4184], R0
  mov R0, 3
  mov [4185], R0
  mov R0, 1
  mov [4186], R0
  mov R0, 14
  mov [4187], R0
  mov R0, 4
  mov [4188], R0
  mov R0, 0
  mov [4189], R0
  mov R0, 29
  mov [4190], R0
  mov R0, 4
  mov [4191], R0
  mov R0, 1
  mov [4192], R0
  mov R0, 22
  mov [4193], R0
  mov R0, 5
  mov [4194], R0
  mov R0, 1
  mov [4195], R0
  mov R0, 2
  mov [4196], R0
  mov R0, 9
  mov [4197], R0
  mov R0, 1
  mov [4198], R0
  mov R0, 6
  mov [4199], R0
  mov R0, 9
  mov [4200], R0
  mov R0, 3
  mov [4201], R0
  mov R0, 2
  mov [4202], R0
  mov R0, 17
  mov [4203], R0
  mov R0, 3
  mov [4204], R0
  mov R0, 6
  mov [4205], R0
  mov R0, 17
  mov [4206], R0
  mov R0, 2
  mov [4207], R0
  mov R0, 21
  mov [4208], R0
  mov R0, 17
  mov [4209], R0
  mov R0, 0
  mov [4210], R0
  mov R0, 27
  mov [4211], R0
  mov R0, 17
  mov [4212], R0
  mov R0, 0
  mov [4213], R0
  mov R0, 10
  mov [4214], R0
  mov R0, 22
  mov [4215], R0
  mov R0, 0
  mov [4216], R0
  mov R0, 21
  mov [4217], R0
  mov R0, 22
  mov [4218], R0
  mov R0, 1
  mov [4219], R0
  mov R0, 27
  mov [4220], R0
  mov R0, 23
  mov [4221], R0
  mov R0, 1
  mov [4222], R0
  mov R0, 28
  mov [4223], R0
  mov R0, 23
  mov [4224], R0
  mov R0, 0
  mov [4225], R0
  mov R0, 14
  mov [4226], R0
  mov R0, 26
  mov [4227], R0
  mov R0, 1
  mov [4228], R0
  mov R0, 22
  mov [4229], R0
  mov R0, 27
  mov [4230], R0
  mov R0, 1
  mov [4231], R0
  mov R0, 22
  mov [4232], R0
  mov R0, 28
  mov [4233], R0
  mov R0, 0
  mov [4234], R0
  mov R0, 14
  mov [4235], R0
  mov R0, 29
  mov [4236], R0
  mov R0, -1
  mov [4237], R0
  mov R0, 0
  mov [4238], R0
  mov R0, 0
  mov [4239], R0
  mov R0, -1
  mov [4240], R0
  mov R0, 0
  mov [4241], R0
  mov R0, 0
  mov [4242], R0
  mov R0, -1
  mov [4243], R0
  mov R0, 0
  mov [4244], R0
  mov R0, 0
  mov [4245], R0
  mov R0, -1
  mov [4246], R0
  mov R0, 0
  mov [4247], R0
  mov R0, 0
  mov [4248], R0
  mov R0, -1
  mov [4249], R0
  mov R0, 0
  mov [4250], R0
  mov R0, 0
  mov [4251], R0
  mov R0, -1
  mov [4252], R0
  mov R0, 0
  mov [4253], R0
  mov R0, 0
  mov [4254], R0
  mov R0, 1
  mov [4255], R0
  mov R0, 12
  mov [4256], R0
  mov R0, 3
  mov [4257], R0
  mov R0, 1
  mov [4258], R0
  mov R0, 27
  mov [4259], R0
  mov R0, 3
  mov [4260], R0
  mov R0, 2
  mov [4261], R0
  mov R0, 20
  mov [4262], R0
  mov R0, 4
  mov [4263], R0
  mov R0, 1
  mov [4264], R0
  mov R0, 29
  mov [4265], R0
  mov R0, 5
  mov [4266], R0
  mov R0, 2
  mov [4267], R0
  mov R0, 6
  mov [4268], R0
  mov R0, 6
  mov [4269], R0
  mov R0, 1
  mov [4270], R0
  mov R0, 14
  mov [4271], R0
  mov R0, 6
  mov [4272], R0
  mov R0, 3
  mov [4273], R0
  mov R0, 22
  mov [4274], R0
  mov R0, 6
  mov [4275], R0
  mov R0, 0
  mov [4276], R0
  mov R0, 27
  mov [4277], R0
  mov R0, 11
  mov [4278], R0
  mov R0, 0
  mov [4279], R0
  mov R0, 2
  mov [4280], R0
  mov R0, 12
  mov [4281], R0
  mov R0, 0
  mov [4282], R0
  mov R0, 6
  mov [4283], R0
  mov R0, 12
  mov [4284], R0
  mov R0, 2
  mov [4285], R0
  mov R0, 12
  mov [4286], R0
  mov R0, 12
  mov [4287], R0
  mov R0, 0
  mov [4288], R0
  mov R0, 19
  mov [4289], R0
  mov R0, 12
  mov [4290], R0
  mov R0, 0
  mov [4291], R0
  mov R0, 22
  mov [4292], R0
  mov R0, 13
  mov [4293], R0
  mov R0, 0
  mov [4294], R0
  mov R0, 29
  mov [4295], R0
  mov R0, 14
  mov [4296], R0
  mov R0, 3
  mov [4297], R0
  mov R0, 18
  mov [4298], R0
  mov R0, 18
  mov [4299], R0
  mov R0, 3
  mov [4300], R0
  mov R0, 22
  mov [4301], R0
  mov R0, 18
  mov [4302], R0
  mov R0, 3
  mov [4303], R0
  mov R0, 4
  mov [4304], R0
  mov R0, 19
  mov [4305], R0
  mov R0, 0
  mov [4306], R0
  mov R0, 6
  mov [4307], R0
  mov R0, 22
  mov [4308], R0
  mov R0, 3
  mov [4309], R0
  mov R0, 12
  mov [4310], R0
  mov R0, 26
  mov [4311], R0
  mov R0, 1
  mov [4312], R0
  mov R0, 22
  mov [4313], R0
  mov R0, 26
  mov [4314], R0
  mov R0, 2
  mov [4315], R0
  mov R0, 20
  mov [4316], R0
  mov R0, 28
  mov [4317], R0
  mov R0, 0
  mov [4318], R0
  mov R0, 14
  mov [4319], R0
  mov R0, 29
  mov [4320], R0
  mov R0, 2
  mov [4321], R0
  mov R0, 29
  mov [4322], R0
  mov R0, 29
  mov [4323], R0
  mov R0, 1
  mov [4324], R0
  mov R0, 18
  mov [4325], R0
  mov R0, 30
  mov [4326], R0
  mov R0, 2
  mov [4327], R0
  mov R0, 12
  mov [4328], R0
  mov R0, 2
  mov [4329], R0
  mov R0, 1
  mov [4330], R0
  mov R0, 22
  mov [4331], R0
  mov R0, 2
  mov [4332], R0
  mov R0, 0
  mov [4333], R0
  mov R0, 29
  mov [4334], R0
  mov R0, 2
  mov [4335], R0
  mov R0, 2
  mov [4336], R0
  mov R0, 27
  mov [4337], R0
  mov R0, 3
  mov [4338], R0
  mov R0, 0
  mov [4339], R0
  mov R0, 20
  mov [4340], R0
  mov R0, 4
  mov [4341], R0
  mov R0, 0
  mov [4342], R0
  mov R0, 14
  mov [4343], R0
  mov R0, 6
  mov [4344], R0
  mov R0, 3
  mov [4345], R0
  mov R0, 30
  mov [4346], R0
  mov R0, 6
  mov [4347], R0
  mov R0, 3
  mov [4348], R0
  mov R0, 4
  mov [4349], R0
  mov R0, 10
  mov [4350], R0
  mov R0, 1
  mov [4351], R0
  mov R0, 26
  mov [4352], R0
  mov R0, 10
  mov [4353], R0
  mov R0, 1
  mov [4354], R0
  mov R0, 30
  mov [4355], R0
  mov R0, 10
  mov [4356], R0
  mov R0, 2
  mov [4357], R0
  mov R0, 12
  mov [4358], R0
  mov R0, 12
  mov [4359], R0
  mov R0, 1
  mov [4360], R0
  mov R0, 2
  mov [4361], R0
  mov R0, 14
  mov [4362], R0
  mov R0, 1
  mov [4363], R0
  mov R0, 14
  mov [4364], R0
  mov R0, 14
  mov [4365], R0
  mov R0, 1
  mov [4366], R0
  mov R0, 14
  mov [4367], R0
  mov R0, 18
  mov [4368], R0
  mov R0, 0
  mov [4369], R0
  mov R0, 3
  mov [4370], R0
  mov R0, 19
  mov [4371], R0
  mov R0, 2
  mov [4372], R0
  mov R0, 12
  mov [4373], R0
  mov R0, 20
  mov [4374], R0
  mov R0, 0
  mov [4375], R0
  mov R0, 5
  mov [4376], R0
  mov R0, 22
  mov [4377], R0
  mov R0, 3
  mov [4378], R0
  mov R0, 6
  mov [4379], R0
  mov R0, 26
  mov [4380], R0
  mov R0, 4
  mov [4381], R0
  mov R0, 27
  mov [4382], R0
  mov R0, 27
  mov [4383], R0
  mov R0, 2
  mov [4384], R0
  mov R0, 2
  mov [4385], R0
  mov R0, 30
  mov [4386], R0
  mov R0, -1
  mov [4387], R0
  mov R0, 0
  mov [4388], R0
  mov R0, 0
  mov [4389], R0
  mov R0, -1
  mov [4390], R0
  mov R0, 0
  mov [4391], R0
  mov R0, 0
  mov [4392], R0
  mov R0, -1
  mov [4393], R0
  mov R0, 0
  mov [4394], R0
  mov R0, 0
  mov [4395], R0
  mov R0, -1
  mov [4396], R0
  mov R0, 0
  mov [4397], R0
  mov R0, 0
  mov [4398], R0
  mov R0, 5
  mov [global_LevelItems], R0
  mov R0, 30
  mov [4400], R0
  mov R0, 4
  mov [4401], R0
  mov R0, 6
  mov [4402], R0
  mov R0, 2
  mov [4403], R0
  mov R0, 6
  mov [4404], R0
  mov R0, 5
  mov [4405], R0
  mov R0, 2
  mov [4406], R0
  mov R0, 10
  mov [4407], R0
  mov R0, 6
  mov [4408], R0
  mov R0, 26
  mov [4409], R0
  mov R0, 10
  mov [4410], R0
  mov R0, 27
  mov [4411], R0
  mov R0, 21
  mov [4412], R0
  mov R0, 13
  mov [4413], R0
  mov R0, 25
  mov [4414], R0
  mov R0, 28
  mov [4415], R0
  mov R0, 14
  mov [4416], R0
  mov R0, 6
  mov [4417], R0
  mov R0, 26
  mov [4418], R0
  mov R0, 18
  mov [4419], R0
  mov R0, 27
  mov [4420], R0
  mov R0, 19
  mov [4421], R0
  mov R0, 22
  mov [4422], R0
  mov R0, 5
  mov [4423], R0
  mov R0, 27
  mov [4424], R0
  mov R0, 27
  mov [4425], R0
  mov R0, 5
  mov [4426], R0
  mov R0, 4
  mov [4427], R0
  mov R0, 28
  mov [4428], R0
  mov R0, 7
  mov [4429], R0
  mov R0, 12
  mov [4430], R0
  mov R0, 28
  mov [4431], R0
  mov R0, 6
  mov [4432], R0
  mov R0, 3
  mov [4433], R0
  mov R0, 30
  mov [4434], R0
  mov R0, 6
  mov [4435], R0
  mov R0, 5
  mov [4436], R0
  mov R0, 30
  mov [4437], R0
  mov R0, 6
  mov [4438], R0
  mov R0, 10
  mov [4439], R0
  mov R0, 30
  mov [4440], R0
  mov R0, -1
  mov [4441], R0
  mov R0, 0
  mov [4442], R0
  mov R0, 0
  mov [4443], R0
  mov R0, -1
  mov [4444], R0
  mov R0, 0
  mov [4445], R0
  mov R0, 0
  mov [4446], R0
  mov R0, -1
  mov [4447], R0
  mov R0, 0
  mov [4448], R0
  mov R0, 0
  mov [4449], R0
  mov R0, -1
  mov [4450], R0
  mov R0, 0
  mov [4451], R0
  mov R0, 0
  mov [4452], R0
  mov R0, -1
  mov [4453], R0
  mov R0, 0
  mov [4454], R0
  mov R0, 0
  mov [4455], R0
  mov R0, -1
  mov [4456], R0
  mov R0, 0
  mov [4457], R0
  mov R0, 0
  mov [4458], R0
  mov R0, -1
  mov [4459], R0
  mov R0, 0
  mov [4460], R0
  mov R0, 0
  mov [4461], R0
  mov R0, -1
  mov [4462], R0
  mov R0, 0
  mov [4463], R0
  mov R0, 0
  mov [4464], R0
  mov R0, -1
  mov [4465], R0
  mov R0, 0
  mov [4466], R0
  mov R0, 0
  mov [4467], R0
  mov R0, -1
  mov [4468], R0
  mov R0, 0
  mov [4469], R0
  mov R0, 0
  mov [4470], R0
  mov R0, 6
  mov [4471], R0
  mov R0, 6
  mov [4472], R0
  mov R0, 5
  mov [4473], R0
  mov R0, 6
  mov [4474], R0
  mov R0, 19
  mov [4475], R0
  mov R0, 8
  mov [4476], R0
  mov R0, 6
  mov [4477], R0
  mov R0, 21
  mov [4478], R0
  mov R0, 8
  mov [4479], R0
  mov R0, 5
  mov [4480], R0
  mov R0, 23
  mov [4481], R0
  mov R0, 11
  mov [4482], R0
  mov R0, 6
  mov [4483], R0
  mov R0, 19
  mov [4484], R0
  mov R0, 15
  mov [4485], R0
  mov R0, 6
  mov [4486], R0
  mov R0, 21
  mov [4487], R0
  mov R0, 15
  mov [4488], R0
  mov R0, 6
  mov [4489], R0
  mov R0, 27
  mov [4490], R0
  mov R0, 15
  mov [4491], R0
  mov R0, 6
  mov [4492], R0
  mov R0, 28
  mov [4493], R0
  mov R0, 15
  mov [4494], R0
  mov R0, 5
  mov [4495], R0
  mov R0, 28
  mov [4496], R0
  mov R0, 17
  mov [4497], R0
  mov R0, -1
  mov [4498], R0
  mov R0, 0
  mov [4499], R0
  mov R0, 0
  mov [4500], R0
  mov R0, -1
  mov [4501], R0
  mov R0, 0
  mov [4502], R0
  mov R0, 0
  mov [4503], R0
  mov R0, -1
  mov [4504], R0
  mov R0, 0
  mov [4505], R0
  mov R0, 0
  mov [4506], R0
  mov R0, -1
  mov [4507], R0
  mov R0, 0
  mov [4508], R0
  mov R0, 0
  mov [4509], R0
  mov R0, -1
  mov [4510], R0
  mov R0, 0
  mov [4511], R0
  mov R0, 0
  mov [4512], R0
  mov R0, -1
  mov [4513], R0
  mov R0, 0
  mov [4514], R0
  mov R0, 0
  mov [4515], R0
  mov R0, -1
  mov [4516], R0
  mov R0, 0
  mov [4517], R0
  mov R0, 0
  mov [4518], R0
  mov R0, -1
  mov [4519], R0
  mov R0, 0
  mov [4520], R0
  mov R0, 0
  mov [4521], R0
  mov R0, -1
  mov [4522], R0
  mov R0, 0
  mov [4523], R0
  mov R0, 0
  mov [4524], R0
  mov R0, -1
  mov [4525], R0
  mov R0, 0
  mov [4526], R0
  mov R0, 0
  mov [4527], R0
  mov R0, -1
  mov [4528], R0
  mov R0, 0
  mov [4529], R0
  mov R0, 0
  mov [4530], R0
  mov R0, -1
  mov [4531], R0
  mov R0, 0
  mov [4532], R0
  mov R0, 0
  mov [4533], R0
  mov R0, -1
  mov [4534], R0
  mov R0, 0
  mov [4535], R0
  mov R0, 0
  mov [4536], R0
  mov R0, -1
  mov [4537], R0
  mov R0, 0
  mov [4538], R0
  mov R0, 0
  mov [4539], R0
  mov R0, -1
  mov [4540], R0
  mov R0, 0
  mov [4541], R0
  mov R0, 0
  mov [4542], R0
  mov R0, 5
  mov [4543], R0
  mov R0, 2
  mov [4544], R0
  mov R0, 2
  mov [4545], R0
  mov R0, 7
  mov [4546], R0
  mov R0, 4
  mov [4547], R0
  mov R0, 4
  mov [4548], R0
  mov R0, 27
  mov [4549], R0
  mov R0, 2
  mov [4550], R0
  mov R0, 9
  mov [4551], R0
  mov R0, 28
  mov [4552], R0
  mov R0, 18
  mov [4553], R0
  mov R0, 10
  mov [4554], R0
  mov R0, 5
  mov [4555], R0
  mov R0, 20
  mov [4556], R0
  mov R0, 10
  mov [4557], R0
  mov R0, 27
  mov [4558], R0
  mov R0, 5
  mov [4559], R0
  mov R0, 13
  mov [4560], R0
  mov R0, 6
  mov [4561], R0
  mov R0, 10
  mov [4562], R0
  mov R0, 14
  mov [4563], R0
  mov R0, 5
  mov [4564], R0
  mov R0, 26
  mov [4565], R0
  mov R0, 14
  mov [4566], R0
  mov R0, 6
  mov [4567], R0
  mov R0, 27
  mov [4568], R0
  mov R0, 18
  mov [4569], R0
  mov R0, 5
  mov [4570], R0
  mov R0, 12
  mov [4571], R0
  mov R0, 20
  mov [4572], R0
  mov R0, 5
  mov [4573], R0
  mov R0, 28
  mov [4574], R0
  mov R0, 20
  mov [4575], R0
  mov R0, 28
  mov [4576], R0
  mov R0, 22
  mov [4577], R0
  mov R0, 21
  mov [4578], R0
  mov R0, 6
  mov [4579], R0
  mov R0, 10
  mov [4580], R0
  mov R0, 22
  mov [4581], R0
  mov R0, 6
  mov [4582], R0
  mov R0, 14
  mov [4583], R0
  mov R0, 22
  mov [4584], R0
  mov R0, 6
  mov [4585], R0
  mov R0, 20
  mov [4586], R0
  mov R0, 22
  mov [4587], R0
  mov R0, 26
  mov [4588], R0
  mov R0, 18
  mov [4589], R0
  mov R0, 25
  mov [4590], R0
  mov R0, 28
  mov [4591], R0
  mov R0, 29
  mov [4592], R0
  mov R0, 25
  mov [4593], R0
  mov R0, 6
  mov [4594], R0
  mov R0, 2
  mov [4595], R0
  mov R0, 26
  mov [4596], R0
  mov R0, 8
  mov [4597], R0
  mov R0, 28
  mov [4598], R0
  mov R0, 27
  mov [4599], R0
  mov R0, 6
  mov [4600], R0
  mov R0, 22
  mov [4601], R0
  mov R0, 30
  mov [4602], R0
  mov R0, 6
  mov [4603], R0
  mov R0, 26
  mov [4604], R0
  mov R0, 30
  mov [4605], R0
  mov R0, -1
  mov [4606], R0
  mov R0, 0
  mov [4607], R0
  mov R0, 0
  mov [4608], R0
  mov R0, -1
  mov [4609], R0
  mov R0, 0
  mov [4610], R0
  mov R0, 0
  mov [4611], R0
  mov R0, -1
  mov [4612], R0
  mov R0, 0
  mov [4613], R0
  mov R0, 0
  mov [4614], R0
  mov R0, 28
  mov [4615], R0
  mov R0, 13
  mov [4616], R0
  mov R0, 4
  mov [4617], R0
  mov R0, 6
  mov [4618], R0
  mov R0, 2
  mov [4619], R0
  mov R0, 6
  mov [4620], R0
  mov R0, 27
  mov [4621], R0
  mov R0, 28
  mov [4622], R0
  mov R0, 6
  mov [4623], R0
  mov R0, 6
  mov [4624], R0
  mov R0, 18
  mov [4625], R0
  mov R0, 10
  mov [4626], R0
  mov R0, 5
  mov [4627], R0
  mov R0, 20
  mov [4628], R0
  mov R0, 12
  mov [4629], R0
  mov R0, 8
  mov [4630], R0
  mov R0, 28
  mov [4631], R0
  mov R0, 12
  mov [4632], R0
  mov R0, 27
  mov [4633], R0
  mov R0, 2
  mov [4634], R0
  mov R0, 13
  mov [4635], R0
  mov R0, 6
  mov [4636], R0
  mov R0, 22
  mov [4637], R0
  mov R0, 14
  mov [4638], R0
  mov R0, 5
  mov [4639], R0
  mov R0, 26
  mov [4640], R0
  mov R0, 14
  mov [4641], R0
  mov R0, 6
  mov [4642], R0
  mov R0, 30
  mov [4643], R0
  mov R0, 14
  mov [4644], R0
  mov R0, 5
  mov [4645], R0
  mov R0, 18
  mov [4646], R0
  mov R0, 18
  mov [4647], R0
  mov R0, 28
  mov [4648], R0
  mov R0, 22
  mov [4649], R0
  mov R0, 18
  mov [4650], R0
  mov R0, 6
  mov [4651], R0
  mov R0, 29
  mov [4652], R0
  mov R0, 18
  mov [4653], R0
  mov R0, 6
  mov [4654], R0
  mov R0, 10
  mov [4655], R0
  mov R0, 22
  mov [4656], R0
  mov R0, 28
  mov [4657], R0
  mov R0, 26
  mov [4658], R0
  mov R0, 25
  mov [4659], R0
  mov R0, 6
  mov [4660], R0
  mov R0, 10
  mov [4661], R0
  mov R0, 26
  mov [4662], R0
  mov R0, 7
  mov [4663], R0
  mov R0, 4
  mov [4664], R0
  mov R0, 28
  mov [4665], R0
  mov R0, 5
  mov [4666], R0
  mov R0, 12
  mov [4667], R0
  mov R0, 28
  mov [4668], R0
  mov R0, 6
  mov [4669], R0
  mov R0, 18
  mov [4670], R0
  mov R0, 29
  mov [4671], R0
  mov R0, 5
  mov [4672], R0
  mov R0, 6
  mov [4673], R0
  mov R0, 30
  mov [4674], R0
  mov R0, 5
  mov [4675], R0
  mov R0, 30
  mov [4676], R0
  mov R0, 30
  mov [4677], R0
  mov R0, -1
  mov [4678], R0
  mov R0, 0
  mov [4679], R0
  mov R0, 0
  mov [4680], R0
  mov R0, -1
  mov [4681], R0
  mov R0, 0
  mov [4682], R0
  mov R0, 0
  mov [4683], R0
  mov R0, -1
  mov [4684], R0
  mov R0, 0
  mov [4685], R0
  mov R0, 0
  mov [4686], R0
  mov R0, 3
  mov [global_TypeHP], R0
  mov R0, 1
  mov [4688], R0
  mov R0, 8
  mov [4689], R0
  mov R0, 5
  mov [4690], R0
  mov R0, 50
  mov [4691], R0
  mov R0, 0.022000
  mov [global_TypeSpeed], R0
  mov R0, 0.050000
  mov [4693], R0
  mov R0, 0.012000
  mov [4694], R0
  mov R0, 0.000000
  mov [4695], R0
  mov R0, 0.016000
  mov [4696], R0
  mov R0, 0.750000
  mov [global_TypeScale], R0
  mov R0, 0.420000
  mov [4698], R0
  mov R0, 0.950000
  mov [4699], R0
  mov R0, 0.700000
  mov [4700], R0
  mov R0, 1.500000
  mov [4701], R0
  mov R0, 0.300000
  mov [global_TypeRadius], R0
  mov R0, 0.250000
  mov [4703], R0
  mov R0, 0.380000
  mov [4704], R0
  mov R0, 0.300000
  mov [4705], R0
  mov R0, 0.600000
  mov [4706], R0
  mov R0, 0.320000
  mov [global_TypeHitRadius], R0
  mov R0, 0.260000
  mov [4708], R0
  mov R0, 0.420000
  mov [4709], R0
  mov R0, 0.300000
  mov [4710], R0
  mov R0, 0.750000
  mov [4711], R0
  mov R0, 9.000000
  mov [global_TypeRange], R0
  mov R0, 8.000000
  mov [4713], R0
  mov R0, 11.000000
  mov [4714], R0
  mov R0, 13.000000
  mov [4715], R0
  mov R0, 20.000000
  mov [4716], R0
  mov R0, 1.300000
  mov [global_TypeStopDistance], R0
  mov R0, 0.800000
  mov [4718], R0
  mov R0, 2.500000
  mov [4719], R0
  mov R0, 0.000000
  mov [4720], R0
  mov R0, 3.000000
  mov [4721], R0
  mov R0, 70
  mov [global_TypeCooldown], R0
  mov R0, 40
  mov [4723], R0
  mov R0, 110
  mov [4724], R0
  mov R0, 70
  mov [4725], R0
  mov R0, 75
  mov [4726], R0
  mov R0, 90
  mov [global_TypeCooldownRand], R0
  mov R0, 50
  mov [4728], R0
  mov R0, 80
  mov [4729], R0
  mov R0, 50
  mov [4730], R0
  mov R0, 30
  mov [4731], R0
  mov R0, 0
  mov [global_TypeFrameBase], R0
  mov R0, 11
  mov [4733], R0
  mov R0, 16
  mov [4734], R0
  mov R0, 21
  mov [4735], R0
  mov R0, 0
  mov [4736], R0
  mov R0, 30
  mov [global_TypeDropChance], R0
  mov R0, 15
  mov [4738], R0
  mov R0, 70
  mov [4739], R0
  mov R0, 40
  mov [4740], R0
  mov R0, 0
  mov [4741], R0
  mov R0, 6
  mov [global_TypeDropItem], R0
  mov R0, 6
  mov [4743], R0
  mov R0, 28
  mov [4744], R0
  mov R0, 27
  mov [4745], R0
  mov R0, 0
  mov [4746], R0
  mov R0, 8
  mov [global_TypeDropAmount], R0
  mov R0, 8
  mov [4748], R0
  mov R0, 15
  mov [4749], R0
  mov R0, 4
  mov [4750], R0
  mov R0, 0
  mov [4751], R0
  mov SP, BP
  pop BP
  ret

__function_make_color_rgb:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+4]
  shl R0, 16
  or R0, -16777216
  mov R1, [BP+3]
  shl R1, 8
  or R0, R1
  mov R1, [BP+2]
  or R0, R1
__function_make_color_rgb_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_make_color_rgba:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+5]
  shl R0, 24
  mov R1, [BP+4]
  shl R1, 16
  or R0, R1
  mov R1, [BP+3]
  shl R1, 8
  or R0, R1
  mov R1, [BP+2]
  or R0, R1
__function_make_color_rgba_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_select_texture:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_SelectedTexture, R0
__function_select_texture_return:
  mov SP, BP
  pop BP
  ret

__function_get_selected_texture:
  push BP
  mov BP, SP
  in R0, GPU_SelectedTexture
__function_get_selected_texture_return:
  mov SP, BP
  pop BP
  ret

__function_select_region:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_SelectedRegion, R0
__function_select_region_return:
  mov SP, BP
  pop BP
  ret

__function_define_region:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_RegionMinX, R0
  mov R0, [BP+3]
  out GPU_RegionMinY, R0
  mov R0, [BP+4]
  out GPU_RegionMaxX, R0
  mov R0, [BP+5]
  out GPU_RegionMaxY, R0
  mov R0, [BP+6]
  out GPU_RegionHotSpotX, R0
  mov R0, [BP+7]
  out GPU_RegionHotSpotY, R0
__function_define_region_return:
  mov SP, BP
  pop BP
  ret

__function_define_region_topleft:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_RegionMinX, R0
  out GPU_RegionHotSpotX, R0
  mov R0, [BP+3]
  out GPU_RegionMinY, R0
  out GPU_RegionHotSpotY, R0
  mov R0, [BP+4]
  out GPU_RegionMaxX, R0
  mov R0, [BP+5]
  out GPU_RegionMaxY, R0
__function_define_region_topleft_return:
  mov SP, BP
  pop BP
  ret

__function_define_region_matrix:
  push BP
  mov BP, SP
  isub SP, 17
  mov R0, [BP+2]
  mov [BP-1], R0
  mov R0, [BP+3]
  mov [BP-2], R0
  mov R0, [BP+4]
  mov [BP-3], R0
  mov R0, [BP+5]
  mov [BP-4], R0
  mov R0, [BP+6]
  mov [BP-5], R0
  mov R0, [BP+7]
  mov [BP-6], R0
  mov R0, [BP+8]
  mov [BP-7], R0
  mov R0, [BP-4]
  mov R1, [BP-2]
  isub R0, R1
  iadd R0, 1
  mov R1, [BP+11]
  iadd R0, R1
  mov [BP-8], R0
  mov R0, [BP-5]
  mov R1, [BP-3]
  isub R0, R1
  iadd R0, 1
  mov R1, [BP+11]
  iadd R0, R1
  mov [BP-9], R0
  mov R0, 0
  mov [BP-10], R0
__for_206_start:
  mov R0, [BP-10]
  mov R1, [BP+10]
  ilt R0, R1
  jf R0, __for_206_end
  mov R0, 0
  mov [BP-11], R0
__for_216_start:
  mov R0, [BP-11]
  mov R1, [BP+9]
  ilt R0, R1
  jf R0, __for_216_end
  mov R1, [BP-1]
  mov [SP], R1
  call __function_select_region
  mov R1, [BP-2]
  mov [SP], R1
  mov R1, [BP-3]
  mov [SP+1], R1
  mov R1, [BP-4]
  mov [SP+2], R1
  mov R1, [BP-5]
  mov [SP+3], R1
  mov R1, [BP-6]
  mov [SP+4], R1
  mov R1, [BP-7]
  mov [SP+5], R1
  call __function_define_region
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  mov R0, [BP-2]
  mov R1, [BP-8]
  iadd R0, R1
  mov [BP-2], R0
  mov R0, [BP-4]
  mov R1, [BP-8]
  iadd R0, R1
  mov [BP-4], R0
  mov R0, [BP-6]
  mov R1, [BP-8]
  iadd R0, R1
  mov [BP-6], R0
__for_216_continue:
  mov R0, [BP-11]
  iadd R0, 1
  mov [BP-11], R0
  jmp __for_216_start
__for_216_end:
  mov R0, [BP-3]
  mov R1, [BP-9]
  iadd R0, R1
  mov [BP-3], R0
  mov R0, [BP-5]
  mov R1, [BP-9]
  iadd R0, R1
  mov [BP-5], R0
  mov R0, [BP-7]
  mov R1, [BP-9]
  iadd R0, R1
  mov [BP-7], R0
  mov R0, [BP+3]
  mov [BP-2], R0
  mov R0, [BP+5]
  mov [BP-4], R0
  mov R0, [BP+7]
  mov [BP-6], R0
__for_206_continue:
  mov R0, [BP-10]
  iadd R0, 1
  mov [BP-10], R0
  jmp __for_206_start
__for_206_end:
__function_define_region_matrix_return:
  mov SP, BP
  pop BP
  ret

__function_set_multiply_color:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_MultiplyColor, R0
__function_set_multiply_color_return:
  mov SP, BP
  pop BP
  ret

__function_set_drawing_scale:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_DrawingScaleX, R0
  mov R0, [BP+3]
  out GPU_DrawingScaleY, R0
__function_set_drawing_scale_return:
  mov SP, BP
  pop BP
  ret

__function_get_drawing_point:
  push BP
  mov BP, SP
  push R1
  in R0, GPU_DrawingPointX
  mov R1, [BP+2]
  mov [R1], R0
  in R0, GPU_DrawingPointY
  mov R1, [BP+3]
  mov [R1], R0
__function_get_drawing_point_return:
  mov SP, BP
  pop BP
  ret

__function_draw_region_at:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_DrawingPointX, R0
  mov R0, [BP+3]
  out GPU_DrawingPointY, R0
  out GPU_Command, GPUCommand_DrawRegion
__function_draw_region_at_return:
  mov SP, BP
  pop BP
  ret

__function_draw_region_zoomed_at:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_DrawingPointX, R0
  mov R0, [BP+3]
  out GPU_DrawingPointY, R0
  out GPU_Command, GPUCommand_DrawRegionZoomed
__function_draw_region_zoomed_at_return:
  mov SP, BP
  pop BP
  ret

__function_print_at:
  push BP
  mov BP, SP
  isub SP, 4
  call __function_get_selected_texture
  mov [BP-1], R0
  mov R1, -1
  mov [SP], R1
  call __function_select_texture
  mov R0, [BP+2]
  mov [BP-2], R0
__while_361_start:
__while_361_continue:
  mov R0, [BP+4]
  mov R0, [R0]
  cib R0
  jf R0, __while_361_end
  mov R1, [BP+4]
  mov R1, [R1]
  mov [SP], R1
  call __function_select_region
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_draw_region_at
  mov R0, [BP+2]
  iadd R0, 10
  mov [BP+2], R0
__if_374_start:
  mov R0, [BP+4]
  mov R0, [R0]
  ieq R0, 10
  jf R0, __if_374_end
  mov R0, [BP-2]
  mov [BP+2], R0
  mov R0, [BP+3]
  iadd R0, 20
  mov [BP+3], R0
__if_374_end:
  mov R0, [BP+4]
  iadd R0, 1
  mov [BP+4], R0
  jmp __while_361_start
__while_361_end:
  mov R1, [BP-1]
  mov [SP], R1
  call __function_select_texture
__function_print_at_return:
  mov SP, BP
  pop BP
  ret

__function_select_gamepad:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out INP_SelectedGamepad, R0
__function_select_gamepad_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_left:
  push BP
  mov BP, SP
  in R0, INP_GamepadLeft
__function_gamepad_left_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_right:
  push BP
  mov BP, SP
  in R0, INP_GamepadRight
__function_gamepad_right_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_up:
  push BP
  mov BP, SP
  in R0, INP_GamepadUp
__function_gamepad_up_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_down:
  push BP
  mov BP, SP
  in R0, INP_GamepadDown
__function_gamepad_down_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_a:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonA
__function_gamepad_button_a_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_b:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonB
__function_gamepad_button_b_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_x:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonX
__function_gamepad_button_x_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_y:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonY
__function_gamepad_button_y_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_l:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonL
__function_gamepad_button_l_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_r:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonR
__function_gamepad_button_r_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_start:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonStart
__function_gamepad_button_start_return:
  mov SP, BP
  pop BP
  ret

__function_min:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, [BP+3]
  imin R0, R1
  pop R1
__function_min_return:
  mov SP, BP
  pop BP
  ret

__function_max:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, [BP+3]
  imax R0, R1
  pop R1
__function_max_return:
  mov SP, BP
  pop BP
  ret

__function_fabs:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  fabs R0
__function_fabs_return:
  mov SP, BP
  pop BP
  ret

__function_floor:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  flr R0
__function_floor_return:
  mov SP, BP
  pop BP
  ret

__function_sin:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  sin R0
__function_sin_return:
  mov SP, BP
  pop BP
  ret

__function_cos:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  fadd R0, 1.570796
  sin R0
__function_cos_return:
  mov SP, BP
  pop BP
  ret

__function_atan2:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, [BP+3]
  atan2 R0, R1
  pop R1
__function_atan2_return:
  mov SP, BP
  pop BP
  ret

__function_sqrt:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, 0.5
  pow R0, R1
  pop R1
__function_sqrt_return:
  mov SP, BP
  pop BP
  ret

__function_memset:
  push BP
  mov BP, SP
  mov CR, [BP+4]
  mov DR, [BP+2]
  mov SR, [BP+3]
  sets
__function_memset_return:
  mov SP, BP
  pop BP
  ret

__function_memcpy:
  push BP
  mov BP, SP
  mov CR, [BP+4]
  mov DR, [BP+2]
  mov SR, [BP+3]
  movs
__function_memcpy_return:
  mov SP, BP
  pop BP
  ret

__function_merge_free_malloc_blocks:
  push BP
  mov BP, SP
  isub SP, 2
  mov R1, [BP+2]
  mov R0, [R1]
  mov [BP-1], R0
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  mov [BP-2], R0
__if_699_start:
  mov R0, [BP-2]
  ine R0, -1
  jf R0, __LogicalAnd_ShortCircuit_701
  mov R2, [BP-2]
  iadd R2, 3
  mov R1, [R2]
  and R0, R1
__LogicalAnd_ShortCircuit_701:
  jf R0, __if_699_end
  mov R1, [BP-2]
  iadd R1, 1
  mov R0, [R1]
  mov R1, [BP+2]
  iadd R1, 1
  mov [R1], R0
__if_710_start:
  mov R1, [BP-2]
  iadd R1, 1
  mov R0, [R1]
  ine R0, -1
  jf R0, __if_710_end
  mov R0, [BP+2]
  mov R2, [BP-2]
  iadd R2, 1
  mov R1, [R2]
  mov [R1], R0
__if_710_end:
  mov R1, [BP+2]
  iadd R1, 2
  mov R0, [R1]
  mov R3, [BP-2]
  iadd R3, 2
  mov R2, [R3]
  iadd R2, 4
  iadd R0, R2
  mov [R1], R0
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  mov [BP-2], R0
__if_699_end:
__if_729_start:
  mov R0, [BP-1]
  ine R0, -1
  jf R0, __LogicalAnd_ShortCircuit_731
  mov R2, [BP-1]
  iadd R2, 3
  mov R1, [R2]
  and R0, R1
__LogicalAnd_ShortCircuit_731:
  jf R0, __if_729_end
  mov R0, [BP-2]
  mov R1, [BP-1]
  iadd R1, 1
  mov [R1], R0
__if_739_start:
  mov R0, [BP-2]
  ine R0, -1
  jf R0, __if_739_end
  mov R0, [BP-1]
  mov R1, [BP-2]
  mov [R1], R0
__if_739_end:
  mov R1, [BP-1]
  iadd R1, 2
  mov R0, [R1]
  mov R3, [BP+2]
  iadd R3, 2
  mov R2, [R3]
  iadd R2, 4
  iadd R0, R2
  mov [R1], R0
__if_729_end:
__function_merge_free_malloc_blocks_return:
  mov SP, BP
  pop BP
  ret

__function_reduce_malloc_block:
  push BP
  mov BP, SP
  isub SP, 3
  mov R1, [BP+2]
  iadd R1, 2
  mov R0, [R1]
  mov R1, [BP+3]
  isub R0, R1
  mov [BP-1], R0
__if_761_start:
  mov R0, [BP-1]
  ile R0, 4
  jf R0, __if_761_end
  jmp __function_reduce_malloc_block_return
__if_761_end:
  mov R0, [BP+2]
  iadd R0, 4
  mov R1, [BP+3]
  iadd R0, R1
  mov [BP-2], R0
  mov R0, [BP+2]
  mov R1, [BP-2]
  mov [R1], R0
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  mov R1, [BP-2]
  iadd R1, 1
  mov [R1], R0
  mov R0, 1
  mov R1, [BP-2]
  iadd R1, 3
  mov [R1], R0
  mov R0, [BP-1]
  isub R0, 4
  mov R1, [BP-2]
  iadd R1, 2
  mov [R1], R0
  mov R0, [BP+3]
  mov R1, [BP+2]
  iadd R1, 2
  mov [R1], R0
  mov R0, [BP-2]
  mov R1, [BP+2]
  iadd R1, 1
  mov [R1], R0
__if_804_start:
  mov R1, [BP-2]
  iadd R1, 1
  mov R0, [R1]
  ine R0, -1
  jf R0, __if_804_end
  mov R0, [BP-2]
  mov R2, [BP-2]
  iadd R2, 1
  mov R1, [R2]
  mov [R1], R0
__if_804_end:
  mov R1, [BP-2]
  mov [SP], R1
  call __function_merge_free_malloc_blocks
__function_reduce_malloc_block_return:
  mov SP, BP
  pop BP
  ret

__function_expand_malloc_block:
  push BP
  mov BP, SP
  isub SP, 3
  push R1
  push R2
  isub SP, 2
  mov R0, [BP+3]
  mov R2, [BP+2]
  iadd R2, 2
  mov R1, [R2]
  isub R0, R1
  mov [BP-1], R0
__if_823_start:
  mov R0, [BP-1]
  ile R0, 0
  jf R0, __if_823_end
  mov R0, 1
  jmp __function_expand_malloc_block_return
__if_823_end:
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  mov [BP-2], R0
__if_833_start:
  mov R0, [BP-2]
  ine R0, -1
  bnot R0
  jt R0, __LogicalOr_ShortCircuit_836
  mov R2, [BP-2]
  iadd R2, 3
  mov R1, [R2]
  bnot R1
  or R0, R1
__LogicalOr_ShortCircuit_836:
  jf R0, __if_833_end
  mov R0, 0
  jmp __function_expand_malloc_block_return
__if_833_end:
  mov R1, [BP-2]
  iadd R1, 2
  mov R0, [R1]
  iadd R0, 4
  mov [BP-3], R0
__if_848_start:
  mov R0, [BP-3]
  mov R1, [BP-1]
  ilt R0, R1
  jf R0, __if_848_end
  mov R0, 0
  jmp __function_expand_malloc_block_return
__if_848_end:
  mov R1, [BP+2]
  iadd R1, 2
  mov R0, [R1]
  mov R2, [BP-3]
  iadd R0, R2
  mov [R1], R0
  mov R1, [BP-2]
  iadd R1, 1
  mov R0, [R1]
  mov R1, [BP+2]
  iadd R1, 1
  mov [R1], R0
__if_863_start:
  mov R1, [BP-2]
  iadd R1, 1
  mov R0, [R1]
  ine R0, -1
  jf R0, __if_863_end
  mov R0, [BP+2]
  mov R2, [BP-2]
  iadd R2, 1
  mov R1, [R2]
  mov [R1], R0
__if_863_end:
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_reduce_malloc_block
  mov R0, 1
__function_expand_malloc_block_return:
  iadd SP, 2
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_malloc:
  push BP
  mov BP, SP
  isub SP, 3
  push R1
  push R2
__if_878_start:
  mov R0, [global_malloc_first_block]
  ine R0, -1
  bnot R0
  jf R0, __if_878_end
  mov R0, [global_malloc_start_address]
  mov [global_malloc_first_block], R0
  mov R0, [global_malloc_end_address]
  mov R1, [global_malloc_start_address]
  isub R0, R1
  iadd R0, 1
  mov R1, [global_malloc_first_block]
  iadd R1, 2
  mov [R1], R0
  mov R1, [global_malloc_first_block]
  iadd R1, 2
  mov R0, [R1]
  isub R0, 4
  mov [R1], R0
  mov R0, -1
  mov R1, [global_malloc_first_block]
  mov [R1], R0
  mov R0, -1
  mov R1, [global_malloc_first_block]
  iadd R1, 1
  mov [R1], R0
  mov R0, 1
  mov R1, [global_malloc_first_block]
  iadd R1, 3
  mov [R1], R0
__if_878_end:
__if_913_start:
  mov R0, [BP+2]
  ile R0, 0
  jf R0, __if_913_end
  mov R0, -1
  jmp __function_malloc_return
__if_913_end:
  mov R0, [global_malloc_first_block]
  mov [BP-1], R0
__while_922_start:
__while_922_continue:
  mov R0, [BP-1]
  ine R0, -1
  jf R0, __while_922_end
__if_925_start:
  mov R1, [BP-1]
  iadd R1, 3
  mov R0, [R1]
  jf R0, __LogicalAnd_ShortCircuit_928
  mov R2, [BP-1]
  iadd R2, 2
  mov R1, [R2]
  mov R2, [BP+2]
  ige R1, R2
  and R0, R1
__LogicalAnd_ShortCircuit_928:
  jf R0, __if_925_end
  jmp __while_922_end
__if_925_end:
  mov R1, [BP-1]
  iadd R1, 1
  mov R0, [R1]
  mov [BP-1], R0
  jmp __while_922_start
__while_922_end:
__if_938_start:
  mov R0, [BP-1]
  ine R0, -1
  bnot R0
  jf R0, __if_938_end
  mov R0, -1
  jmp __function_malloc_return
__if_938_end:
  mov R0, [BP+2]
  iadd R0, 4
  mov [BP-2], R0
__if_948_start:
  mov R1, [BP-1]
  iadd R1, 2
  mov R0, [R1]
  mov R1, [BP-2]
  igt R0, R1
  jf R0, __if_948_else
  mov R0, [BP-1]
  iadd R0, 4
  mov R2, [BP-1]
  iadd R2, 2
  mov R1, [R2]
  iadd R0, R1
  mov R1, [BP-2]
  isub R0, R1
  mov [BP-3], R0
  mov R0, [BP+2]
  mov R1, [BP-3]
  iadd R1, 2
  mov [R1], R0
  mov R0, 0
  mov R1, [BP-3]
  iadd R1, 3
  mov [R1], R0
  mov R0, [BP-1]
  mov R1, [BP-3]
  mov [R1], R0
  mov R1, [BP-1]
  iadd R1, 1
  mov R0, [R1]
  mov R1, [BP-3]
  iadd R1, 1
  mov [R1], R0
  mov R1, [BP-1]
  iadd R1, 2
  mov R0, [R1]
  mov R2, [BP-2]
  isub R0, R2
  mov [R1], R0
  mov R0, [BP-3]
  mov R1, [BP-1]
  iadd R1, 1
  mov [R1], R0
__if_993_start:
  mov R1, [BP-3]
  iadd R1, 1
  mov R0, [R1]
  ine R0, -1
  jf R0, __if_993_end
  mov R0, [BP-3]
  mov R2, [BP-3]
  iadd R2, 1
  mov R1, [R2]
  mov [R1], R0
__if_993_end:
  mov R0, [BP-3]
  iadd R0, 4
  jmp __function_malloc_return
  jmp __if_948_end
__if_948_else:
  mov R0, 0
  mov R1, [BP-1]
  iadd R1, 3
  mov [R1], R0
  mov R0, [BP-1]
  iadd R0, 4
  jmp __function_malloc_return
__if_948_end:
__function_malloc_return:
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_free:
  push BP
  mov BP, SP
  isub SP, 2
__if_1018_start:
  mov R0, [BP+2]
  ine R0, -1
  bnot R0
  jf R0, __if_1018_end
  jmp __function_free_return
__if_1018_end:
  mov R0, [BP+2]
  isub R0, 4
  mov [BP-1], R0
  mov R0, 1
  mov R1, [BP-1]
  iadd R1, 3
  mov [R1], R0
  mov R1, [BP-1]
  mov [SP], R1
  call __function_merge_free_malloc_blocks
__function_free_return:
  mov SP, BP
  pop BP
  ret

__function_rand:
  push BP
  mov BP, SP
  in R0, RNG_CurrentValue
__function_rand_return:
  mov SP, BP
  pop BP
  ret

__function_islower:
  push BP
  mov BP, SP
  push R1
__if_1241_start:
  mov R0, [BP+2]
  ige R0, 97
  jf R0, __LogicalAnd_ShortCircuit_1246
  mov R1, [BP+2]
  ile R1, 122
  and R0, R1
__LogicalAnd_ShortCircuit_1246:
  jf R0, __if_1241_end
  mov R0, 1
  jmp __function_islower_return
__if_1241_end:
  mov R0, [BP+2]
  ige R0, 224
  jf R0, __LogicalAnd_ShortCircuit_1257
  mov R1, [BP+2]
  ile R1, 254
  and R0, R1
__LogicalAnd_ShortCircuit_1257:
  jf R0, __LogicalAnd_ShortCircuit_1261
  mov R1, [BP+2]
  ine R1, 247
  and R0, R1
__LogicalAnd_ShortCircuit_1261:
__function_islower_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_isupper:
  push BP
  mov BP, SP
  push R1
__if_1266_start:
  mov R0, [BP+2]
  ige R0, 65
  jf R0, __LogicalAnd_ShortCircuit_1271
  mov R1, [BP+2]
  ile R1, 90
  and R0, R1
__LogicalAnd_ShortCircuit_1271:
  jf R0, __if_1266_end
  mov R0, 1
  jmp __function_isupper_return
__if_1266_end:
  mov R0, [BP+2]
  ige R0, 192
  jf R0, __LogicalAnd_ShortCircuit_1282
  mov R1, [BP+2]
  ile R1, 222
  and R0, R1
__LogicalAnd_ShortCircuit_1282:
  jf R0, __LogicalAnd_ShortCircuit_1286
  mov R1, [BP+2]
  ine R1, 215
  and R0, R1
__LogicalAnd_ShortCircuit_1286:
__function_isupper_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_strlen:
  push BP
  mov BP, SP
  isub SP, 1
  push R1
  mov R0, [BP+2]
  mov [BP-1], R0
__while_1337_start:
__while_1337_continue:
  mov R0, [BP+2]
  mov R0, [R0]
  cib R0
  jf R0, __while_1337_end
  mov R0, [BP+2]
  iadd R0, 1
  mov [BP+2], R0
  jmp __while_1337_start
__while_1337_end:
  mov R0, [BP+2]
  mov R1, [BP-1]
  isub R0, R1
__function_strlen_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_strcpy:
  push BP
  mov BP, SP
__while_1417_start:
__while_1417_continue:
  mov R0, [BP+3]
  mov R0, [R0]
  cib R0
  jf R0, __while_1417_end
  mov R0, [BP+3]
  mov R0, [R0]
  lea R1, [BP+2]
  mov R1, [R1]
  mov [R1], R0
  mov R0, [BP+2]
  iadd R0, 1
  mov [BP+2], R0
  mov R0, [BP+3]
  iadd R0, 1
  mov [BP+3], R0
  jmp __while_1417_start
__while_1417_end:
  mov R0, 0
  lea R1, [BP+2]
  mov R1, [R1]
  mov [R1], R0
__function_strcpy_return:
  mov SP, BP
  pop BP
  ret

__function_strcat:
  push BP
  mov BP, SP
__while_1470_start:
__while_1470_continue:
  mov R0, [BP+2]
  mov R0, [R0]
  cib R0
  jf R0, __while_1470_end
  mov R0, [BP+2]
  iadd R0, 1
  mov [BP+2], R0
  jmp __while_1470_start
__while_1470_end:
__while_1475_start:
__while_1475_continue:
  mov R0, [BP+3]
  mov R0, [R0]
  cib R0
  jf R0, __while_1475_end
  mov R0, [BP+3]
  mov R0, [R0]
  lea R1, [BP+2]
  mov R1, [R1]
  mov [R1], R0
  mov R0, [BP+2]
  iadd R0, 1
  mov [BP+2], R0
  mov R0, [BP+3]
  iadd R0, 1
  mov [BP+3], R0
  jmp __while_1475_start
__while_1475_end:
  mov R0, 0
  lea R1, [BP+2]
  mov R1, [R1]
  mov [R1], R0
__function_strcat_return:
  mov SP, BP
  pop BP
  ret

__function_itoa:
  push BP
  mov BP, SP
  isub SP, 65
  lea DR, [BP-17]
  mov SR, __literal_string_1539
  mov CR, 17
  movs
  lea R0, [BP-50]
  mov [BP-51], R0
__if_1548_start:
  mov R0, [BP+4]
  ilt R0, 2
  jt R0, __LogicalOr_ShortCircuit_1553
  mov R1, [BP+4]
  igt R1, 16
  or R0, R1
__LogicalOr_ShortCircuit_1553:
  jf R0, __if_1548_end
  jmp __function_itoa_return
__if_1548_end:
__if_1557_start:
  mov R0, [BP+4]
  ieq R0, 10
  jf R0, __LogicalAnd_ShortCircuit_1562
  mov R1, [BP+2]
  ilt R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_1562:
  jf R0, __if_1557_else
__if_1566_start:
  mov R0, [BP+2]
  ieq R0, 0x80000000
  jf R0, __if_1566_end
  lea DR, [BP-63]
  mov SR, __literal_string_1576
  mov CR, 12
  movs
  mov R1, [BP+3]
  mov [SP], R1
  lea R1, [BP-63]
  mov [SP+1], R1
  call __function_strcpy
  jmp __function_itoa_return
__if_1566_end:
  mov R0, 45
  lea R1, [BP+3]
  mov R1, [R1]
  mov [R1], R0
  mov R0, [BP+3]
  iadd R0, 1
  mov [BP+3], R0
  mov R0, [BP+2]
  isgn R0
  mov [BP+2], R0
  jmp __if_1557_end
__if_1557_else:
__if_1591_start:
  mov R0, [BP+2]
  ilt R0, 0
  jf R0, __if_1591_end
  mov R0, [BP+2]
  and R0, 2147483647
  mov [BP+2], R0
  mov R0, 1073741824
  mov [BP-52], R0
  mov R0, 1073741824
  mov R1, [BP+4]
  imod R0, R1
  mov [BP-53], R0
  mov R0, [BP-53]
  imul R0, 2
  mov R1, [BP+2]
  mov R2, [BP+4]
  imod R1, R2
  iadd R0, R1
  mov [BP-54], R0
  mov R0, [BP-54]
  mov R1, [BP+4]
  imod R0, R1
  mov [BP-55], R0
  lea R0, [BP-17]
  mov R1, [BP-55]
  iadd R0, R1
  mov R0, [R0]
  lea R1, [BP-51]
  mov R1, [R1]
  mov [R1], R0
  mov R0, [BP-51]
  iadd R0, 1
  mov [BP-51], R0
  mov R0, [BP-52]
  mov R1, [BP+4]
  idiv R0, R1
  imul R0, 2
  mov R1, [BP+2]
  mov R2, [BP+4]
  idiv R1, R2
  iadd R0, R1
  mov R1, [BP-54]
  mov R2, [BP+4]
  idiv R1, R2
  iadd R0, R1
  mov [BP+2], R0
__if_1647_start:
  mov R0, [BP+2]
  bnot R0
  jf R0, __if_1647_end
  jmp __label_1667_digits_stored
__if_1647_end:
__if_1591_end:
__if_1557_end:
__do_1651_start:
  lea R0, [BP-17]
  mov R1, [BP+2]
  mov R2, [BP+4]
  imod R1, R2
  iadd R0, R1
  mov R0, [R0]
  lea R1, [BP-51]
  mov R1, [R1]
  mov [R1], R0
  mov R0, [BP-51]
  iadd R0, 1
  mov [BP-51], R0
  mov R0, [BP+2]
  mov R1, [BP+4]
  idiv R0, R1
  mov [BP+2], R0
__do_1651_continue:
  mov R0, [BP+2]
  cib R0
  jt R0, __do_1651_start
__do_1651_end:
__label_1667_digits_stored:
__do_1668_start:
  mov R0, [BP-51]
  isub R0, 1
  mov [BP-51], R0
  mov R0, [BP-51]
  mov R0, [R0]
  lea R1, [BP+3]
  mov R1, [R1]
  mov [R1], R0
  mov R0, [BP+3]
  iadd R0, 1
  mov [BP+3], R0
__do_1668_continue:
  mov R0, [BP-51]
  lea R1, [BP-50]
  ine R0, R1
  jt R0, __do_1668_start
__do_1668_end:
  mov R0, 0
  lea R1, [BP+3]
  mov R1, [R1]
  mov [R1], R0
__function_itoa_return:
  mov SP, BP
  pop BP
  ret

__function_get_frame_counter:
  push BP
  mov BP, SP
  in R0, TIM_FrameCounter
__function_get_frame_counter_return:
  mov SP, BP
  pop BP
  ret

__function_end_frame:
  push BP
  mov BP, SP
  wait
__function_end_frame_return:
  mov SP, BP
  pop BP
  ret

__function_select_channel:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out SPU_SelectedChannel, R0
__function_select_channel_return:
  mov SP, BP
  pop BP
  ret

__function_set_channel_volume:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out SPU_ChannelVolume, R0
__function_set_channel_volume_return:
  mov SP, BP
  pop BP
  ret

__function_set_channel_speed:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out SPU_ChannelSpeed, R0
__function_set_channel_speed_return:
  mov SP, BP
  pop BP
  ret

__function_set_channel_loop:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out SPU_ChannelLoopEnabled, R0
__function_set_channel_loop_return:
  mov SP, BP
  pop BP
  ret

__function_get_channel_state:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out SPU_SelectedChannel, R0
  in R0, SPU_ChannelState
__function_get_channel_state_return:
  mov SP, BP
  pop BP
  ret

__function_stop_all_channels:
  push BP
  mov BP, SP
  out SPU_Command, SPUCommand_StopAllChannels
__function_stop_all_channels_return:
  mov SP, BP
  pop BP
  ret

__function_play_sound_in_channel:
  push BP
  mov BP, SP
  mov R0, [BP+3]
  out SPU_SelectedChannel, R0
  mov R0, [BP+2]
  out SPU_ChannelAssignedSound, R0
  out SPU_Command, SPUCommand_PlaySelectedChannel
__function_play_sound_in_channel_return:
  mov SP, BP
  pop BP
  ret

__function_GetLevelName:
  push BP
  mov BP, SP
  isub SP, 2
__if_6791_start:
  mov R0, [BP+2]
  ieq R0, 0
  jf R0, __if_6791_else
  mov R1, [BP+3]
  mov [SP], R1
  mov R1, __literal_string_6797
  mov [SP+1], R1
  call __function_strcpy
  jmp __if_6791_end
__if_6791_else:
__if_6798_start:
  mov R0, [BP+2]
  ieq R0, 1
  jf R0, __if_6798_else
  mov R1, [BP+3]
  mov [SP], R1
  mov R1, __literal_string_6804
  mov [SP+1], R1
  call __function_strcpy
  jmp __if_6798_end
__if_6798_else:
__if_6805_start:
  mov R0, [BP+2]
  ieq R0, 2
  jf R0, __if_6805_else
  mov R1, [BP+3]
  mov [SP], R1
  mov R1, __literal_string_6811
  mov [SP+1], R1
  call __function_strcpy
  jmp __if_6805_end
__if_6805_else:
__if_6812_start:
  mov R0, [BP+2]
  ieq R0, 3
  jf R0, __if_6812_end
  mov R1, [BP+3]
  mov [SP], R1
  mov R1, __literal_string_6818
  mov [SP+1], R1
  call __function_strcpy
__if_6812_end:
__if_6805_end:
__if_6798_end:
__if_6791_end:
__function_GetLevelName_return:
  mov SP, BP
  pop BP
  ret

__function_RandomInt:
  push BP
  mov BP, SP
  isub SP, 1
  push R1
  call __function_rand
  mov [BP-1], R0
__if_7109_start:
  mov R0, [BP-1]
  ilt R0, 0
  jf R0, __if_7109_end
  mov R0, [BP-1]
  isgn R0
  mov [BP-1], R0
__if_7109_end:
  mov R0, [BP-1]
  mov R1, [BP+2]
  imod R0, R1
__function_RandomInt_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_RandomPitch:
  push BP
  mov BP, SP
  push R1
  push R2
  isub SP, 1
  mov R2, 17
  mov [SP], R2
  call __function_RandomInt
  mov R1, R0
  cif R1
  fdiv R1, 100.000000
  fadd R1, 0.920000
  mov R0, R1
__function_RandomPitch_return:
  iadd SP, 1
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_PlaySfx:
  push BP
  mov BP, SP
  isub SP, 3
__if_7133_start:
  mov R0, [BP+3]
  fle R0, 0.020000
  jf R0, __if_7133_end
  jmp __function_PlaySfx_return
__if_7133_end:
  mov R0, 0
  mov [BP-1], R0
__for_7138_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_7138_end
__if_7148_start:
  mov R2, [BP-1]
  mov [SP], R2
  call __function_get_channel_state
  mov R1, R0
  ine R1, 64
  mov R0, R1
  jf R0, __if_7148_end
  jmp __for_7138_continue
__if_7148_end:
  mov R1, [BP-1]
  mov [SP], R1
  call __function_select_channel
  mov R1, [BP+3]
  mov [SP], R1
  call __function_set_channel_volume
  mov R1, [BP+4]
  mov [SP], R1
  call __function_set_channel_speed
  mov R1, 0
  mov [SP], R1
  call __function_set_channel_loop
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP-1]
  mov [SP+1], R1
  call __function_play_sound_in_channel
  jmp __function_PlaySfx_return
__for_7138_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_7138_start
__for_7138_end:
__function_PlaySfx_return:
  mov SP, BP
  pop BP
  ret

__function_VolumeAt:
  push BP
  mov BP, SP
  isub SP, 3
  push R1
  push R2
  push R3
  push R4
  isub SP, 1
  mov R0, [BP+2]
  mov R1, [global_PlayerX]
  fsub R0, R1
  mov [BP-1], R0
  mov R0, [BP+3]
  mov R1, [global_PlayerY]
  fsub R0, R1
  mov [BP-2], R0
  mov R2, [BP-1]
  mov R3, [BP-1]
  fmul R2, R3
  mov R3, [BP-2]
  mov R4, [BP-2]
  fmul R3, R4
  fadd R2, R3
  mov [SP], R2
  call __function_sqrt
  mov R1, R0
  fdiv R1, 14.000000
  fsgn R1
  fadd R1, 1.000000
  mov R0, R1
  mov [BP-3], R0
__if_7193_start:
  mov R0, [BP-3]
  flt R0, 0.000000
  jf R0, __if_7193_end
  mov R0, 0.000000
  mov [BP-3], R0
__if_7193_end:
  mov R0, [BP-3]
__function_VolumeAt_return:
  iadd SP, 1
  pop R4
  pop R3
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_ShowMessage:
  push BP
  mov BP, SP
  isub SP, 2
  mov R1, global_MessageText
  mov [SP], R1
  mov R1, [BP+2]
  mov [SP+1], R1
  call __function_strcpy
  mov R0, 150
  mov [global_MessageTimer], R0
__function_ShowMessage_return:
  mov SP, BP
  pop BP
  ret

__function_IsSolid:
  push BP
  mov BP, SP
  isub SP, 1
  push R1
  push R2
  push R3
  push R4
__if_7213_start:
  mov R0, [BP+2]
  ilt R0, 0
  jt R0, __LogicalOr_ShortCircuit_7218
  mov R1, [BP+3]
  ilt R1, 0
  or R0, R1
__LogicalOr_ShortCircuit_7218:
  jt R0, __LogicalOr_ShortCircuit_7222
  mov R1, [BP+2]
  ige R1, 32
  or R0, R1
__LogicalOr_ShortCircuit_7222:
  jt R0, __LogicalOr_ShortCircuit_7226
  mov R1, [BP+3]
  ige R1, 32
  or R0, R1
__LogicalOr_ShortCircuit_7226:
  jf R0, __if_7213_end
  mov R0, 1
  jmp __function_IsSolid_return
__if_7213_end:
  mov R0, global_Map
  mov R2, [BP+3]
  imul R2, 32
  iadd R0, R2
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-1], R0
__if_7238_start:
  mov R0, [BP-1]
  ieq R0, 0
  jf R0, __if_7238_end
  mov R0, 0
  jmp __function_IsSolid_return
__if_7238_end:
__if_7244_start:
  mov R0, [BP-1]
  ige R0, 6
  jf R0, __LogicalAnd_ShortCircuit_7249
  mov R1, [BP-1]
  ile R1, 8
  and R0, R1
__LogicalAnd_ShortCircuit_7249:
  jf R0, __if_7244_end
  mov R1, global_Doors
  mov R2, global_DoorAt
  mov R4, [BP+3]
  imul R4, 32
  iadd R2, R4
  mov R3, [BP+2]
  iadd R2, R3
  mov R2, [R2]
  isub R2, 1
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  flt R0, 0.900000
  jmp __function_IsSolid_return
__if_7244_end:
  mov R0, 1
__function_IsSolid_return:
  pop R4
  pop R3
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_IsWall:
  push BP
  mov BP, SP
  push R1
  isub SP, 2
  mov R1, [BP+2]
  cfi R1
  mov [SP], R1
  mov R1, [BP+3]
  cfi R1
  mov [SP+1], R1
  call __function_IsSolid
__function_IsWall_return:
  iadd SP, 2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_CanStand:
  push BP
  mov BP, SP
  push R1
  push R2
  isub SP, 2
__if_7280_start:
  mov R1, [BP+2]
  mov R2, [BP+4]
  fsub R1, R2
  mov [SP], R1
  mov R1, [BP+3]
  mov R2, [BP+4]
  fsub R1, R2
  mov [SP+1], R1
  call __function_IsWall
  cib R0
  jf R0, __if_7280_end
  mov R0, 0
  jmp __function_CanStand_return
__if_7280_end:
__if_7290_start:
  mov R1, [BP+2]
  mov R2, [BP+4]
  fadd R1, R2
  mov [SP], R1
  mov R1, [BP+3]
  mov R2, [BP+4]
  fsub R1, R2
  mov [SP+1], R1
  call __function_IsWall
  cib R0
  jf R0, __if_7290_end
  mov R0, 0
  jmp __function_CanStand_return
__if_7290_end:
__if_7300_start:
  mov R1, [BP+2]
  mov R2, [BP+4]
  fsub R1, R2
  mov [SP], R1
  mov R1, [BP+3]
  mov R2, [BP+4]
  fadd R1, R2
  mov [SP+1], R1
  call __function_IsWall
  cib R0
  jf R0, __if_7300_end
  mov R0, 0
  jmp __function_CanStand_return
__if_7300_end:
__if_7310_start:
  mov R1, [BP+2]
  mov R2, [BP+4]
  fadd R1, R2
  mov [SP], R1
  mov R1, [BP+3]
  mov R2, [BP+4]
  fadd R1, R2
  mov [SP+1], R1
  call __function_IsWall
  cib R0
  jf R0, __if_7310_end
  mov R0, 0
  jmp __function_CanStand_return
__if_7310_end:
  mov R0, 1
__function_CanStand_return:
  iadd SP, 2
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_LineOfSight:
  push BP
  mov BP, SP
  isub SP, 9
  push R1
  push R2
  push R3
  isub SP, 2
  mov R0, [BP+4]
  mov R1, [BP+2]
  fsub R0, R1
  mov [BP-1], R0
  mov R0, [BP+5]
  mov R1, [BP+3]
  fsub R0, R1
  mov [BP-2], R0
  mov R1, [BP-1]
  mov R2, [BP-1]
  fmul R1, R2
  mov R2, [BP-2]
  mov R3, [BP-2]
  fmul R2, R3
  fadd R1, R2
  mov [SP], R1
  call __function_sqrt
  mov [BP-3], R0
  mov R0, [BP-3]
  fmul R0, 3.000000
  cfi R0
  iadd R0, 1
  mov [BP-4], R0
  mov R0, [BP-1]
  mov R1, [BP-4]
  cif R1
  fdiv R0, R1
  mov [BP-5], R0
  mov R0, [BP-2]
  mov R1, [BP-4]
  cif R1
  fdiv R0, R1
  mov [BP-6], R0
  mov R0, [BP+2]
  mov [BP-7], R0
  mov R0, [BP+3]
  mov [BP-8], R0
  mov R0, 0
  mov [BP-9], R0
__for_7372_start:
  mov R0, [BP-9]
  mov R1, [BP-4]
  ilt R0, R1
  jf R0, __for_7372_end
__if_7382_start:
  mov R1, [BP-7]
  mov [SP], R1
  mov R1, [BP-8]
  mov [SP+1], R1
  call __function_IsWall
  cib R0
  jf R0, __if_7382_end
  mov R0, 0
  jmp __function_LineOfSight_return
__if_7382_end:
  mov R0, [BP-7]
  mov R1, [BP-5]
  fadd R0, R1
  mov [BP-7], R0
  mov R0, [BP-8]
  mov R1, [BP-6]
  fadd R0, R1
  mov [BP-8], R0
__for_7372_continue:
  mov R0, [BP-9]
  mov R1, R0
  iadd R1, 1
  mov [BP-9], R1
  jmp __for_7372_start
__for_7372_end:
  mov R0, 1
__function_LineOfSight_return:
  iadd SP, 2
  pop R3
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_DrawRect:
  push BP
  mov BP, SP
  isub SP, 2
  mov R1, [BP+6]
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 3102
  mov [SP], R1
  call __function_select_region
  mov R1, [BP+4]
  cif R1
  mov [SP], R1
  mov R1, [BP+5]
  cif R1
  mov [SP+1], R1
  call __function_set_drawing_scale
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_draw_region_zoomed_at
__function_DrawRect_return:
  mov SP, BP
  pop BP
  ret

__function_PrintNumber:
  push BP
  mov BP, SP
  isub SP, 3
  mov R1, global_TextBuffer
  mov [SP], R1
  mov R1, [BP+4]
  mov [SP+1], R1
  call __function_strcpy
  mov R1, [BP+5]
  mov [SP], R1
  mov R1, global_NumberBuffer
  mov [SP+1], R1
  mov R1, 10
  mov [SP+2], R1
  call __function_itoa
  mov R1, global_TextBuffer
  mov [SP], R1
  mov R1, global_NumberBuffer
  mov [SP+1], R1
  call __function_strcat
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  mov R1, global_TextBuffer
  mov [SP+2], R1
  call __function_print_at
__function_PrintNumber_return:
  mov SP, BP
  pop BP
  ret

__function_PrintCentered:
  push BP
  mov BP, SP
  isub SP, 4
  mov R2, [BP+3]
  mov [SP], R2
  call __function_strlen
  mov R1, R0
  imul R1, 10
  mov R0, R1
  mov [BP-1], R0
  mov R1, [BP-1]
  isgn R1
  iadd R1, 640
  idiv R1, 2
  mov [SP], R1
  mov R1, [BP+2]
  mov [SP+1], R1
  mov R1, [BP+3]
  mov [SP+2], R1
  call __function_print_at
__function_PrintCentered_return:
  mov SP, BP
  pop BP
  ret

__function_PrintRatio:
  push BP
  mov BP, SP
  isub SP, 3
  mov R1, global_TextBuffer
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_strcpy
  mov R1, [BP+4]
  mov [SP], R1
  mov R1, global_NumberBuffer
  mov [SP+1], R1
  mov R1, 10
  mov [SP+2], R1
  call __function_itoa
  mov R1, global_TextBuffer
  mov [SP], R1
  mov R1, global_NumberBuffer
  mov [SP+1], R1
  call __function_strcat
  mov R1, global_TextBuffer
  mov [SP], R1
  mov R1, __literal_string_7466
  mov [SP+1], R1
  call __function_strcat
  mov R1, [BP+5]
  mov [SP], R1
  mov R1, global_NumberBuffer
  mov [SP+1], R1
  mov R1, 10
  mov [SP+2], R1
  call __function_itoa
  mov R1, global_TextBuffer
  mov [SP], R1
  mov R1, global_NumberBuffer
  mov [SP+1], R1
  call __function_strcat
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, global_TextBuffer
  mov [SP+1], R1
  call __function_PrintCentered
__function_PrintRatio_return:
  mov SP, BP
  pop BP
  ret

__function_DefineRegions:
  push BP
  mov BP, SP
  isub SP, 11
  mov R1, 0
  mov [SP], R1
  call __function_select_texture
  mov R1, 0
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 0
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 63
  mov [SP+4], R1
  mov R1, 0
  mov [SP+5], R1
  mov R1, 0
  mov [SP+6], R1
  mov R1, 512
  mov [SP+7], R1
  mov R1, 1
  mov [SP+8], R1
  mov R1, 0
  mov [SP+9], R1
  call __function_define_region_matrix
  mov R1, 512
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 64
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 127
  mov [SP+4], R1
  mov R1, 0
  mov [SP+5], R1
  mov R1, 64
  mov [SP+6], R1
  mov R1, 1024
  mov [SP+7], R1
  mov R1, 1
  mov [SP+8], R1
  mov R1, 0
  mov [SP+9], R1
  call __function_define_region_matrix
  mov R1, 1536
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 128
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 191
  mov [SP+4], R1
  mov R1, 0
  mov [SP+5], R1
  mov R1, 128
  mov [SP+6], R1
  mov R1, 1024
  mov [SP+7], R1
  mov R1, 1
  mov [SP+8], R1
  mov R1, 0
  mov [SP+9], R1
  call __function_define_region_matrix
  mov R1, 2560
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 192
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 319
  mov [SP+4], R1
  mov R1, 0
  mov [SP+5], R1
  mov R1, 192
  mov [SP+6], R1
  mov R1, 512
  mov [SP+7], R1
  mov R1, 1
  mov [SP+8], R1
  mov R1, 0
  mov [SP+9], R1
  call __function_define_region_matrix
  mov R1, 3100
  mov [SP], R1
  call __function_select_region
  mov R1, 0
  mov [SP], R1
  mov R1, 320
  mov [SP+1], R1
  mov R1, 95
  mov [SP+2], R1
  mov R1, 415
  mov [SP+3], R1
  mov R1, 48
  mov [SP+4], R1
  mov R1, 415
  mov [SP+5], R1
  call __function_define_region
  mov R1, 3101
  mov [SP], R1
  call __function_select_region
  mov R1, 96
  mov [SP], R1
  mov R1, 320
  mov [SP+1], R1
  mov R1, 191
  mov [SP+2], R1
  mov R1, 415
  mov [SP+3], R1
  mov R1, 144
  mov [SP+4], R1
  mov R1, 415
  mov [SP+5], R1
  call __function_define_region
  mov R1, 3103
  mov [SP], R1
  call __function_select_region
  mov R1, 192
  mov [SP], R1
  mov R1, 320
  mov [SP+1], R1
  mov R1, 287
  mov [SP+2], R1
  mov R1, 415
  mov [SP+3], R1
  mov R1, 240
  mov [SP+4], R1
  mov R1, 415
  mov [SP+5], R1
  call __function_define_region
  mov R1, 3104
  mov [SP], R1
  call __function_select_region
  mov R1, 288
  mov [SP], R1
  mov R1, 320
  mov [SP+1], R1
  mov R1, 383
  mov [SP+2], R1
  mov R1, 415
  mov [SP+3], R1
  mov R1, 336
  mov [SP+4], R1
  mov R1, 415
  mov [SP+5], R1
  call __function_define_region
  mov R1, 3105
  mov [SP], R1
  call __function_select_region
  mov R1, 384
  mov [SP], R1
  mov R1, 320
  mov [SP+1], R1
  mov R1, 479
  mov [SP+2], R1
  mov R1, 415
  mov [SP+3], R1
  mov R1, 432
  mov [SP+4], R1
  mov R1, 415
  mov [SP+5], R1
  call __function_define_region
  mov R1, 3106
  mov [SP], R1
  call __function_select_region
  mov R1, 480
  mov [SP], R1
  mov R1, 320
  mov [SP+1], R1
  mov R1, 575
  mov [SP+2], R1
  mov R1, 415
  mov [SP+3], R1
  mov R1, 528
  mov [SP+4], R1
  mov R1, 415
  mov [SP+5], R1
  call __function_define_region
  mov R1, 3102
  mov [SP], R1
  call __function_select_region
  mov R1, 601
  mov [SP], R1
  mov R1, 1
  mov [SP+1], R1
  mov R1, 601
  mov [SP+2], R1
  mov R1, 1
  mov [SP+3], R1
  call __function_define_region_topleft
  mov R0, 0
  mov [BP-1], R0
__for_7587_start:
  mov R0, [BP-1]
  ilt R0, 128
  jf R0, __for_7587_end
  mov R0, [BP-1]
  cif R0
  fadd R0, 0.500000
  fmul R0, 2.000000
  fdiv R0, 128.000000
  fsub R0, 1.000000
  mov R1, global_CameraX
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_7587_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_7587_start
__for_7587_end:
__function_DefineRegions_return:
  mov SP, BP
  pop BP
  ret

__function_SpawnItem:
  push BP
  mov BP, SP
  isub SP, 1
  mov R0, 0
  mov [BP-1], R0
__for_7615_start:
  mov R0, [BP-1]
  ilt R0, 32
  jf R0, __for_7615_end
__if_7625_start:
  mov R1, global_Items
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  cib R0
  jf R0, __if_7625_end
  jmp __for_7615_continue
__if_7625_end:
  mov R0, [BP+2]
  mov R1, global_Items
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 2
  mov [R1], R0
  mov R0, [BP+3]
  mov R1, global_Items
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+4]
  mov R1, global_Items
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 1
  mov [R1], R0
  mov R0, [BP+5]
  mov R1, global_Items
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 3
  mov [R1], R0
  mov R0, 1
  mov R1, global_Items
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
  jmp __function_SpawnItem_return
__for_7615_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_7615_start
__for_7615_end:
__function_SpawnItem_return:
  mov SP, BP
  pop BP
  ret

__function_LoadLevel:
  push BP
  mov BP, SP
  isub SP, 10
  mov R0, [BP+2]
  imul R0, 1024
  mov [BP-1], R0
  mov R0, 0
  mov [global_DoorCount], R0
  mov R0, 0
  mov [global_SecretsTotal], R0
  mov R0, 0
  mov [BP-3], R0
__for_7675_start:
  mov R0, [BP-3]
  ilt R0, 32
  jf R0, __for_7675_end
  mov R0, 0
  mov [BP-4], R0
__for_7684_start:
  mov R0, [BP-4]
  ilt R0, 32
  jf R0, __for_7684_end
  mov R0, global_LevelTiles
  mov R1, [BP-1]
  mov R2, [BP-3]
  imul R2, 32
  iadd R1, R2
  mov R2, [BP-4]
  iadd R1, R2
  iadd R0, R1
  mov R0, [R0]
  mov [BP-5], R0
  mov R0, [BP-5]
  mov R1, global_Map
  mov R2, [BP-3]
  imul R2, 32
  iadd R1, R2
  mov R2, [BP-4]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_DoorAt
  mov R2, [BP-3]
  imul R2, 32
  iadd R1, R2
  mov R2, [BP-4]
  iadd R1, R2
  mov [R1], R0
__if_7719_start:
  mov R0, [BP-5]
  ige R0, 6
  jf R0, __LogicalAnd_ShortCircuit_7724
  mov R1, [BP-5]
  ile R1, 8
  and R0, R1
__LogicalAnd_ShortCircuit_7724:
  jf R0, __LogicalAnd_ShortCircuit_7728
  mov R1, [global_DoorCount]
  ilt R1, 32
  and R0, R1
__LogicalAnd_ShortCircuit_7728:
  jf R0, __if_7719_end
  mov R0, [BP-4]
  mov R1, global_Doors
  mov R2, [global_DoorCount]
  imul R2, 5
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP-3]
  mov R1, global_Doors
  mov R2, [global_DoorCount]
  imul R2, 5
  iadd R1, R2
  iadd R1, 1
  mov [R1], R0
  mov R0, [BP-5]
  isub R0, 6
  mov R1, global_Doors
  mov R2, [global_DoorCount]
  imul R2, 5
  iadd R1, R2
  iadd R1, 2
  mov [R1], R0
  mov R0, 0
  mov R1, global_Doors
  mov R2, [global_DoorCount]
  imul R2, 5
  iadd R1, R2
  iadd R1, 3
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_Doors
  mov R2, [global_DoorCount]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
  mov R0, [global_DoorCount]
  mov R1, R0
  iadd R1, 1
  mov [global_DoorCount], R1
  mov R0, [global_DoorCount]
  mov R1, global_DoorAt
  mov R2, [BP-3]
  imul R2, 32
  iadd R1, R2
  mov R2, [BP-4]
  iadd R1, R2
  mov [R1], R0
__if_7719_end:
__if_7773_start:
  mov R0, [BP-5]
  ige R0, 11
  jf R0, __if_7773_end
  mov R0, [global_SecretsTotal]
  mov R1, R0
  iadd R1, 1
  mov [global_SecretsTotal], R1
__if_7773_end:
__for_7684_continue:
  mov R0, [BP-4]
  mov R1, R0
  iadd R1, 1
  mov [BP-4], R1
  jmp __for_7684_start
__for_7684_end:
__for_7675_continue:
  mov R0, [BP-3]
  mov R1, R0
  iadd R1, 1
  mov [BP-3], R1
  jmp __for_7675_start
__for_7675_end:
  mov R0, global_LevelStarts
  mov R1, [BP+2]
  imul R1, 3
  iadd R0, R1
  mov R0, [R0]
  cif R0
  fadd R0, 0.500000
  mov [global_PlayerX], R0
  mov R0, global_LevelStarts
  mov R1, [BP+2]
  imul R1, 3
  iadd R1, 1
  iadd R0, R1
  mov R0, [R0]
  cif R0
  fadd R0, 0.500000
  mov [global_PlayerY], R0
  mov R0, global_LevelStarts
  mov R1, [BP+2]
  imul R1, 3
  iadd R1, 2
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
  mov R0, 0.000000
  mov [global_DirX], R0
  mov R0, 0.000000
  mov [global_DirY], R0
__if_7814_start:
  mov R0, [BP-2]
  ieq R0, 0
  jf R0, __if_7814_end
  mov R0, 1.000000
  mov [global_DirX], R0
__if_7814_end:
__if_7821_start:
  mov R0, [BP-2]
  ieq R0, 1
  jf R0, __if_7821_end
  mov R0, 1.000000
  mov [global_DirY], R0
__if_7821_end:
__if_7828_start:
  mov R0, [BP-2]
  ieq R0, 2
  jf R0, __if_7828_end
  mov R0, -1.000000
  mov [global_DirX], R0
__if_7828_end:
__if_7836_start:
  mov R0, [BP-2]
  ieq R0, 3
  jf R0, __if_7836_end
  mov R0, -1.000000
  mov [global_DirY], R0
__if_7836_end:
  mov R0, [global_DirY]
  fsgn R0
  fmul R0, 0.660000
  mov [global_PlaneX], R0
  mov R0, [global_DirX]
  fmul R0, 0.660000
  mov [global_PlaneY], R0
  mov R0, 0
  mov [global_EnemiesTotal], R0
  mov R0, -1
  mov [global_BossIndex], R0
  mov R0, 0
  mov [BP-3], R0
__for_7862_start:
  mov R0, [BP-3]
  ilt R0, 24
  jf R0, __for_7862_end
  mov R0, [BP+2]
  imul R0, 24
  mov R1, [BP-3]
  iadd R0, R1
  imul R0, 3
  mov [BP-4], R0
  mov R0, global_LevelEnemies
  mov R1, [BP-4]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-5], R0
  mov R0, [BP-5]
  mov R1, global_Enemies
  mov R2, [BP-3]
  imul R2, 11
  iadd R1, R2
  iadd R1, 2
  mov [R1], R0
  mov R0, 0
  mov R1, global_Enemies
  mov R2, [BP-3]
  imul R2, 11
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
__if_7899_start:
  mov R0, [BP-5]
  ilt R0, 0
  jf R0, __if_7899_end
  jmp __for_7862_continue
__if_7899_end:
  mov R0, global_LevelEnemies
  mov R1, [BP-4]
  iadd R1, 1
  iadd R0, R1
  mov R0, [R0]
  cif R0
  fadd R0, 0.500000
  mov R1, global_Enemies
  mov R2, [BP-3]
  imul R2, 11
  iadd R1, R2
  mov [R1], R0
  mov R0, global_LevelEnemies
  mov R1, [BP-4]
  iadd R1, 2
  iadd R0, R1
  mov R0, [R0]
  cif R0
  fadd R0, 0.500000
  mov R1, global_Enemies
  mov R2, [BP-3]
  imul R2, 11
  iadd R1, R2
  iadd R1, 1
  mov [R1], R0
  mov R0, global_TypeHP
  mov R1, [BP-5]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_Enemies
  mov R2, [BP-3]
  imul R2, 11
  iadd R1, R2
  iadd R1, 3
  mov [R1], R0
  mov R0, 1
  mov R1, global_Enemies
  mov R2, [BP-3]
  imul R2, 11
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
  mov R0, 0
  mov R1, global_Enemies
  mov R2, [BP-3]
  imul R2, 11
  iadd R1, R2
  iadd R1, 5
  mov [R1], R0
  mov R0, 0
  mov R1, global_Enemies
  mov R2, [BP-3]
  imul R2, 11
  iadd R1, R2
  iadd R1, 6
  mov [R1], R0
  mov R2, 120
  mov [SP], R2
  call __function_RandomInt
  mov R1, R0
  iadd R1, 60
  mov R2, global_Enemies
  mov R3, [BP-3]
  imul R3, 11
  iadd R2, R3
  iadd R2, 7
  mov [R2], R1
  mov R0, R1
  mov R2, 30
  mov [SP], R2
  call __function_RandomInt
  mov R1, R0
  mov R2, global_Enemies
  mov R3, [BP-3]
  imul R3, 11
  iadd R2, R3
  iadd R2, 8
  mov [R2], R1
  mov R0, R1
  mov R0, 0
  mov R1, global_Enemies
  mov R2, [BP-3]
  imul R2, 11
  iadd R1, R2
  iadd R1, 9
  mov [R1], R0
  mov R0, 0
  mov R1, global_Enemies
  mov R2, [BP-3]
  imul R2, 11
  iadd R1, R2
  iadd R1, 10
  mov [R1], R0
  mov R0, [global_EnemiesTotal]
  mov R1, R0
  iadd R1, 1
  mov [global_EnemiesTotal], R1
__if_7984_start:
  mov R0, [BP-5]
  ieq R0, 4
  jf R0, __if_7984_end
  mov R0, [BP-3]
  mov [global_BossIndex], R0
__if_7984_end:
__for_7862_continue:
  mov R0, [BP-3]
  mov R1, R0
  iadd R1, 1
  mov [BP-3], R1
  jmp __for_7862_start
__for_7862_end:
  mov R0, 0
  mov [BP-3], R0
__for_7991_start:
  mov R0, [BP-3]
  ilt R0, 32
  jf R0, __for_7991_end
  mov R0, 0
  mov R1, global_Items
  mov R2, [BP-3]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
__for_7991_continue:
  mov R0, [BP-3]
  mov R1, R0
  iadd R1, 1
  mov [BP-3], R1
  jmp __for_7991_start
__for_7991_end:
  mov R0, 0
  mov [BP-3], R0
__for_8006_start:
  mov R0, [BP-3]
  ilt R0, 24
  jf R0, __for_8006_end
  mov R0, [BP+2]
  imul R0, 24
  mov R1, [BP-3]
  iadd R0, R1
  imul R0, 3
  mov [BP-4], R0
  mov R0, global_LevelItems
  mov R1, [BP-4]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-5], R0
__if_8031_start:
  mov R0, [BP-5]
  ilt R0, 0
  jf R0, __if_8031_end
  jmp __for_8006_continue
__if_8031_end:
  mov R0, 20
  mov [BP-6], R0
__if_8039_start:
  mov R0, [BP-5]
  ieq R0, 5
  jf R0, __if_8039_end
  mov R0, 35
  mov [BP-6], R0
__if_8039_end:
__if_8046_start:
  mov R0, [BP-5]
  ieq R0, 25
  jf R0, __if_8046_end
  mov R0, 8
  mov [BP-6], R0
__if_8046_end:
__if_8053_start:
  mov R0, [BP-5]
  ieq R0, 26
  jf R0, __if_8053_end
  mov R0, 40
  mov [BP-6], R0
__if_8053_end:
__if_8060_start:
  mov R0, [BP-5]
  ieq R0, 27
  jf R0, __if_8060_end
  mov R0, 8
  mov [BP-6], R0
__if_8060_end:
__if_8067_start:
  mov R0, [BP-5]
  ieq R0, 28
  jf R0, __if_8067_end
  mov R0, 30
  mov [BP-6], R0
__if_8067_end:
  mov R1, [BP-5]
  mov [SP], R1
  mov R1, global_LevelItems
  mov R2, [BP-4]
  iadd R2, 1
  iadd R1, R2
  mov R1, [R1]
  cif R1
  fadd R1, 0.500000
  mov [SP+1], R1
  mov R1, global_LevelItems
  mov R2, [BP-4]
  iadd R2, 2
  iadd R1, R2
  mov R1, [R1]
  cif R1
  fadd R1, 0.500000
  mov [SP+2], R1
  mov R1, [BP-6]
  mov [SP+3], R1
  call __function_SpawnItem
__for_8006_continue:
  mov R0, [BP-3]
  mov R1, R0
  iadd R1, 1
  mov [BP-3], R1
  jmp __for_8006_start
__for_8006_end:
  mov R0, 0
  mov [BP-3], R0
__for_8091_start:
  mov R0, [BP-3]
  ilt R0, 16
  jf R0, __for_8091_end
  mov R0, 0
  mov R1, global_Projectiles
  mov R2, [BP-3]
  imul R2, 8
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
__for_8091_continue:
  mov R0, [BP-3]
  mov R1, R0
  iadd R1, 1
  mov [BP-3], R1
  jmp __for_8091_start
__for_8091_end:
  mov R0, 0
  mov [BP-3], R0
__for_8106_start:
  mov R0, [BP-3]
  ilt R0, 16
  jf R0, __for_8106_end
  mov R0, 0
  mov R1, global_Bolts
  mov R2, [BP-3]
  imul R2, 8
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
__for_8106_continue:
  mov R0, [BP-3]
  mov R1, R0
  iadd R1, 1
  mov [BP-3], R1
  jmp __for_8106_start
__for_8106_end:
  mov R0, 0
  mov [global_HasRedKey], R0
  mov R0, 0
  mov [global_HasBlueKey], R0
  mov R0, 0
  mov [global_Kills], R0
  mov R0, 0
  mov [global_SecretsFound], R0
  mov R0, 0
  mov [global_LevelFrames], R0
  mov R0, 0
  mov [global_BossActive], R0
  mov R0, 0
  mov [global_BossEnraged], R0
  mov R0, 0
  mov [global_BossDeathTimer], R0
  mov R0, 0
  mov [global_FireTimer], R0
  mov R0, 0
  mov [global_FlashTimer], R0
  mov R0, 0
  mov [global_DamageFlash], R0
  mov R0, 0
  mov [global_PickupFlash], R0
  mov R0, 0
  mov [global_LockedTimer], R0
  mov R0, 0
  mov [global_MessageTimer], R0
  mov R0, [global_Ammo]
  mov [global_LevelStartAmmo], R0
  mov R0, [global_Shells]
  mov [global_LevelStartShells], R0
  mov R0, [global_Cells]
  mov [global_LevelStartCells], R0
  mov R0, [global_HasShotgun]
  mov [global_LevelStartShotgun], R0
  mov R0, [global_HasRifle]
  mov [global_LevelStartRifle], R0
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, global_LevelName
  mov [SP+1], R1
  call __function_GetLevelName
__function_LoadLevel_return:
  mov SP, BP
  pop BP
  ret

__function_NewGame:
  push BP
  mov BP, SP
  isub SP, 1
  mov R0, 100
  mov [global_Health], R0
  mov R0, 30
  mov [global_Ammo], R0
  mov R0, 0
  mov [global_Shells], R0
  mov R0, 0
  mov [global_Cells], R0
  mov R0, 0
  mov [global_Weapon], R0
  mov R0, 0
  mov [global_HasShotgun], R0
  mov R0, 0
  mov [global_HasRifle], R0
  mov R0, 0
  mov [global_CurrentLevel], R0
  mov R0, 0
  mov [global_TotalKills], R0
  mov R0, 0
  mov [global_TotalEnemies], R0
  mov R0, 0
  mov [global_TotalSecrets], R0
  mov R0, 0
  mov [global_TotalSecretsAvailable], R0
  mov R1, 0
  mov [SP], R1
  call __function_LoadLevel
__function_NewGame_return:
  mov SP, BP
  pop BP
  ret

__function_RotatePlayer:
  push BP
  mov BP, SP
  isub SP, 5
  mov R1, [BP+2]
  mov [SP], R1
  call __function_cos
  mov [BP-1], R0
  mov R1, [BP+2]
  mov [SP], R1
  call __function_sin
  mov [BP-2], R0
  mov R0, [global_DirX]
  mov [BP-3], R0
  mov R0, [global_DirX]
  mov R1, [BP-1]
  fmul R0, R1
  mov R1, [global_DirY]
  mov R2, [BP-2]
  fmul R1, R2
  fsub R0, R1
  mov [global_DirX], R0
  mov R0, [BP-3]
  mov R1, [BP-2]
  fmul R0, R1
  mov R1, [global_DirY]
  mov R2, [BP-1]
  fmul R1, R2
  fadd R0, R1
  mov [global_DirY], R0
  mov R0, [global_PlaneX]
  mov [BP-4], R0
  mov R0, [global_PlaneX]
  mov R1, [BP-1]
  fmul R0, R1
  mov R1, [global_PlaneY]
  mov R2, [BP-2]
  fmul R1, R2
  fsub R0, R1
  mov [global_PlaneX], R0
  mov R0, [BP-4]
  mov R1, [BP-2]
  fmul R0, R1
  mov R1, [global_PlaneY]
  mov R2, [BP-1]
  fmul R1, R2
  fadd R0, R1
  mov [global_PlaneY], R0
__function_RotatePlayer_return:
  mov SP, BP
  pop BP
  ret

__function_TryMove:
  push BP
  mov BP, SP
  isub SP, 3
__if_8275_start:
  mov R1, [global_PlayerX]
  mov R2, [BP+2]
  fadd R1, R2
  mov [SP], R1
  mov R1, [global_PlayerY]
  mov [SP+1], R1
  mov R1, 0.280000
  mov [SP+2], R1
  call __function_CanStand
  cib R0
  jf R0, __if_8275_end
  mov R0, [global_PlayerX]
  mov R1, [BP+2]
  fadd R0, R1
  mov [global_PlayerX], R0
__if_8275_end:
__if_8285_start:
  mov R1, [global_PlayerX]
  mov [SP], R1
  mov R1, [global_PlayerY]
  mov R2, [BP+3]
  fadd R1, R2
  mov [SP+1], R1
  mov R1, 0.280000
  mov [SP+2], R1
  call __function_CanStand
  cib R0
  jf R0, __if_8285_end
  mov R0, [global_PlayerY]
  mov R1, [BP+3]
  fadd R0, R1
  mov [global_PlayerY], R0
__if_8285_end:
__function_TryMove_return:
  mov SP, BP
  pop BP
  ret

__function_DamagePlayer:
  push BP
  mov BP, SP
  isub SP, 4
  mov R0, [global_Health]
  mov R1, [BP+2]
  isub R0, R1
  mov [global_Health], R0
  mov R0, 14
  mov [global_DamageFlash], R0
  call __function_RandomPitch
  mov R1, R0
  mov [BP-1], R1
  mov R1, 4
  mov [SP], R1
  mov R1, 0.900000
  mov [SP+1], R1
  mov R1, [BP-1]
  mov [SP+2], R1
  call __function_PlaySfx
__function_DamagePlayer_return:
  mov SP, BP
  pop BP
  ret

__function_KillEnemy:
  push BP
  mov BP, SP
  isub SP, 6
  mov R0, 0
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
  mov R0, [global_Kills]
  mov R1, R0
  iadd R1, 1
  mov [global_Kills], R1
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 2
  mov R0, [R1]
  mov [BP-1], R0
__if_8323_start:
  mov R0, [BP-1]
  ieq R0, 4
  jf R0, __if_8323_end
  mov R0, 160
  mov [global_BossDeathTimer], R0
  mov R1, 3
  mov [SP], R1
  mov R1, 1.000000
  mov [SP+1], R1
  mov R1, 0.600000
  mov [SP+2], R1
  call __function_PlaySfx
  mov R1, 15
  mov [SP], R1
  mov R1, 1.000000
  mov [SP+1], R1
  mov R1, 1.300000
  mov [SP+2], R1
  call __function_PlaySfx
  mov R1, __literal_string_8340
  mov [SP], R1
  call __function_ShowMessage
  jmp __function_KillEnemy_return
__if_8323_end:
  call __function_RandomPitch
  mov R1, R0
  mov [BP-2], R1
  mov R1, 3
  mov [SP], R1
  mov R1, 1.000000
  mov [SP+1], R1
  mov R1, [BP-2]
  mov [SP+2], R1
  call __function_PlaySfx
__if_8346_start:
  mov R2, 100
  mov [SP], R2
  call __function_RandomInt
  mov R1, R0
  mov R2, global_TypeDropChance
  mov R3, [BP-1]
  iadd R2, R3
  mov R2, [R2]
  ilt R1, R2
  mov R0, R1
  jf R0, __if_8346_end
  mov R1, global_TypeDropItem
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  mov [SP], R1
  mov R2, global_Enemies
  mov R3, [BP+2]
  imul R3, 11
  iadd R2, R3
  mov R1, [R2]
  mov [SP+1], R1
  mov R2, global_Enemies
  mov R3, [BP+2]
  imul R3, 11
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  mov [SP+2], R1
  mov R1, global_TypeDropAmount
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  mov [SP+3], R1
  call __function_SpawnItem
__if_8346_end:
__function_KillEnemy_return:
  mov SP, BP
  pop BP
  ret

__function_DamageEnemy:
  push BP
  mov BP, SP
  isub SP, 4
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 3
  mov R0, [R1]
  mov R2, [BP+3]
  isub R0, R2
  mov [R1], R0
  mov R0, 10
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 5
  mov [R1], R0
  mov R0, 1
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 9
  mov [R1], R0
__if_8389_start:
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 2
  mov R0, [R1]
  ine R0, 4
  jf R0, __if_8389_end
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 7
  mov R0, [R1]
  iadd R0, 20
  mov [R1], R0
__if_8389_end:
__if_8402_start:
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 3
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_8402_end
  mov R1, [BP+2]
  mov [SP], R1
  call __function_KillEnemy
  jmp __function_DamageEnemy_return
__if_8402_end:
  call __function_RandomPitch
  mov R1, R0
  mov [BP-1], R1
  mov R1, 2
  mov [SP], R1
  mov R1, 0.800000
  mov [SP+1], R1
  mov R1, [BP-1]
  mov [SP+2], R1
  call __function_PlaySfx
__if_8417_start:
  mov R0, [BP+2]
  mov R1, [global_BossIndex]
  ieq R0, R1
  jf R0, __LogicalAnd_ShortCircuit_8423
  mov R1, [global_BossEnraged]
  bnot R1
  and R0, R1
__LogicalAnd_ShortCircuit_8423:
  jf R0, __LogicalAnd_ShortCircuit_8428
  mov R2, global_Enemies
  mov R3, [BP+2]
  imul R3, 11
  iadd R2, R3
  iadd R2, 3
  mov R1, [R2]
  mov R2, [4691]
  idiv R2, 2
  ile R1, R2
  and R0, R1
__LogicalAnd_ShortCircuit_8428:
  jf R0, __if_8417_end
  mov R0, 1
  mov [global_BossEnraged], R0
  mov R1, 15
  mov [SP], R1
  mov R1, 1.000000
  mov [SP+1], R1
  mov R1, 1.150000
  mov [SP+2], R1
  call __function_PlaySfx
  mov R1, __literal_string_8444
  mov [SP], R1
  call __function_ShowMessage
__if_8417_end:
__function_DamageEnemy_return:
  mov SP, BP
  pop BP
  ret

__function_FindTarget:
  push BP
  mov BP, SP
  isub SP, 9
  push R1
  push R2
  push R3
  push R4
  push R5
  isub SP, 1
  mov R0, 1.000000
  mov R1, [global_PlaneX]
  mov R2, [global_DirY]
  fmul R1, R2
  mov R2, [global_DirX]
  mov R3, [global_PlaneY]
  fmul R2, R3
  fsub R1, R2
  fdiv R0, R1
  mov [BP-1], R0
  mov R0, [BP+2]
  fmul R0, 64.000000
  cfi R0
  iadd R0, 64
  mov [BP-2], R0
__if_8474_start:
  mov R0, [BP-2]
  ilt R0, 0
  jf R0, __if_8474_end
  mov R0, 0
  mov [BP-2], R0
__if_8474_end:
__if_8481_start:
  mov R0, [BP-2]
  igt R0, 127
  jf R0, __if_8481_end
  mov R0, 127
  mov [BP-2], R0
__if_8481_end:
  mov R0, global_ZBuffer
  mov R1, [BP-2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-3], R0
__if_8497_start:
  mov R0, [BP-3]
  mov R1, [BP+3]
  fgt R0, R1
  jf R0, __if_8497_end
  mov R0, [BP+3]
  mov [BP-3], R0
__if_8497_end:
  mov R0, -1
  mov [BP-4], R0
  mov R0, 0
  mov [BP-5], R0
__for_8508_start:
  mov R0, [BP-5]
  ilt R0, 24
  jf R0, __for_8508_end
__if_8518_start:
  mov R1, global_Enemies
  mov R2, [BP-5]
  imul R2, 11
  iadd R1, R2
  iadd R1, 2
  mov R0, [R1]
  ilt R0, 0
  jt R0, __LogicalOr_ShortCircuit_8530
  mov R2, global_Enemies
  mov R3, [BP-5]
  imul R3, 11
  iadd R2, R3
  iadd R2, 4
  mov R1, [R2]
  bnot R1
  or R0, R1
__LogicalOr_ShortCircuit_8530:
  jf R0, __if_8518_end
  jmp __for_8508_continue
__if_8518_end:
  mov R1, global_Enemies
  mov R2, [BP-5]
  imul R2, 11
  iadd R1, R2
  mov R0, [R1]
  mov R1, [global_PlayerX]
  fsub R0, R1
  mov [BP-6], R0
  mov R1, global_Enemies
  mov R2, [BP-5]
  imul R2, 11
  iadd R1, R2
  iadd R1, 1
  mov R0, [R1]
  mov R1, [global_PlayerY]
  fsub R0, R1
  mov [BP-7], R0
  mov R0, [BP-1]
  mov R1, [global_DirY]
  mov R2, [BP-6]
  fmul R1, R2
  mov R2, [global_DirX]
  mov R3, [BP-7]
  fmul R2, R3
  fsub R1, R2
  fmul R0, R1
  mov [BP-8], R0
  mov R0, [BP-1]
  mov R1, [global_PlaneY]
  fsgn R1
  mov R2, [BP-6]
  fmul R1, R2
  mov R2, [global_PlaneX]
  mov R3, [BP-7]
  fmul R2, R3
  fadd R1, R2
  fmul R0, R1
  mov [BP-9], R0
__if_8573_start:
  mov R0, [BP-9]
  flt R0, 0.100000
  jt R0, __LogicalOr_ShortCircuit_8578
  mov R1, [BP-9]
  mov R2, [BP-3]
  fge R1, R2
  or R0, R1
__LogicalOr_ShortCircuit_8578:
  jf R0, __if_8573_end
  jmp __for_8508_continue
__if_8573_end:
__if_8582_start:
  mov R2, [BP-8]
  mov R3, [BP+2]
  mov R4, [BP-9]
  fmul R3, R4
  fsub R2, R3
  mov [SP], R2
  call __function_fabs
  mov R1, R0
  mov R2, global_TypeHitRadius
  mov R4, global_Enemies
  mov R5, [BP-5]
  imul R5, 11
  iadd R4, R5
  iadd R4, 2
  mov R3, [R4]
  iadd R2, R3
  mov R2, [R2]
  flt R1, R2
  mov R0, R1
  jf R0, __if_8582_end
  mov R0, [BP-5]
  mov [BP-4], R0
  mov R0, [BP-9]
  mov [BP-3], R0
__if_8582_end:
__for_8508_continue:
  mov R0, [BP-5]
  mov R1, R0
  iadd R1, 1
  mov [BP-5], R1
  jmp __for_8508_start
__for_8508_end:
  mov R0, [BP-4]
__function_FindTarget_return:
  iadd SP, 1
  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_FireBlaster:
  push BP
  mov BP, SP
  isub SP, 5
  mov R0, [global_Ammo]
  mov R1, R0
  isub R1, 1
  mov [global_Ammo], R1
  mov R0, 12
  mov [global_FireTimer], R0
  mov R0, 4
  mov [global_FlashTimer], R0
  call __function_RandomPitch
  mov R1, R0
  mov [BP-2], R1
  mov R1, 0
  mov [SP], R1
  mov R1, 0.700000
  mov [SP+1], R1
  mov R1, [BP-2]
  mov [SP+2], R1
  call __function_PlaySfx
  mov R1, 0.000000
  mov [SP], R1
  mov R1, 100.000000
  mov [SP+1], R1
  call __function_FindTarget
  mov [BP-1], R0
__if_8623_start:
  mov R0, [BP-1]
  ige R0, 0
  jf R0, __if_8623_end
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 1
  mov [SP+1], R1
  call __function_DamageEnemy
__if_8623_end:
__function_FireBlaster_return:
  mov SP, BP
  pop BP
  ret

__function_FireShotgun:
  push BP
  mov BP, SP
  isub SP, 6
  mov R0, [global_Shells]
  mov R1, R0
  isub R1, 1
  mov [global_Shells], R1
  mov R0, 40
  mov [global_FireTimer], R0
  mov R0, 6
  mov [global_FlashTimer], R0
  call __function_RandomPitch
  mov R1, R0
  mov [BP-3], R1
  mov R1, 16
  mov [SP], R1
  mov R1, 0.900000
  mov [SP+1], R1
  mov R1, [BP-3]
  mov [SP+2], R1
  call __function_PlaySfx
  mov R0, 0
  mov [BP-1], R0
__for_8643_start:
  mov R0, [BP-1]
  ilt R0, 24
  jf R0, __for_8643_end
  mov R0, 0
  mov R1, global_PelletHits
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_8643_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_8643_start
__for_8643_end:
  mov R0, 0
  mov [BP-1], R0
__for_8657_start:
  mov R0, [BP-1]
  ilt R0, 7
  jf R0, __for_8657_end
  mov R1, [BP-1]
  isub R1, 3
  cif R1
  fmul R1, 0.045000
  mov [SP], R1
  mov R1, 12.000000
  mov [SP+1], R1
  call __function_FindTarget
  mov [BP-2], R0
__if_8677_start:
  mov R0, [BP-2]
  ige R0, 0
  jf R0, __if_8677_end
  mov R2, global_PelletHits
  mov R3, [BP-2]
  iadd R2, R3
  mov R0, [R2]
  mov R1, R0
  iadd R1, 1
  mov [R2], R1
__if_8677_end:
__for_8657_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_8657_start
__for_8657_end:
  mov R0, 0
  mov [BP-1], R0
__for_8685_start:
  mov R0, [BP-1]
  ilt R0, 24
  jf R0, __for_8685_end
__if_8694_start:
  mov R0, global_PelletHits
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  igt R0, 0
  jf R0, __LogicalAnd_ShortCircuit_8704
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  iadd R2, 4
  mov R1, [R2]
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_8704:
  jf R0, __if_8694_end
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, global_PelletHits
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  mov [SP+1], R1
  call __function_DamageEnemy
__if_8694_end:
__for_8685_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_8685_start
__for_8685_end:
__function_FireShotgun_return:
  mov SP, BP
  pop BP
  ret

__function_FireRifle:
  push BP
  mov BP, SP
  isub SP, 5
  mov R0, [global_Cells]
  mov R1, R0
  isub R1, 1
  mov [global_Cells], R1
  mov R0, 5
  mov [global_FireTimer], R0
  mov R0, 3
  mov [global_FlashTimer], R0
  call __function_RandomPitch
  mov R1, R0
  mov [BP-2], R1
  mov R1, 17
  mov [SP], R1
  mov R1, 0.500000
  mov [SP+1], R1
  mov R1, [BP-2]
  mov [SP+2], R1
  call __function_PlaySfx
  mov R0, 0
  mov [BP-1], R0
__for_8723_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_8723_end
__if_8733_start:
  mov R1, global_Bolts
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  cib R0
  jf R0, __if_8733_end
  jmp __for_8723_continue
__if_8733_end:
  mov R0, [global_PlayerX]
  mov R1, [global_DirX]
  fmul R1, 0.300000
  fadd R0, R1
  mov R1, global_Bolts
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  mov [R1], R0
  mov R0, [global_PlayerY]
  mov R1, [global_DirY]
  fmul R1, 0.300000
  fadd R0, R1
  mov R1, global_Bolts
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 1
  mov [R1], R0
  mov R0, [global_DirX]
  fmul R0, 0.320000
  mov R1, global_Bolts
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 2
  mov [R1], R0
  mov R0, [global_DirY]
  fmul R0, 0.320000
  mov R1, global_Bolts
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 3
  mov [R1], R0
  mov R0, 70
  mov R1, global_Bolts
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 7
  mov [R1], R0
  mov R0, 1
  mov R1, global_Bolts
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
  jmp __function_FireRifle_return
__for_8723_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_8723_start
__for_8723_end:
__function_FireRifle_return:
  mov SP, BP
  pop BP
  ret

__function_WeaponAmmo:
  push BP
  mov BP, SP
__if_8790_start:
  mov R0, [BP+2]
  ieq R0, 1
  jf R0, __if_8790_end
  mov R0, [global_Shells]
  jmp __function_WeaponAmmo_return
__if_8790_end:
__if_8796_start:
  mov R0, [BP+2]
  ieq R0, 2
  jf R0, __if_8796_end
  mov R0, [global_Cells]
  jmp __function_WeaponAmmo_return
__if_8796_end:
  mov R0, [global_Ammo]
__function_WeaponAmmo_return:
  mov SP, BP
  pop BP
  ret

__function_OwnsWeapon:
  push BP
  mov BP, SP
__if_8806_start:
  mov R0, [BP+2]
  ieq R0, 1
  jf R0, __if_8806_end
  mov R0, [global_HasShotgun]
  jmp __function_OwnsWeapon_return
__if_8806_end:
__if_8812_start:
  mov R0, [BP+2]
  ieq R0, 2
  jf R0, __if_8812_end
  mov R0, [global_HasRifle]
  jmp __function_OwnsWeapon_return
__if_8812_end:
  mov R0, 1
__function_OwnsWeapon_return:
  mov SP, BP
  pop BP
  ret

__function_NextWeapon:
  push BP
  mov BP, SP
  isub SP, 5
  mov R0, [global_Weapon]
  mov [BP-1], R0
  mov R0, 0
  mov [BP-2], R0
__for_8825_start:
  mov R0, [BP-2]
  ilt R0, 3
  jf R0, __for_8825_end
  mov R0, [BP-1]
  iadd R0, 1
  imod R0, 3
  mov [BP-1], R0
__if_8843_start:
  mov R2, [BP-1]
  mov [SP], R2
  call __function_OwnsWeapon
  mov R1, R0
  bnot R1
  mov R0, R1
  jf R0, __if_8843_end
  jmp __for_8825_continue
__if_8843_end:
__if_8848_start:
  mov R1, [BP+2]
  cib R1
  jf R1, __LogicalAnd_ShortCircuit_8850
  mov R3, [BP-1]
  mov [SP], R3
  call __function_WeaponAmmo
  mov R2, R0
  ile R2, 0
  and R1, R2
__LogicalAnd_ShortCircuit_8850:
  mov R0, R1
  jf R0, __if_8848_end
  jmp __for_8825_continue
__if_8848_end:
__if_8856_start:
  mov R0, [BP-1]
  mov R1, [global_Weapon]
  ine R0, R1
  jf R0, __if_8856_end
  mov R0, [BP-1]
  mov [global_Weapon], R0
  mov R0, 10
  mov [global_FireTimer], R0
  mov R1, 6
  mov [SP], R1
  mov R1, 0.600000
  mov [SP+1], R1
  mov R1, 1.500000
  mov [SP+2], R1
  call __function_PlaySfx
__if_8856_end:
  jmp __function_NextWeapon_return
__for_8825_continue:
  mov R0, [BP-2]
  mov R1, R0
  iadd R1, 1
  mov [BP-2], R1
  jmp __for_8825_start
__for_8825_end:
__function_NextWeapon_return:
  mov SP, BP
  pop BP
  ret

__function_UpdateBolts:
  push BP
  mov BP, SP
  isub SP, 12
  mov R0, 0
  mov [BP-1], R0
__for_8873_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_8873_end
__if_8883_start:
  mov R1, global_Bolts
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  bnot R0
  jf R0, __if_8883_end
  jmp __for_8873_continue
__if_8883_end:
  mov R2, global_Bolts
  mov R3, [BP-1]
  imul R3, 8
  iadd R2, R3
  iadd R2, 7
  mov R0, [R2]
  mov R1, R0
  isub R1, 1
  mov [R2], R1
  mov R0, 0
  mov [BP-2], R0
__for_8895_start:
  mov R0, [BP-2]
  ilt R0, 2
  jf R0, __LogicalAnd_ShortCircuit_8906
  mov R2, global_Bolts
  mov R3, [BP-1]
  imul R3, 8
  iadd R2, R3
  iadd R2, 4
  mov R1, [R2]
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_8906:
  jf R0, __for_8895_end
  mov R1, global_Bolts
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  mov R0, [R1]
  mov R3, global_Bolts
  mov R4, [BP-1]
  imul R4, 8
  iadd R3, R4
  iadd R3, 2
  mov R2, [R3]
  fmul R2, 0.500000
  fadd R0, R2
  mov [R1], R0
  mov R1, global_Bolts
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 1
  mov R0, [R1]
  mov R3, global_Bolts
  mov R4, [BP-1]
  imul R4, 8
  iadd R3, R4
  iadd R3, 3
  mov R2, [R3]
  fmul R2, 0.500000
  fadd R0, R2
  mov [R1], R0
  mov R1, global_Bolts
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  mov R0, [R1]
  mov [BP-3], R0
  mov R1, global_Bolts
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 1
  mov R0, [R1]
  mov [BP-4], R0
__if_8944_start:
  mov R2, [BP-3]
  mov [SP], R2
  mov R2, [BP-4]
  mov [SP+1], R2
  call __function_IsWall
  mov R1, R0
  cib R1
  jt R1, __LogicalOr_ShortCircuit_8948
  mov R3, global_Bolts
  mov R4, [BP-1]
  imul R4, 8
  iadd R3, R4
  iadd R3, 7
  mov R2, [R3]
  ile R2, 0
  or R1, R2
__LogicalOr_ShortCircuit_8948:
  mov R0, R1
  jf R0, __if_8944_end
  mov R0, 0
  mov R1, global_Bolts
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
  mov R2, [BP-3]
  mov [SP], R2
  mov R2, [BP-4]
  mov [SP+1], R2
  call __function_VolumeAt
  mov R1, R0
  fmul R1, 0.300000
  mov [BP-9], R1
  mov R1, 12
  mov [SP], R1
  mov R1, [BP-9]
  mov [SP+1], R1
  mov R1, 1.600000
  mov [SP+2], R1
  call __function_PlaySfx
  jmp __for_8895_end
__if_8944_end:
  mov R0, 0
  mov [BP-5], R0
__for_8971_start:
  mov R0, [BP-5]
  ilt R0, 24
  jf R0, __for_8971_end
__if_8981_start:
  mov R1, global_Enemies
  mov R2, [BP-5]
  imul R2, 11
  iadd R1, R2
  iadd R1, 2
  mov R0, [R1]
  ilt R0, 0
  jt R0, __LogicalOr_ShortCircuit_8993
  mov R2, global_Enemies
  mov R3, [BP-5]
  imul R3, 11
  iadd R2, R3
  iadd R2, 4
  mov R1, [R2]
  bnot R1
  or R0, R1
__LogicalOr_ShortCircuit_8993:
  jf R0, __if_8981_end
  jmp __for_8971_continue
__if_8981_end:
  mov R1, global_Enemies
  mov R2, [BP-5]
  imul R2, 11
  iadd R1, R2
  mov R0, [R1]
  mov R1, [BP-3]
  fsub R0, R1
  mov [BP-6], R0
  mov R1, global_Enemies
  mov R2, [BP-5]
  imul R2, 11
  iadd R1, R2
  iadd R1, 1
  mov R0, [R1]
  mov R1, [BP-4]
  fsub R0, R1
  mov [BP-7], R0
  mov R0, global_TypeHitRadius
  mov R2, global_Enemies
  mov R3, [BP-5]
  imul R3, 11
  iadd R2, R3
  iadd R2, 2
  mov R1, [R2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-8], R0
__if_9019_start:
  mov R0, [BP-6]
  mov R1, [BP-6]
  fmul R0, R1
  mov R1, [BP-7]
  mov R2, [BP-7]
  fmul R1, R2
  fadd R0, R1
  mov R1, [BP-8]
  mov R2, [BP-8]
  fmul R1, R2
  flt R0, R1
  jf R0, __if_9019_end
  mov R0, 0
  mov R1, global_Bolts
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
  mov R1, [BP-5]
  mov [SP], R1
  mov R1, 1
  mov [SP+1], R1
  call __function_DamageEnemy
  jmp __for_8971_end
__if_9019_end:
__for_8971_continue:
  mov R0, [BP-5]
  mov R1, R0
  iadd R1, 1
  mov [BP-5], R1
  jmp __for_8971_start
__for_8971_end:
__for_8895_continue:
  mov R0, [BP-2]
  mov R1, R0
  iadd R1, 1
  mov [BP-2], R1
  jmp __for_8895_start
__for_8895_end:
__for_8873_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_8873_start
__for_8873_end:
__function_UpdateBolts_return:
  mov SP, BP
  pop BP
  ret

__function_UseInFront:
  push BP
  mov BP, SP
  isub SP, 6
  mov R0, [global_PlayerX]
  mov R1, [global_DirX]
  fmul R1, 1.000000
  fadd R0, R1
  cfi R0
  mov [BP-1], R0
  mov R0, [global_PlayerY]
  mov R1, [global_DirY]
  fmul R1, 1.000000
  fadd R0, R1
  cfi R0
  mov [BP-2], R0
__if_9061_start:
  mov R0, [BP-1]
  ilt R0, 1
  jt R0, __LogicalOr_ShortCircuit_9066
  mov R1, [BP-2]
  ilt R1, 1
  or R0, R1
__LogicalOr_ShortCircuit_9066:
  jt R0, __LogicalOr_ShortCircuit_9070
  mov R1, [BP-1]
  ige R1, 31
  or R0, R1
__LogicalOr_ShortCircuit_9070:
  jt R0, __LogicalOr_ShortCircuit_9076
  mov R1, [BP-2]
  ige R1, 31
  or R0, R1
__LogicalOr_ShortCircuit_9076:
  jf R0, __if_9061_end
__if_9082_start:
  mov R0, [BP-1]
  ilt R0, 0
  jt R0, __LogicalOr_ShortCircuit_9087
  mov R1, [BP-2]
  ilt R1, 0
  or R0, R1
__LogicalOr_ShortCircuit_9087:
  jt R0, __LogicalOr_ShortCircuit_9091
  mov R1, [BP-1]
  ige R1, 32
  or R0, R1
__LogicalOr_ShortCircuit_9091:
  jt R0, __LogicalOr_ShortCircuit_9095
  mov R1, [BP-2]
  ige R1, 32
  or R0, R1
__LogicalOr_ShortCircuit_9095:
  jf R0, __if_9082_end
  jmp __function_UseInFront_return
__if_9082_end:
__if_9099_start:
  mov R0, global_Map
  mov R2, [BP-2]
  imul R2, 32
  iadd R0, R2
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ine R0, 5
  jf R0, __if_9099_end
  jmp __function_UseInFront_return
__if_9099_end:
__if_9061_end:
  mov R0, global_Map
  mov R2, [BP-2]
  imul R2, 32
  iadd R0, R2
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-3], R0
__if_9115_start:
  mov R0, [BP-3]
  ige R0, 11
  jf R0, __if_9115_else
  mov R0, 0
  mov R1, global_Map
  mov R2, [BP-2]
  imul R2, 32
  iadd R1, R2
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, [global_SecretsFound]
  mov R1, R0
  iadd R1, 1
  mov [global_SecretsFound], R1
  mov R1, 10
  mov [SP], R1
  mov R1, 1.000000
  mov [SP+1], R1
  mov R1, 1.000000
  mov [SP+2], R1
  call __function_PlaySfx
  mov R1, __literal_string_9134
  mov [SP], R1
  call __function_ShowMessage
  jmp __if_9115_end
__if_9115_else:
__if_9135_start:
  mov R0, [BP-3]
  ieq R0, 5
  jf R0, __if_9135_end
  mov R0, [global_TotalKills]
  mov R1, [global_Kills]
  iadd R0, R1
  mov [global_TotalKills], R0
  mov R0, [global_TotalEnemies]
  mov R1, [global_EnemiesTotal]
  iadd R0, R1
  mov [global_TotalEnemies], R0
  mov R0, [global_TotalSecrets]
  mov R1, [global_SecretsFound]
  iadd R0, R1
  mov [global_TotalSecrets], R0
  mov R0, [global_TotalSecretsAvailable]
  mov R1, [global_SecretsTotal]
  iadd R0, R1
  mov [global_TotalSecretsAvailable], R0
  call __function_stop_all_channels
  mov R0, 0
  mov [global_StateTimer], R0
__if_9156_start:
  mov R0, [global_CurrentLevel]
  ige R0, 3
  jf R0, __if_9156_else
  mov R1, 8
  mov [SP], R1
  mov R1, 1.000000
  mov [SP+1], R1
  mov R1, 1.000000
  mov [SP+2], R1
  call __function_PlaySfx
  mov R0, 5
  mov [global_GameState], R0
  jmp __if_9156_end
__if_9156_else:
  mov R1, 14
  mov [SP], R1
  mov R1, 1.000000
  mov [SP+1], R1
  mov R1, 1.000000
  mov [SP+2], R1
  call __function_PlaySfx
  mov R0, 3
  mov [global_GameState], R0
__if_9156_end:
__if_9135_end:
__if_9115_end:
__function_UseInFront_return:
  mov SP, BP
  pop BP
  ret

__function_FacingExit:
  push BP
  mov BP, SP
  isub SP, 2
  push R1
  push R2
  mov R0, [global_PlayerX]
  mov R1, [global_DirX]
  fmul R1, 1.000000
  fadd R0, R1
  cfi R0
  mov [BP-1], R0
  mov R0, [global_PlayerY]
  mov R1, [global_DirY]
  fmul R1, 1.000000
  fadd R0, R1
  cfi R0
  mov [BP-2], R0
__if_9197_start:
  mov R0, [BP-1]
  ilt R0, 0
  jt R0, __LogicalOr_ShortCircuit_9202
  mov R1, [BP-2]
  ilt R1, 0
  or R0, R1
__LogicalOr_ShortCircuit_9202:
  jt R0, __LogicalOr_ShortCircuit_9206
  mov R1, [BP-1]
  ige R1, 32
  or R0, R1
__LogicalOr_ShortCircuit_9206:
  jt R0, __LogicalOr_ShortCircuit_9210
  mov R1, [BP-2]
  ige R1, 32
  or R0, R1
__LogicalOr_ShortCircuit_9210:
  jf R0, __if_9197_end
  mov R0, 0
  jmp __function_FacingExit_return
__if_9197_end:
  mov R0, global_Map
  mov R2, [BP-2]
  imul R2, 32
  iadd R0, R2
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 5
__function_FacingExit_return:
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_UpdatePlayer:
  push BP
  mov BP, SP
  isub SP, 11
  mov R1, 0
  mov [SP], R1
  call __function_select_gamepad
  mov R0, 0.055000
  mov [BP-1], R0
  mov R0, 0.045000
  mov [BP-2], R0
  mov R0, 0
  mov [BP-3], R0
__if_9235_start:
  call __function_gamepad_left
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_9235_end
  mov R1, [BP-2]
  fsgn R1
  mov [SP], R1
  call __function_RotatePlayer
__if_9235_end:
__if_9242_start:
  call __function_gamepad_right
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_9242_end
  mov R1, [BP-2]
  mov [SP], R1
  call __function_RotatePlayer
__if_9242_end:
__if_9248_start:
  call __function_gamepad_up
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_9248_end
  mov R1, [global_DirX]
  mov R2, [BP-1]
  fmul R1, R2
  mov [SP], R1
  mov R1, [global_DirY]
  mov R2, [BP-1]
  fmul R1, R2
  mov [SP+1], R1
  call __function_TryMove
  mov R0, 1
  mov [BP-3], R0
__if_9248_end:
__if_9263_start:
  call __function_gamepad_down
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_9263_end
  mov R1, [global_DirX]
  fsgn R1
  mov R2, [BP-1]
  fmul R1, R2
  mov [SP], R1
  mov R1, [global_DirY]
  fsgn R1
  mov R2, [BP-1]
  fmul R1, R2
  mov [SP+1], R1
  call __function_TryMove
  mov R0, 1
  mov [BP-3], R0
__if_9263_end:
  mov R0, [BP-1]
  fmul R0, 0.800000
  fdiv R0, 0.660000
  mov [BP-4], R0
__if_9287_start:
  call __function_gamepad_button_l
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_9287_end
  mov R1, [global_PlaneX]
  fsgn R1
  mov R2, [BP-4]
  fmul R1, R2
  mov [SP], R1
  mov R1, [global_PlaneY]
  fsgn R1
  mov R2, [BP-4]
  fmul R1, R2
  mov [SP+1], R1
  call __function_TryMove
  mov R0, 1
  mov [BP-3], R0
__if_9287_end:
__if_9304_start:
  call __function_gamepad_button_r
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_9304_end
  mov R1, [global_PlaneX]
  mov R2, [BP-4]
  fmul R1, R2
  mov [SP], R1
  mov R1, [global_PlaneY]
  mov R2, [BP-4]
  fmul R1, R2
  mov [SP+1], R1
  call __function_TryMove
  mov R0, 1
  mov [BP-3], R0
__if_9304_end:
__if_9319_start:
  mov R0, [BP-3]
  cib R0
  jf R0, __if_9319_end
  mov R0, [global_WalkPhase]
  mov R1, R0
  iadd R1, 1
  mov [global_WalkPhase], R1
__if_9319_end:
__if_9323_start:
  call __function_gamepad_button_y
  mov R1, R0
  ieq R1, 1
  mov R0, R1
  jf R0, __if_9323_end
  mov R0, [global_ShowMap]
  bnot R0
  mov [global_ShowMap], R0
__if_9323_end:
__if_9331_start:
  call __function_gamepad_button_b
  mov R1, R0
  ieq R1, 1
  mov R0, R1
  jf R0, __if_9331_end
  call __function_UseInFront
__if_9331_end:
__if_9336_start:
  mov R0, [global_GameState]
  ine R0, 2
  jf R0, __if_9336_end
  jmp __function_UpdatePlayer_return
__if_9336_end:
__if_9341_start:
  mov R0, [global_FireTimer]
  igt R0, 0
  jf R0, __if_9341_end
  mov R0, [global_FireTimer]
  mov R1, R0
  isub R1, 1
  mov [global_FireTimer], R1
__if_9341_end:
__if_9347_start:
  mov R0, [global_FlashTimer]
  igt R0, 0
  jf R0, __if_9347_end
  mov R0, [global_FlashTimer]
  mov R1, R0
  isub R1, 1
  mov [global_FlashTimer], R1
__if_9347_end:
__if_9353_start:
  call __function_gamepad_button_x
  mov R1, R0
  ieq R1, 1
  mov R0, R1
  jf R0, __if_9353_end
  mov R1, 0
  mov [SP], R1
  call __function_NextWeapon
__if_9353_end:
__if_9359_start:
  call __function_gamepad_button_a
  mov R1, R0
  igt R1, 0
  jf R1, __LogicalAnd_ShortCircuit_9364
  mov R2, [global_FireTimer]
  ieq R2, 0
  and R1, R2
__LogicalAnd_ShortCircuit_9364:
  mov R0, R1
  jf R0, __if_9359_end
__if_9368_start:
  mov R2, [global_Weapon]
  mov [SP], R2
  call __function_WeaponAmmo
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_9368_else
__if_9374_start:
  mov R0, [global_Weapon]
  ieq R0, 1
  jf R0, __if_9374_else
  call __function_FireShotgun
  jmp __if_9374_end
__if_9374_else:
__if_9379_start:
  mov R0, [global_Weapon]
  ieq R0, 2
  jf R0, __if_9379_else
  call __function_FireRifle
  jmp __if_9379_end
__if_9379_else:
  call __function_FireBlaster
__if_9379_end:
__if_9374_end:
  jmp __if_9368_end
__if_9368_else:
__if_9385_start:
  call __function_gamepad_button_a
  mov R1, R0
  ieq R1, 1
  mov R0, R1
  jf R0, __if_9385_end
  mov R1, 6
  mov [SP], R1
  mov R1, 0.800000
  mov [SP+1], R1
  mov R1, 1.000000
  mov [SP+2], R1
  call __function_PlaySfx
  mov R1, 1
  mov [SP], R1
  call __function_NextWeapon
__if_9385_end:
__if_9368_end:
__if_9359_end:
  mov R0, 0
  mov [BP-5], R0
__for_9396_start:
  mov R0, [BP-5]
  ilt R0, 32
  jf R0, __for_9396_end
__if_9406_start:
  mov R1, global_Items
  mov R2, [BP-5]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  bnot R0
  jf R0, __if_9406_end
  jmp __for_9396_continue
__if_9406_end:
  mov R1, global_Items
  mov R2, [BP-5]
  imul R2, 5
  iadd R1, R2
  mov R0, [R1]
  mov R1, [global_PlayerX]
  fsub R0, R1
  mov [BP-6], R0
  mov R1, global_Items
  mov R2, [BP-5]
  imul R2, 5
  iadd R1, R2
  iadd R1, 1
  mov R0, [R1]
  mov R1, [global_PlayerY]
  fsub R0, R1
  mov [BP-7], R0
__if_9429_start:
  mov R0, [BP-6]
  mov R1, [BP-6]
  fmul R0, R1
  mov R1, [BP-7]
  mov R2, [BP-7]
  fmul R1, R2
  fadd R0, R1
  fgt R0, 0.360000
  jf R0, __if_9429_end
  jmp __for_9396_continue
__if_9429_end:
  mov R1, global_Items
  mov R2, [BP-5]
  imul R2, 5
  iadd R1, R2
  iadd R1, 2
  mov R0, [R1]
  mov [BP-8], R0
__if_9446_start:
  mov R0, [BP-8]
  ieq R0, 5
  jf R0, __if_9446_else
__if_9451_start:
  mov R0, [global_Health]
  ige R0, 100
  jf R0, __if_9451_end
  jmp __for_9396_continue
__if_9451_end:
  mov R2, 100
  mov [SP], R2
  mov R2, [global_Health]
  mov R4, global_Items
  mov R5, [BP-5]
  imul R5, 5
  iadd R4, R5
  iadd R4, 3
  mov R3, [R4]
  iadd R2, R3
  mov [SP+1], R2
  call __function_min
  mov R1, R0
  mov [global_Health], R1
  mov R0, R1
  mov R1, 5
  mov [SP], R1
  mov R1, 0.800000
  mov [SP+1], R1
  mov R1, 1.000000
  mov [SP+2], R1
  call __function_PlaySfx
  jmp __if_9446_end
__if_9446_else:
__if_9470_start:
  mov R0, [BP-8]
  ieq R0, 6
  jf R0, __if_9470_else
  mov R0, [global_Ammo]
  mov R2, global_Items
  mov R3, [BP-5]
  imul R3, 5
  iadd R2, R3
  iadd R2, 3
  mov R1, [R2]
  iadd R0, R1
  mov [global_Ammo], R0
  mov R1, 5
  mov [SP], R1
  mov R1, 0.800000
  mov [SP+1], R1
  mov R1, 1.000000
  mov [SP+2], R1
  call __function_PlaySfx
  jmp __if_9470_end
__if_9470_else:
__if_9485_start:
  mov R0, [BP-8]
  ieq R0, 27
  jf R0, __if_9485_else
  mov R0, [global_Shells]
  mov R2, global_Items
  mov R3, [BP-5]
  imul R3, 5
  iadd R2, R3
  iadd R2, 3
  mov R1, [R2]
  iadd R0, R1
  mov [global_Shells], R0
  mov R1, 5
  mov [SP], R1
  mov R1, 0.800000
  mov [SP+1], R1
  mov R1, 0.850000
  mov [SP+2], R1
  call __function_PlaySfx
  jmp __if_9485_end
__if_9485_else:
__if_9500_start:
  mov R0, [BP-8]
  ieq R0, 28
  jf R0, __if_9500_else
  mov R0, [global_Cells]
  mov R2, global_Items
  mov R3, [BP-5]
  imul R3, 5
  iadd R2, R3
  iadd R2, 3
  mov R1, [R2]
  iadd R0, R1
  mov [global_Cells], R0
  mov R1, 5
  mov [SP], R1
  mov R1, 0.800000
  mov [SP+1], R1
  mov R1, 1.150000
  mov [SP+2], R1
  call __function_PlaySfx
  jmp __if_9500_end
__if_9500_else:
__if_9515_start:
  mov R0, [BP-8]
  ieq R0, 25
  jf R0, __if_9515_else
  mov R0, [global_Shells]
  mov R2, global_Items
  mov R3, [BP-5]
  imul R3, 5
  iadd R2, R3
  iadd R2, 3
  mov R1, [R2]
  iadd R0, R1
  mov [global_Shells], R0
__if_9526_start:
  mov R0, [global_HasShotgun]
  bnot R0
  jf R0, __if_9526_end
  mov R0, 1
  mov [global_HasShotgun], R0
  mov R0, 1
  mov [global_Weapon], R0
  mov R1, __literal_string_9537
  mov [SP], R1
  call __function_ShowMessage
__if_9526_end:
  mov R1, 18
  mov [SP], R1
  mov R1, 1.000000
  mov [SP+1], R1
  mov R1, 1.000000
  mov [SP+2], R1
  call __function_PlaySfx
  jmp __if_9515_end
__if_9515_else:
__if_9542_start:
  mov R0, [BP-8]
  ieq R0, 26
  jf R0, __if_9542_else
  mov R0, [global_Cells]
  mov R2, global_Items
  mov R3, [BP-5]
  imul R3, 5
  iadd R2, R3
  iadd R2, 3
  mov R1, [R2]
  iadd R0, R1
  mov [global_Cells], R0
__if_9553_start:
  mov R0, [global_HasRifle]
  bnot R0
  jf R0, __if_9553_end
  mov R0, 1
  mov [global_HasRifle], R0
  mov R0, 2
  mov [global_Weapon], R0
  mov R1, __literal_string_9564
  mov [SP], R1
  call __function_ShowMessage
__if_9553_end:
  mov R1, 18
  mov [SP], R1
  mov R1, 1.000000
  mov [SP+1], R1
  mov R1, 1.100000
  mov [SP+2], R1
  call __function_PlaySfx
  jmp __if_9542_end
__if_9542_else:
__if_9570_start:
  mov R0, [BP-8]
  ieq R0, 7
  jf R0, __if_9570_else
  mov R0, 1
  mov [global_HasRedKey], R0
  mov R1, __literal_string_9579
  mov [SP], R1
  call __function_ShowMessage
  jmp __if_9570_end
__if_9570_else:
  mov R0, 1
  mov [global_HasBlueKey], R0
  mov R1, __literal_string_9585
  mov [SP], R1
  call __function_ShowMessage
__if_9570_end:
  mov R1, 5
  mov [SP], R1
  mov R1, 1.000000
  mov [SP+1], R1
  mov R1, 1.300000
  mov [SP+2], R1
  call __function_PlaySfx
__if_9542_end:
__if_9515_end:
__if_9500_end:
__if_9485_end:
__if_9470_end:
__if_9446_end:
  mov R0, 0
  mov R1, global_Items
  mov R2, [BP-5]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
  mov R0, 10
  mov [global_PickupFlash], R0
__for_9396_continue:
  mov R0, [BP-5]
  mov R1, R0
  iadd R1, 1
  mov [BP-5], R1
  jmp __for_9396_start
__for_9396_end:
__if_9599_start:
  mov R0, [global_DamageFlash]
  igt R0, 0
  jf R0, __if_9599_end
  mov R0, [global_DamageFlash]
  mov R1, R0
  isub R1, 1
  mov [global_DamageFlash], R1
__if_9599_end:
__if_9605_start:
  mov R0, [global_PickupFlash]
  igt R0, 0
  jf R0, __if_9605_end
  mov R0, [global_PickupFlash]
  mov R1, R0
  isub R1, 1
  mov [global_PickupFlash], R1
__if_9605_end:
__if_9611_start:
  mov R0, [global_LockedTimer]
  igt R0, 0
  jf R0, __if_9611_end
  mov R0, [global_LockedTimer]
  mov R1, R0
  isub R1, 1
  mov [global_LockedTimer], R1
__if_9611_end:
__if_9617_start:
  mov R0, [global_MessageTimer]
  igt R0, 0
  jf R0, __if_9617_end
  mov R0, [global_MessageTimer]
  mov R1, R0
  isub R1, 1
  mov [global_MessageTimer], R1
__if_9617_end:
__function_UpdatePlayer_return:
  mov SP, BP
  pop BP
  ret

__function_UpdateDoors:
  push BP
  mov BP, SP
  isub SP, 7
  mov R0, 0
  mov [BP-1], R0
__for_9624_start:
  mov R0, [BP-1]
  mov R1, [global_DoorCount]
  ilt R0, R1
  jf R0, __for_9624_end
__if_9634_start:
  mov R1, global_Doors
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 3
  mov R0, [R1]
  cib R0
  jf R0, __if_9634_end
__if_9640_start:
  mov R1, global_Doors
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  flt R0, 1.000000
  jf R0, __if_9640_end
  mov R1, global_Doors
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  fadd R0, 0.030000
  mov [R1], R0
__if_9654_start:
  mov R1, global_Doors
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  fgt R0, 1.000000
  jf R0, __if_9654_end
  mov R0, 1.000000
  mov R1, global_Doors
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
__if_9654_end:
__if_9640_end:
  jmp __for_9624_continue
__if_9634_end:
  mov R1, global_Doors
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  mov R0, [R1]
  cif R0
  fadd R0, 0.500000
  mov R1, [global_PlayerX]
  fsub R0, R1
  mov [BP-2], R0
  mov R1, global_Doors
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 1
  mov R0, [R1]
  cif R0
  fadd R0, 0.500000
  mov R1, [global_PlayerY]
  fsub R0, R1
  mov [BP-3], R0
__if_9688_start:
  mov R0, [BP-2]
  mov R1, [BP-2]
  fmul R0, R1
  mov R1, [BP-3]
  mov R2, [BP-3]
  fmul R1, R2
  fadd R0, R1
  fgt R0, 2.000000
  jf R0, __if_9688_end
  jmp __for_9624_continue
__if_9688_end:
  mov R1, global_Doors
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 2
  mov R0, [R1]
  mov [BP-4], R0
__if_9705_start:
  mov R0, [BP-4]
  ieq R0, 0
  jt R0, __LogicalOr_ShortCircuit_9715
  mov R1, [BP-4]
  ieq R1, 1
  jf R1, __LogicalAnd_ShortCircuit_9714
  mov R2, [global_HasRedKey]
  cib R2
  and R1, R2
__LogicalAnd_ShortCircuit_9714:
  or R0, R1
__LogicalOr_ShortCircuit_9715:
  jt R0, __LogicalOr_ShortCircuit_9722
  mov R1, [BP-4]
  ieq R1, 2
  jf R1, __LogicalAnd_ShortCircuit_9721
  mov R2, [global_HasBlueKey]
  cib R2
  and R1, R2
__LogicalAnd_ShortCircuit_9721:
  or R0, R1
__LogicalOr_ShortCircuit_9722:
  jf R0, __if_9705_else
  mov R0, 1
  mov R1, global_Doors
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 3
  mov [R1], R0
  mov R1, 9
  mov [SP], R1
  mov R1, 0.800000
  mov [SP+1], R1
  mov R1, 1.000000
  mov [SP+2], R1
  call __function_PlaySfx
  jmp __if_9705_end
__if_9705_else:
__if_9734_start:
  mov R0, [global_LockedTimer]
  ieq R0, 0
  jf R0, __if_9734_end
  mov R0, 100
  mov [global_LockedTimer], R0
  mov R1, 13
  mov [SP], R1
  mov R1, 0.700000
  mov [SP+1], R1
  mov R1, 1.000000
  mov [SP+2], R1
  call __function_PlaySfx
__if_9746_start:
  mov R0, [BP-4]
  ieq R0, 1
  jf R0, __if_9746_else
  mov R1, __literal_string_9751
  mov [SP], R1
  call __function_ShowMessage
  jmp __if_9746_end
__if_9746_else:
  mov R1, __literal_string_9753
  mov [SP], R1
  call __function_ShowMessage
__if_9746_end:
__if_9734_end:
__if_9705_end:
__for_9624_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_9624_start
__for_9624_end:
__function_UpdateDoors_return:
  mov SP, BP
  pop BP
  ret

__function_SpawnProjectile:
  push BP
  mov BP, SP
  isub SP, 2
  mov R0, 0
  mov [BP-1], R0
__for_9761_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_9761_end
__if_9771_start:
  mov R1, global_Projectiles
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  cib R0
  jf R0, __if_9771_end
  jmp __for_9761_continue
__if_9771_end:
  mov R2, [BP+4]
  mov [SP], R2
  call __function_cos
  mov R1, R0
  mov R2, [BP+5]
  fmul R1, R2
  mov R2, global_Projectiles
  mov R3, [BP-1]
  imul R3, 8
  iadd R2, R3
  iadd R2, 2
  mov [R2], R1
  mov R0, R1
  mov R2, [BP+4]
  mov [SP], R2
  call __function_sin
  mov R1, R0
  mov R2, [BP+5]
  fmul R1, R2
  mov R2, global_Projectiles
  mov R3, [BP-1]
  imul R3, 8
  iadd R2, R3
  iadd R2, 3
  mov [R2], R1
  mov R0, R1
  mov R1, [BP+2]
  mov R3, [BP+4]
  mov [SP], R3
  call __function_cos
  mov R2, R0
  fmul R2, 0.400000
  fadd R1, R2
  mov R2, global_Projectiles
  mov R3, [BP-1]
  imul R3, 8
  iadd R2, R3
  mov [R2], R1
  mov R0, R1
  mov R1, [BP+3]
  mov R3, [BP+4]
  mov [SP], R3
  call __function_sin
  mov R2, R0
  fmul R2, 0.400000
  fadd R1, R2
  mov R2, global_Projectiles
  mov R3, [BP-1]
  imul R3, 8
  iadd R2, R3
  iadd R2, 1
  mov [R2], R1
  mov R0, R1
  mov R0, [BP+6]
  mov R1, global_Projectiles
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 6
  mov [R1], R0
  mov R0, [BP+7]
  mov R1, global_Projectiles
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 5
  mov [R1], R0
  mov R0, 400
  mov R1, global_Projectiles
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 7
  mov [R1], R0
  mov R0, 1
  mov R1, global_Projectiles
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
  jmp __function_SpawnProjectile_return
__for_9761_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_9761_start
__for_9761_end:
__function_SpawnProjectile_return:
  mov SP, BP
  pop BP
  ret

__function_EnemyHitscan:
  push BP
  mov BP, SP
  isub SP, 5
  mov R1, [BP+9]
  call __function_RandomPitch
  mov R2, R0
  fmul R1, R2
  mov [BP-1], R1
  mov R2, [BP+2]
  mov [SP], R2
  mov R2, [BP+3]
  mov [SP+1], R2
  call __function_VolumeAt
  mov R1, R0
  fmul R1, 0.800000
  mov [BP-2], R1
  mov R1, 1
  mov [SP], R1
  mov R1, [BP-2]
  mov [SP+1], R1
  mov R1, [BP-1]
  mov [SP+2], R1
  call __function_PlaySfx
__if_9861_start:
  mov R2, 100
  mov [SP], R2
  call __function_RandomInt
  mov R1, R0
  mov R2, [BP+5]
  mov R3, [BP+4]
  mov R4, [BP+6]
  cif R4
  fmul R3, R4
  cfi R3
  isub R2, R3
  ilt R1, R2
  mov R0, R1
  jf R0, __if_9861_end
  mov R1, [BP+7]
  mov R3, [BP+8]
  mov [SP], R3
  call __function_RandomInt
  mov R2, R0
  iadd R1, R2
  mov [BP-1], R1
  mov R1, [BP-1]
  mov [SP], R1
  call __function_DamagePlayer
__if_9861_end:
__function_EnemyHitscan_return:
  mov SP, BP
  pop BP
  ret

__function_EnemyAttack:
  push BP
  mov BP, SP
  isub SP, 19
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 2
  mov R0, [R1]
  mov [BP-1], R0
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  mov R0, [R1]
  mov [BP-2], R0
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 1
  mov R0, [R1]
  mov [BP-3], R0
  mov R1, [global_PlayerY]
  mov R2, [BP-3]
  fsub R1, R2
  mov [SP], R1
  mov R1, [global_PlayerX]
  mov R2, [BP-2]
  fsub R1, R2
  mov [SP+1], R1
  call __function_atan2
  mov [BP-4], R0
  mov R0, 12
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 6
  mov [R1], R0
__if_9913_start:
  mov R0, [BP-1]
  ieq R0, 0
  jf R0, __if_9913_else
  mov R1, [BP-2]
  mov [SP], R1
  mov R1, [BP-3]
  mov [SP+1], R1
  mov R1, [BP+3]
  mov [SP+2], R1
  mov R1, 90
  mov [SP+3], R1
  mov R1, 8
  mov [SP+4], R1
  mov R1, 6
  mov [SP+5], R1
  mov R1, 6
  mov [SP+6], R1
  mov R1, 1.000000
  mov [SP+7], R1
  call __function_EnemyHitscan
  jmp __if_9913_end
__if_9913_else:
__if_9926_start:
  mov R0, [BP-1]
  ieq R0, 1
  jf R0, __if_9926_else
  mov R1, [BP-2]
  mov [SP], R1
  mov R1, [BP-3]
  mov [SP+1], R1
  mov R1, [BP+3]
  mov [SP+2], R1
  mov R1, 85
  mov [SP+3], R1
  mov R1, 7
  mov [SP+4], R1
  mov R1, 3
  mov [SP+5], R1
  mov R1, 3
  mov [SP+6], R1
  mov R1, 1.500000
  mov [SP+7], R1
  call __function_EnemyHitscan
  jmp __if_9926_end
__if_9926_else:
__if_9939_start:
  mov R0, [BP-1]
  ieq R0, 2
  jf R0, __if_9939_else
  mov R2, 5
  mov [SP], R2
  call __function_RandomInt
  mov R1, R0
  iadd R1, 14
  mov [BP-10], R1
  mov R1, [BP-2]
  mov [SP], R1
  mov R1, [BP-3]
  mov [SP+1], R1
  mov R1, [BP-4]
  mov [SP+2], R1
  mov R1, 0.100000
  mov [SP+3], R1
  mov R1, [BP-10]
  mov [SP+4], R1
  mov R1, 9
  mov [SP+5], R1
  call __function_SpawnProjectile
  call __function_RandomPitch
  mov R1, R0
  mov [BP-10], R1
  mov R2, [BP-2]
  mov [SP], R2
  mov R2, [BP-3]
  mov [SP+1], R2
  call __function_VolumeAt
  mov R1, R0
  mov [BP-11], R1
  mov R1, 11
  mov [SP], R1
  mov R1, [BP-11]
  mov [SP+1], R1
  mov R1, [BP-10]
  mov [SP+2], R1
  call __function_PlaySfx
  jmp __if_9939_end
__if_9939_else:
__if_9960_start:
  mov R0, [BP-1]
  ieq R0, 3
  jf R0, __if_9960_else
  mov R0, 3
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 10
  mov [R1], R0
  jmp __if_9960_end
__if_9960_else:
__if_9970_start:
  mov R0, [BP-1]
  ieq R0, 4
  jf R0, __if_9970_end
  mov R0, 3
  mov [BP-5], R0
  mov R0, 0.085000
  mov [BP-6], R0
__if_9981_start:
  mov R0, [global_BossEnraged]
  cib R0
  jf R0, __if_9981_end
  mov R0, 5
  mov [BP-5], R0
  mov R0, 0.110000
  mov [BP-6], R0
__if_9981_end:
  mov R0, 0.220000
  mov [BP-7], R0
  mov R0, [BP-4]
  mov R1, [BP-7]
  mov R2, [BP-5]
  isub R2, 1
  cif R2
  fmul R1, R2
  fdiv R1, 2.000000
  fsub R0, R1
  mov [BP-8], R0
  mov R0, 0
  mov [BP-9], R0
__for_10005_start:
  mov R0, [BP-9]
  mov R1, [BP-5]
  ilt R0, R1
  jf R0, __for_10005_end
  mov R2, 5
  mov [SP], R2
  call __function_RandomInt
  mov R1, R0
  iadd R1, 12
  mov [BP-10], R1
  mov R1, [BP-2]
  mov [SP], R1
  mov R1, [BP-3]
  mov [SP+1], R1
  mov R1, [BP-8]
  mov R2, [BP-7]
  mov R3, [BP-9]
  cif R3
  fmul R2, R3
  fadd R1, R2
  mov [SP+2], R1
  mov R1, [BP-6]
  mov [SP+3], R1
  mov R1, [BP-10]
  mov [SP+4], R1
  mov R1, 10
  mov [SP+5], R1
  call __function_SpawnProjectile
__for_10005_continue:
  mov R0, [BP-9]
  mov R1, R0
  iadd R1, 1
  mov [BP-9], R1
  jmp __for_10005_start
__for_10005_end:
  mov R1, 11
  mov [SP], R1
  mov R1, 1.000000
  mov [SP+1], R1
  mov R1, 0.750000
  mov [SP+2], R1
  call __function_PlaySfx
__if_9970_end:
__if_9960_end:
__if_9939_end:
__if_9926_end:
__if_9913_end:
__function_EnemyAttack_return:
  mov SP, BP
  pop BP
  ret

__function_UpdateEnemies:
  push BP
  mov BP, SP
  isub SP, 18
  mov R0, 0
  mov [BP-1], R0
__for_10033_start:
  mov R0, [BP-1]
  ilt R0, 24
  jf R0, __for_10033_end
  mov R1, global_Enemies
  mov R2, [BP-1]
  imul R2, 11
  iadd R1, R2
  iadd R1, 2
  mov R0, [R1]
  mov [BP-2], R0
__if_10049_start:
  mov R0, [BP-2]
  ilt R0, 0
  jt R0, __LogicalOr_ShortCircuit_10058
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  iadd R2, 4
  mov R1, [R2]
  bnot R1
  or R0, R1
__LogicalOr_ShortCircuit_10058:
  jf R0, __if_10049_end
  jmp __for_10033_continue
__if_10049_end:
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  iadd R2, 8
  mov R0, [R2]
  mov R1, R0
  iadd R1, 1
  mov [R2], R1
__if_10065_start:
  mov R1, global_Enemies
  mov R2, [BP-1]
  imul R2, 11
  iadd R1, R2
  iadd R1, 5
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_10065_end
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  iadd R2, 5
  mov R0, [R2]
  mov R1, R0
  isub R1, 1
  mov [R2], R1
__if_10065_end:
__if_10077_start:
  mov R1, global_Enemies
  mov R2, [BP-1]
  imul R2, 11
  iadd R1, R2
  iadd R1, 6
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_10077_end
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  iadd R2, 6
  mov R0, [R2]
  mov R1, R0
  isub R1, 1
  mov [R2], R1
__if_10077_end:
  mov R0, [global_PlayerX]
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  mov R1, [R2]
  fsub R0, R1
  mov [BP-3], R0
  mov R0, [global_PlayerY]
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  fsub R0, R1
  mov [BP-4], R0
  mov R1, [BP-3]
  mov R2, [BP-3]
  fmul R1, R2
  mov R2, [BP-4]
  mov R3, [BP-4]
  fmul R2, R3
  fadd R1, R2
  mov [SP], R1
  call __function_sqrt
  mov [BP-5], R0
__if_10115_start:
  mov R0, [global_FrameCount]
  mov R1, [BP-1]
  iadd R0, R1
  imod R0, 4
  ieq R0, 0
  jf R0, __if_10115_end
  mov R1, [BP-5]
  mov R2, global_TypeRange
  mov R3, [BP-2]
  iadd R2, R3
  mov R2, [R2]
  flt R1, R2
  jf R1, __LogicalAnd_ShortCircuit_10147
  mov R4, global_Enemies
  mov R5, [BP-1]
  imul R5, 11
  iadd R4, R5
  mov R3, [R4]
  mov [SP], R3
  mov R4, global_Enemies
  mov R5, [BP-1]
  imul R5, 11
  iadd R4, R5
  iadd R4, 1
  mov R3, [R4]
  mov [SP+1], R3
  mov R3, [global_PlayerX]
  mov [SP+2], R3
  mov R3, [global_PlayerY]
  mov [SP+3], R3
  call __function_LineOfSight
  mov R2, R0
  cib R2
  and R1, R2
__LogicalAnd_ShortCircuit_10147:
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  iadd R2, 9
  mov [R2], R1
  mov R0, R1
__if_10115_end:
__if_10148_start:
  mov R1, global_Enemies
  mov R2, [BP-1]
  imul R2, 11
  iadd R1, R2
  iadd R1, 9
  mov R0, [R1]
  bnot R0
  jf R0, __if_10148_end
  jmp __for_10033_continue
__if_10148_end:
__if_10155_start:
  mov R0, [BP-2]
  ieq R0, 4
  jf R0, __LogicalAnd_ShortCircuit_10161
  mov R1, [global_BossActive]
  bnot R1
  and R0, R1
__LogicalAnd_ShortCircuit_10161:
  jf R0, __if_10155_end
  mov R0, 1
  mov [global_BossActive], R0
  mov R1, 15
  mov [SP], R1
  mov R1, 1.000000
  mov [SP+1], R1
  mov R1, 1.000000
  mov [SP+2], R1
  call __function_PlaySfx
  mov R1, __literal_string_10171
  mov [SP], R1
  call __function_ShowMessage
__if_10155_end:
  mov R0, global_TypeSpeed
  mov R1, [BP-2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-6], R0
__if_10177_start:
  mov R0, [BP-2]
  ieq R0, 4
  jf R0, __LogicalAnd_ShortCircuit_10182
  mov R1, [global_BossEnraged]
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_10182:
  jf R0, __if_10177_end
  mov R0, [BP-6]
  fmul R0, 1.600000
  mov [BP-6], R0
__if_10177_end:
  mov R1, global_Enemies
  mov R2, [BP-1]
  imul R2, 11
  iadd R1, R2
  iadd R1, 5
  mov R0, [R1]
  igt R0, 0
  jf R0, __LogicalAnd_ShortCircuit_10195
  mov R1, [BP-2]
  ine R1, 4
  and R0, R1
__LogicalAnd_ShortCircuit_10195:
  mov [BP-7], R0
__if_10198_start:
  mov R0, [BP-6]
  fgt R0, 0.000000
  jf R0, __LogicalAnd_ShortCircuit_10203
  mov R1, [BP-5]
  mov R2, global_TypeStopDistance
  mov R3, [BP-2]
  iadd R2, R3
  mov R2, [R2]
  fgt R1, R2
  and R0, R1
__LogicalAnd_ShortCircuit_10203:
  jf R0, __LogicalAnd_ShortCircuit_10210
  mov R1, [BP-7]
  bnot R1
  and R0, R1
__LogicalAnd_ShortCircuit_10210:
  jf R0, __if_10198_end
  mov R0, global_TypeRadius
  mov R1, [BP-2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-8], R0
  mov R0, [BP-3]
  mov R1, [BP-5]
  fdiv R0, R1
  mov R1, [BP-6]
  fmul R0, R1
  mov [BP-9], R0
  mov R0, [BP-4]
  mov R1, [BP-5]
  fdiv R0, R1
  mov R1, [BP-6]
  fmul R0, R1
  mov [BP-10], R0
__if_10231_start:
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  mov R1, [R2]
  mov R2, [BP-9]
  fadd R1, R2
  mov [SP], R1
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  mov [SP+1], R1
  mov R1, [BP-8]
  mov [SP+2], R1
  call __function_CanStand
  cib R0
  jf R0, __if_10231_end
  mov R1, global_Enemies
  mov R2, [BP-1]
  imul R2, 11
  iadd R1, R2
  mov R0, [R1]
  mov R2, [BP-9]
  fadd R0, R2
  mov [R1], R0
__if_10231_end:
__if_10250_start:
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  mov R1, [R2]
  mov [SP], R1
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  mov R2, [BP-10]
  fadd R1, R2
  mov [SP+1], R1
  mov R1, [BP-8]
  mov [SP+2], R1
  call __function_CanStand
  cib R0
  jf R0, __if_10250_end
  mov R1, global_Enemies
  mov R2, [BP-1]
  imul R2, 11
  iadd R1, R2
  iadd R1, 1
  mov R0, [R1]
  mov R2, [BP-10]
  fadd R0, R2
  mov [R1], R0
__if_10250_end:
__if_10198_end:
__if_10269_start:
  mov R1, global_Enemies
  mov R2, [BP-1]
  imul R2, 11
  iadd R1, R2
  iadd R1, 10
  mov R0, [R1]
  igt R0, 0
  jf R0, __LogicalAnd_ShortCircuit_10283
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  iadd R2, 8
  mov R1, [R2]
  imod R1, 8
  ieq R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_10283:
  jf R0, __if_10269_end
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  mov R1, [R2]
  mov [SP], R1
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  mov [SP+1], R1
  mov R1, [BP-5]
  mov [SP+2], R1
  mov R1, 80
  mov [SP+3], R1
  mov R1, 4
  mov [SP+4], R1
  mov R1, 4
  mov [SP+5], R1
  mov R1, 3
  mov [SP+6], R1
  mov R1, 1.250000
  mov [SP+7], R1
  call __function_EnemyHitscan
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  iadd R2, 10
  mov R0, [R2]
  mov R1, R0
  isub R1, 1
  mov [R2], R1
  mov R0, 6
  mov R1, global_Enemies
  mov R2, [BP-1]
  imul R2, 11
  iadd R1, R2
  iadd R1, 6
  mov [R1], R0
__if_10269_end:
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  iadd R2, 7
  mov R0, [R2]
  mov R1, R0
  isub R1, 1
  mov [R2], R1
__if_10318_start:
  mov R1, global_Enemies
  mov R2, [BP-1]
  imul R2, 11
  iadd R1, R2
  iadd R1, 7
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_10318_end
  mov R1, global_TypeCooldown
  mov R2, [BP-2]
  iadd R1, R2
  mov R1, [R1]
  mov R3, global_TypeCooldownRand
  mov R4, [BP-2]
  iadd R3, R4
  mov R3, [R3]
  mov [SP], R3
  call __function_RandomInt
  mov R2, R0
  iadd R1, R2
  mov R0, R1
  mov [BP-8], R0
__if_10336_start:
  mov R0, [BP-2]
  ieq R0, 4
  jf R0, __LogicalAnd_ShortCircuit_10341
  mov R1, [global_BossEnraged]
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_10341:
  jf R0, __if_10336_end
  mov R0, [BP-8]
  imul R0, 2
  idiv R0, 3
  mov [BP-8], R0
__if_10336_end:
  mov R0, [BP-8]
  mov R1, global_Enemies
  mov R2, [BP-1]
  imul R2, 11
  iadd R1, R2
  iadd R1, 7
  mov [R1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, [BP-5]
  mov [SP+1], R1
  call __function_EnemyAttack
__if_10318_end:
__for_10033_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_10033_start
__for_10033_end:
__function_UpdateEnemies_return:
  mov SP, BP
  pop BP
  ret

__function_UpdateProjectiles:
  push BP
  mov BP, SP
  isub SP, 10
  mov R0, 0
  mov [BP-1], R0
__for_10359_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_10359_end
__if_10369_start:
  mov R1, global_Projectiles
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  bnot R0
  jf R0, __if_10369_end
  jmp __for_10359_continue
__if_10369_end:
  mov R1, global_Projectiles
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  mov R0, [R1]
  mov R3, global_Projectiles
  mov R4, [BP-1]
  imul R4, 8
  iadd R3, R4
  iadd R3, 2
  mov R2, [R3]
  fadd R0, R2
  mov [R1], R0
  mov R1, global_Projectiles
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 1
  mov R0, [R1]
  mov R3, global_Projectiles
  mov R4, [BP-1]
  imul R4, 8
  iadd R3, R4
  iadd R3, 3
  mov R2, [R3]
  fadd R0, R2
  mov [R1], R0
  mov R2, global_Projectiles
  mov R3, [BP-1]
  imul R3, 8
  iadd R2, R3
  iadd R2, 7
  mov R0, [R2]
  mov R1, R0
  isub R1, 1
  mov [R2], R1
  mov R1, global_Projectiles
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  mov R0, [R1]
  mov [BP-2], R0
  mov R1, global_Projectiles
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 1
  mov R0, [R1]
  mov [BP-3], R0
__if_10411_start:
  mov R2, [BP-2]
  mov [SP], R2
  mov R2, [BP-3]
  mov [SP+1], R2
  call __function_IsWall
  mov R1, R0
  cib R1
  jt R1, __LogicalOr_ShortCircuit_10415
  mov R3, global_Projectiles
  mov R4, [BP-1]
  imul R4, 8
  iadd R3, R4
  iadd R3, 7
  mov R2, [R3]
  ile R2, 0
  or R1, R2
__LogicalOr_ShortCircuit_10415:
  mov R0, R1
  jf R0, __if_10411_end
  mov R0, 0
  mov R1, global_Projectiles
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
  call __function_RandomPitch
  mov R1, R0
  mov [BP-6], R1
  mov R2, [BP-2]
  mov [SP], R2
  mov R2, [BP-3]
  mov [SP+1], R2
  call __function_VolumeAt
  mov R1, R0
  fmul R1, 0.600000
  mov [BP-7], R1
  mov R1, 12
  mov [SP], R1
  mov R1, [BP-7]
  mov [SP+1], R1
  mov R1, [BP-6]
  mov [SP+2], R1
  call __function_PlaySfx
  jmp __for_10359_continue
__if_10411_end:
  mov R0, [BP-2]
  mov R1, [global_PlayerX]
  fsub R0, R1
  mov [BP-4], R0
  mov R0, [BP-3]
  mov R1, [global_PlayerY]
  fsub R0, R1
  mov [BP-5], R0
__if_10448_start:
  mov R0, [BP-4]
  mov R1, [BP-4]
  fmul R0, R1
  mov R1, [BP-5]
  mov R2, [BP-5]
  fmul R1, R2
  fadd R0, R1
  flt R0, 0.160000
  jf R0, __if_10448_end
  mov R0, 0
  mov R1, global_Projectiles
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
  call __function_RandomPitch
  mov R1, R0
  mov [BP-6], R1
  mov R1, 12
  mov [SP], R1
  mov R1, 1.000000
  mov [SP+1], R1
  mov R1, [BP-6]
  mov [SP+2], R1
  call __function_PlaySfx
  mov R2, global_Projectiles
  mov R3, [BP-1]
  imul R3, 8
  iadd R2, R3
  iadd R2, 6
  mov R1, [R2]
  mov [SP], R1
  call __function_DamagePlayer
__if_10448_end:
__for_10359_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_10359_start
__for_10359_end:
__function_UpdateProjectiles_return:
  mov SP, BP
  pop BP
  ret

__function_DrawFloorAndCeiling:
  push BP
  mov BP, SP
  isub SP, 10
  mov R0, 0
  mov [BP-1], R0
__for_10475_start:
  mov R0, [BP-1]
  ilt R0, 9
  jf R0, __for_10475_end
  mov R0, [BP-1]
  imul R0, 20
  mov [BP-2], R0
  mov R0, [BP-1]
  isgn R0
  iadd R0, 8
  imul R0, 7
  iadd R0, 20
  mov [BP-3], R0
  mov R2, [BP-3]
  mov [SP], R2
  mov R2, [BP-3]
  mov [SP+1], R2
  mov R2, [BP-3]
  iadd R2, 12
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-5], R1
  mov R1, 0
  mov [SP], R1
  mov R1, [BP-2]
  mov [SP+1], R1
  mov R1, 640
  mov [SP+2], R1
  mov R1, 20
  mov [SP+3], R1
  mov R1, [BP-5]
  mov [SP+4], R1
  call __function_DrawRect
  mov R0, [BP-1]
  imul R0, 9
  iadd R0, 24
  mov [BP-4], R0
  mov R2, [BP-4]
  iadd R2, 6
  mov [SP], R2
  mov R2, [BP-4]
  mov [SP+1], R2
  mov R2, [BP-4]
  isub R2, 6
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-5], R1
  mov R1, 0
  mov [SP], R1
  mov R1, [BP-2]
  iadd R1, 180
  mov [SP+1], R1
  mov R1, 640
  mov [SP+2], R1
  mov R1, 20
  mov [SP+3], R1
  mov R1, [BP-5]
  mov [SP+4], R1
  call __function_DrawRect
__for_10475_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_10475_start
__for_10475_end:
__function_DrawFloorAndCeiling_return:
  mov SP, BP
  pop BP
  ret

__function_DrawWalls:
  push BP
  mov BP, SP
  isub SP, 26
  mov R0, 0
  mov [BP-1], R0
__for_10534_start:
  mov R0, [BP-1]
  ilt R0, 128
  jf R0, __for_10534_end
  mov R0, [global_DirX]
  mov R1, [global_PlaneX]
  mov R2, global_CameraX
  mov R3, [BP-1]
  iadd R2, R3
  mov R2, [R2]
  fmul R1, R2
  fadd R0, R1
  mov [BP-2], R0
  mov R0, [global_DirY]
  mov R1, [global_PlaneY]
  mov R2, global_CameraX
  mov R3, [BP-1]
  iadd R2, R3
  mov R2, [R2]
  fmul R1, R2
  fadd R0, R1
  mov [BP-3], R0
  mov R0, [global_PlayerX]
  cfi R0
  mov [BP-4], R0
  mov R0, [global_PlayerY]
  cfi R0
  mov [BP-5], R0
  mov R0, 1000000.000000
  mov [BP-6], R0
  mov R0, 1000000.000000
  mov [BP-7], R0
__if_10576_start:
  mov R0, [BP-2]
  fne R0, 0.000000
  jf R0, __if_10576_end
  mov R2, 1.000000
  mov R3, [BP-2]
  fdiv R2, R3
  mov [SP], R2
  call __function_fabs
  mov R1, R0
  mov [BP-6], R1
  mov R0, R1
__if_10576_end:
__if_10586_start:
  mov R0, [BP-3]
  fne R0, 0.000000
  jf R0, __if_10586_end
  mov R2, 1.000000
  mov R3, [BP-3]
  fdiv R2, R3
  mov [SP], R2
  call __function_fabs
  mov R1, R0
  mov [BP-7], R1
  mov R0, R1
__if_10586_end:
__if_10602_start:
  mov R0, [BP-2]
  flt R0, 0.000000
  jf R0, __if_10602_else
  mov R0, -1
  mov [BP-8], R0
  mov R0, [global_PlayerX]
  mov R1, [BP-4]
  cif R1
  fsub R0, R1
  mov R1, [BP-6]
  fmul R0, R1
  mov [BP-10], R0
  jmp __if_10602_end
__if_10602_else:
  mov R0, 1
  mov [BP-8], R0
  mov R0, [BP-4]
  cif R0
  fadd R0, 1.000000
  mov R1, [global_PlayerX]
  fsub R0, R1
  mov R1, [BP-6]
  fmul R0, R1
  mov [BP-10], R0
__if_10602_end:
__if_10633_start:
  mov R0, [BP-3]
  flt R0, 0.000000
  jf R0, __if_10633_else
  mov R0, -1
  mov [BP-9], R0
  mov R0, [global_PlayerY]
  mov R1, [BP-5]
  cif R1
  fsub R0, R1
  mov R1, [BP-7]
  fmul R0, R1
  mov [BP-11], R0
  jmp __if_10633_end
__if_10633_else:
  mov R0, 1
  mov [BP-9], R0
  mov R0, [BP-5]
  cif R0
  fadd R0, 1.000000
  mov R1, [global_PlayerY]
  fsub R0, R1
  mov R1, [BP-7]
  fmul R0, R1
  mov [BP-11], R0
__if_10633_end:
  mov R0, 0
  mov [BP-12], R0
  mov R0, 0
  mov [BP-13], R0
  mov R0, 0.000000
  mov [BP-14], R0
  mov R0, 0.000000
  mov [BP-15], R0
  mov R0, 0
  mov [BP-16], R0
__while_10679_start:
__while_10679_continue:
  mov R0, 1
  jf R0, __while_10679_end
__if_10682_start:
  mov R0, [BP-10]
  mov R1, [BP-11]
  flt R0, R1
  jf R0, __if_10682_else
  mov R0, [BP-10]
  mov R1, [BP-6]
  fadd R0, R1
  mov [BP-10], R0
  mov R0, [BP-4]
  mov R1, [BP-8]
  iadd R0, R1
  mov [BP-4], R0
  mov R0, 0
  mov [BP-12], R0
  jmp __if_10682_end
__if_10682_else:
  mov R0, [BP-11]
  mov R1, [BP-7]
  fadd R0, R1
  mov [BP-11], R0
  mov R0, [BP-5]
  mov R1, [BP-9]
  iadd R0, R1
  mov [BP-5], R0
  mov R0, 1
  mov [BP-12], R0
__if_10682_end:
  mov R0, global_Map
  mov R2, [BP-5]
  imul R2, 32
  iadd R0, R2
  mov R1, [BP-4]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-13], R0
__if_10713_start:
  mov R0, [BP-13]
  ieq R0, 0
  jf R0, __if_10713_end
  jmp __while_10679_continue
__if_10713_end:
__if_10718_start:
  mov R0, [BP-13]
  ige R0, 6
  jf R0, __LogicalAnd_ShortCircuit_10723
  mov R1, [BP-13]
  ile R1, 8
  and R0, R1
__LogicalAnd_ShortCircuit_10723:
  jf R0, __if_10718_end
  mov R1, global_Doors
  mov R2, global_DoorAt
  mov R4, [BP-5]
  imul R4, 32
  iadd R2, R4
  mov R3, [BP-4]
  iadd R2, R3
  mov R2, [R2]
  isub R2, 1
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  mov [BP-20], R0
__if_10741_start:
  mov R0, [BP-12]
  ieq R0, 0
  jf R0, __if_10741_else
  mov R0, [BP-10]
  mov R1, [BP-6]
  fmul R1, 0.500000
  fsub R0, R1
  mov [BP-14], R0
  mov R0, [global_PlayerY]
  mov R1, [BP-14]
  mov R2, [BP-3]
  fmul R1, R2
  fadd R0, R1
  mov [BP-15], R0
  mov R0, [BP-5]
  cif R0
  mov [BP-21], R0
  jmp __if_10741_end
__if_10741_else:
  mov R0, [BP-11]
  mov R1, [BP-7]
  fmul R1, 0.500000
  fsub R0, R1
  mov [BP-14], R0
  mov R0, [global_PlayerX]
  mov R1, [BP-14]
  mov R2, [BP-2]
  fmul R1, R2
  fadd R0, R1
  mov [BP-15], R0
  mov R0, [BP-4]
  cif R0
  mov [BP-21], R0
__if_10741_end:
__if_10781_start:
  mov R0, [BP-15]
  mov R1, [BP-21]
  flt R0, R1
  jt R0, __LogicalOr_ShortCircuit_10786
  mov R1, [BP-15]
  mov R2, [BP-21]
  fadd R2, 1.000000
  fge R1, R2
  or R0, R1
__LogicalOr_ShortCircuit_10786:
  jf R0, __if_10781_end
  jmp __while_10679_continue
__if_10781_end:
  mov R0, [BP-15]
  mov R1, [BP-21]
  fsub R0, R1
  mov [BP-22], R0
__if_10797_start:
  mov R0, [BP-22]
  mov R1, [BP-20]
  flt R0, R1
  jf R0, __if_10797_end
  jmp __while_10679_continue
__if_10797_end:
  mov R0, [BP-22]
  mov R1, [BP-20]
  fsub R0, R1
  fmul R0, 64.000000
  cfi R0
  mov [BP-16], R0
  jmp __while_10679_end
__if_10718_end:
__if_10813_start:
  mov R0, [BP-12]
  ieq R0, 0
  jf R0, __if_10813_else
  mov R0, [BP-10]
  mov R1, [BP-6]
  fsub R0, R1
  mov [BP-14], R0
  mov R0, [global_PlayerY]
  mov R1, [BP-14]
  mov R2, [BP-3]
  fmul R1, R2
  fadd R0, R1
  mov [BP-15], R0
  jmp __if_10813_end
__if_10813_else:
  mov R0, [BP-11]
  mov R1, [BP-7]
  fsub R0, R1
  mov [BP-14], R0
  mov R0, [global_PlayerX]
  mov R1, [BP-14]
  mov R2, [BP-2]
  fmul R1, R2
  fadd R0, R1
  mov [BP-15], R0
__if_10813_end:
  mov R1, [BP-15]
  mov R3, [BP-15]
  mov [SP], R3
  call __function_floor
  mov R2, R0
  fsub R1, R2
  mov [BP-15], R1
  mov R0, R1
  mov R0, [BP-15]
  fmul R0, 64.000000
  cfi R0
  mov [BP-16], R0
__if_10854_start:
  mov R0, [BP-12]
  ieq R0, 0
  jf R0, __LogicalAnd_ShortCircuit_10859
  mov R1, [BP-2]
  flt R1, 0.000000
  and R0, R1
__LogicalAnd_ShortCircuit_10859:
  jf R0, __if_10854_end
  mov R0, [BP-16]
  isgn R0
  iadd R0, 63
  mov [BP-16], R0
__if_10854_end:
__if_10867_start:
  mov R0, [BP-12]
  ieq R0, 1
  jf R0, __LogicalAnd_ShortCircuit_10872
  mov R1, [BP-3]
  fgt R1, 0.000000
  and R0, R1
__LogicalAnd_ShortCircuit_10872:
  jf R0, __if_10867_end
  mov R0, [BP-16]
  isgn R0
  iadd R0, 63
  mov [BP-16], R0
__if_10867_end:
  jmp __while_10679_end
  jmp __while_10679_start
__while_10679_end:
__if_10881_start:
  mov R0, [BP-16]
  igt R0, 63
  jf R0, __if_10881_end
  mov R0, 63
  mov [BP-16], R0
__if_10881_end:
__if_10888_start:
  mov R0, [BP-16]
  ilt R0, 0
  jf R0, __if_10888_end
  mov R0, 0
  mov [BP-16], R0
__if_10888_end:
__if_10895_start:
  mov R0, [BP-14]
  flt R0, 0.050000
  jf R0, __if_10895_end
  mov R0, 0.050000
  mov [BP-14], R0
__if_10895_end:
  mov R0, [BP-14]
  mov R1, global_ZBuffer
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, 360.000000
  mov R1, [BP-14]
  fdiv R0, R1
  mov [BP-17], R0
  mov R0, [BP-14]
  fmul R0, 14.000000
  cfi R0
  isgn R0
  iadd R0, 255
  mov [BP-18], R0
__if_10921_start:
  mov R0, [BP-18]
  ilt R0, 45
  jf R0, __if_10921_end
  mov R0, 45
  mov [BP-18], R0
__if_10921_end:
__if_10928_start:
  mov R0, [BP-12]
  ieq R0, 1
  jf R0, __if_10928_end
  mov R0, [BP-18]
  imul R0, 3
  idiv R0, 4
  mov [BP-18], R0
__if_10928_end:
__if_10941_start:
  mov R0, [BP-13]
  ige R0, 11
  jf R0, __if_10941_else
  mov R0, [BP-13]
  isub R0, 11
  mov [BP-19], R0
  mov R2, [BP-18]
  mov [SP], R2
  mov R2, [BP-18]
  imul R2, 15
  idiv R2, 16
  mov [SP+1], R2
  mov R2, [BP-18]
  imul R2, 14
  idiv R2, 16
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-23], R1
  mov R1, [BP-23]
  mov [SP], R1
  call __function_set_multiply_color
  jmp __if_10941_end
__if_10941_else:
  mov R0, [BP-13]
  isub R0, 1
  mov [BP-19], R0
  mov R2, [BP-18]
  mov [SP], R2
  mov R2, [BP-18]
  mov [SP+1], R2
  mov R2, [BP-18]
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-23], R1
  mov R1, [BP-23]
  mov [SP], R1
  call __function_set_multiply_color
__if_10941_end:
  mov R1, [BP-19]
  imul R1, 64
  iadd R1, 0
  mov R2, [BP-16]
  iadd R1, R2
  mov [SP], R1
  call __function_select_region
  mov R1, 5
  cif R1
  mov [SP], R1
  mov R1, [BP-17]
  fdiv R1, 64.000000
  mov [SP+1], R1
  call __function_set_drawing_scale
  mov R1, [BP-1]
  imul R1, 5
  mov [SP], R1
  mov R1, [BP-17]
  fdiv R1, 2.000000
  cfi R1
  isgn R1
  iadd R1, 180
  mov [SP+1], R1
  call __function_draw_region_zoomed_at
__for_10534_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_10534_start
__for_10534_end:
__function_DrawWalls_return:
  mov SP, BP
  pop BP
  ret

__function_DrawSprite:
  push BP
  mov BP, SP
  isub SP, 18
  mov R0, 1.000000
  mov R1, [global_PlaneX]
  mov R2, [global_DirY]
  fmul R1, R2
  mov R2, [global_DirX]
  mov R3, [global_PlaneY]
  fmul R2, R3
  fsub R1, R2
  fdiv R0, R1
  mov [BP-1], R0
  mov R0, [BP+2]
  mov R1, [global_PlayerX]
  fsub R0, R1
  mov [BP-2], R0
  mov R0, [BP+3]
  mov R1, [global_PlayerY]
  fsub R0, R1
  mov [BP-3], R0
  mov R0, [BP-1]
  mov R1, [global_DirY]
  mov R2, [BP-2]
  fmul R1, R2
  mov R2, [global_DirX]
  mov R3, [BP-3]
  fmul R2, R3
  fsub R1, R2
  fmul R0, R1
  mov [BP-4], R0
  mov R0, [BP-1]
  mov R1, [global_PlaneY]
  fsgn R1
  mov R2, [BP-2]
  fmul R1, R2
  mov R2, [global_PlaneX]
  mov R3, [BP-3]
  fmul R2, R3
  fadd R1, R2
  fmul R0, R1
  mov [BP-5], R0
__if_11054_start:
  mov R0, [BP-5]
  flt R0, 0.150000
  jf R0, __if_11054_end
  jmp __function_DrawSprite_return
__if_11054_end:
  mov R0, [BP-4]
  mov R1, [BP-5]
  fdiv R0, R1
  fadd R0, 1.000000
  fmul R0, 320.000000
  mov [BP-6], R0
  mov R0, 360.000000
  mov R1, [BP-5]
  fdiv R0, R1
  mov [BP-7], R0
  mov R0, [BP-7]
  mov R1, [BP+6]
  fmul R0, R1
  mov [BP-8], R0
  mov R0, [BP-6]
  mov R1, [BP-8]
  fdiv R1, 2.000000
  fsub R0, R1
  mov [BP-9], R0
  mov R0, [BP-7]
  fdiv R0, 2.000000
  mov R1, [BP-8]
  fsub R0, R1
  mov R1, [BP+7]
  mov R2, [BP-7]
  fmul R1, R2
  fsub R0, R1
  cfi R0
  iadd R0, 180
  mov [BP-10], R0
  mov R0, [BP-9]
  fdiv R0, 5.000000
  cfi R0
  mov [BP-11], R0
  mov R0, [BP-9]
  mov R1, [BP-8]
  fadd R0, R1
  fdiv R0, 5.000000
  cfi R0
  mov [BP-12], R0
__if_11118_start:
  mov R0, [BP-11]
  ilt R0, 0
  jf R0, __if_11118_end
  mov R0, 0
  mov [BP-11], R0
__if_11118_end:
__if_11125_start:
  mov R0, [BP-12]
  igt R0, 127
  jf R0, __if_11125_end
  mov R0, 127
  mov [BP-12], R0
__if_11125_end:
__if_11136_start:
  mov R0, [BP-11]
  mov R1, [BP-12]
  igt R0, R1
  jf R0, __if_11136_end
  jmp __function_DrawSprite_return
__if_11136_end:
__if_11141_start:
  mov R0, [BP+8]
  cib R0
  jf R0, __if_11141_else
  mov R1, -1
  mov [SP], R1
  call __function_set_multiply_color
  jmp __if_11141_end
__if_11141_else:
  mov R0, [BP-5]
  fmul R0, 14.000000
  cfi R0
  isgn R0
  iadd R0, 255
  mov [BP-13], R0
__if_11155_start:
  mov R0, [BP-13]
  ilt R0, 60
  jf R0, __if_11155_end
  mov R0, 60
  mov [BP-13], R0
__if_11155_end:
  mov R2, [BP-13]
  mov [SP], R2
  mov R2, [BP-13]
  mov [SP+1], R2
  mov R2, [BP-13]
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-15], R1
  mov R1, [BP-15]
  mov [SP], R1
  call __function_set_multiply_color
__if_11141_end:
  mov R1, 5
  cif R1
  mov [SP], R1
  mov R1, [BP-8]
  mov R2, [BP+5]
  cif R2
  fdiv R1, R2
  mov [SP+1], R1
  call __function_set_drawing_scale
  mov R0, [BP-11]
  mov [BP-13], R0
__for_11172_start:
  mov R0, [BP-13]
  mov R1, [BP-12]
  ile R0, R1
  jf R0, __for_11172_end
__if_11182_start:
  mov R0, [BP-5]
  mov R1, global_ZBuffer
  mov R2, [BP-13]
  iadd R1, R2
  mov R1, [R1]
  fge R0, R1
  jf R0, __if_11182_end
  jmp __for_11172_continue
__if_11182_end:
  mov R0, [BP-13]
  imul R0, 5
  iadd R0, 2
  cif R0
  mov R1, [BP-9]
  fsub R0, R1
  mov R1, [BP+5]
  cif R1
  fmul R0, R1
  mov R1, [BP-8]
  fdiv R0, R1
  cfi R0
  mov [BP-14], R0
__if_11208_start:
  mov R0, [BP-14]
  ilt R0, 0
  jt R0, __LogicalOr_ShortCircuit_11213
  mov R1, [BP-14]
  mov R2, [BP+5]
  ige R1, R2
  or R0, R1
__LogicalOr_ShortCircuit_11213:
  jf R0, __if_11208_end
  jmp __for_11172_continue
__if_11208_end:
  mov R1, [BP+4]
  mov R2, [BP-14]
  iadd R1, R2
  mov [SP], R1
  call __function_select_region
  mov R1, [BP-13]
  imul R1, 5
  mov [SP], R1
  mov R1, [BP-10]
  mov [SP+1], R1
  call __function_draw_region_zoomed_at
__for_11172_continue:
  mov R0, [BP-13]
  mov R1, R0
  iadd R1, 1
  mov [BP-13], R1
  jmp __for_11172_start
__for_11172_end:
__function_DrawSprite_return:
  mov SP, BP
  pop BP
  ret

__function_EnemyFrame:
  push BP
  mov BP, SP
  isub SP, 3
  push R1
  push R2
  push R3
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 2
  mov R0, [R1]
  mov [BP-1], R0
  mov R0, global_TypeFrameBase
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
__if_11239_start:
  mov R0, [BP-1]
  ieq R0, 3
  jt R0, __LogicalOr_ShortCircuit_11244
  mov R1, [BP-1]
  ieq R1, 4
  or R0, R1
__LogicalOr_ShortCircuit_11244:
  jf R0, __if_11239_end
__if_11248_start:
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  bnot R0
  jf R0, __if_11248_end
  mov R0, [BP-2]
  iadd R0, 3
  jmp __function_EnemyFrame_return
__if_11248_end:
__if_11258_start:
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 5
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_11258_end
  mov R0, [BP-2]
  iadd R0, 2
  jmp __function_EnemyFrame_return
__if_11258_end:
__if_11269_start:
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 6
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_11269_end
  mov R0, [BP-2]
  iadd R0, 1
  jmp __function_EnemyFrame_return
__if_11269_end:
  mov R0, [BP-2]
  jmp __function_EnemyFrame_return
__if_11239_end:
__if_11282_start:
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  bnot R0
  jf R0, __if_11282_end
  mov R0, [BP-2]
  iadd R0, 4
  jmp __function_EnemyFrame_return
__if_11282_end:
__if_11292_start:
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 5
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_11292_end
  mov R0, [BP-2]
  iadd R0, 3
  jmp __function_EnemyFrame_return
__if_11292_end:
__if_11303_start:
  mov R1, global_Enemies
  mov R2, [BP+2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 6
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_11303_end
  mov R0, [BP-2]
  iadd R0, 2
  jmp __function_EnemyFrame_return
__if_11303_end:
  mov R0, 15
  mov [BP-3], R0
__if_11317_start:
  mov R0, [BP-1]
  ieq R0, 1
  jf R0, __if_11317_end
  mov R0, 5
  mov [BP-3], R0
__if_11317_end:
  mov R0, [BP-2]
  mov R2, global_Enemies
  mov R3, [BP+2]
  imul R3, 11
  iadd R2, R3
  iadd R2, 8
  mov R1, [R2]
  mov R2, [BP-3]
  idiv R1, R2
  imod R1, 2
  iadd R0, R1
__function_EnemyFrame_return:
  pop R3
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_AddSprite:
  push BP
  mov BP, SP
  isub SP, 3
  mov R0, [BP+3]
  mov R1, [global_PlayerX]
  fsub R0, R1
  mov [BP-1], R0
  mov R0, [BP+4]
  mov R1, [global_PlayerY]
  fsub R0, R1
  mov [BP-2], R0
  mov R0, [BP-1]
  mov R1, [BP-1]
  fmul R0, R1
  mov R1, [BP-2]
  mov R2, [BP-2]
  fmul R1, R2
  fadd R0, R1
  mov [BP-3], R0
__if_11361_start:
  mov R0, [BP-3]
  fgt R0, 400.000000
  jf R0, __if_11361_end
  jmp __function_AddSprite_return
__if_11361_end:
__if_11366_start:
  mov R0, [global_SpriteCount]
  ige R0, 96
  jf R0, __if_11366_end
  jmp __function_AddSprite_return
__if_11366_end:
  mov R0, [BP+2]
  mov R1, global_DrawOrder
  mov R2, [global_SpriteCount]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP-3]
  mov R1, global_SortDepth
  mov R2, [global_SpriteCount]
  iadd R1, R2
  mov [R1], R0
  mov R0, [global_SpriteCount]
  mov R1, R0
  iadd R1, 1
  mov [global_SpriteCount], R1
__function_AddSprite_return:
  mov SP, BP
  pop BP
  ret

__function_DrawSprites:
  push BP
  mov BP, SP
  isub SP, 13
  mov R0, 0
  mov [global_SpriteCount], R0
  mov R0, 0
  mov [BP-1], R0
__for_11387_start:
  mov R0, [BP-1]
  ilt R0, 24
  jf R0, __for_11387_end
__if_11396_start:
  mov R1, global_Enemies
  mov R2, [BP-1]
  imul R2, 11
  iadd R1, R2
  iadd R1, 2
  mov R0, [R1]
  ige R0, 0
  jf R0, __if_11396_end
  mov R1, [BP-1]
  mov [SP], R1
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  mov R1, [R2]
  mov [SP+1], R1
  mov R2, global_Enemies
  mov R3, [BP-1]
  imul R3, 11
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  mov [SP+2], R1
  call __function_AddSprite
__if_11396_end:
__for_11387_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_11387_start
__for_11387_end:
  mov R0, 0
  mov [BP-1], R0
__for_11413_start:
  mov R0, [BP-1]
  ilt R0, 32
  jf R0, __for_11413_end
__if_11422_start:
  mov R1, global_Items
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  cib R0
  jf R0, __if_11422_end
  mov R1, [BP-1]
  iadd R1, 100
  mov [SP], R1
  mov R2, global_Items
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  mov R1, [R2]
  mov [SP+1], R1
  mov R2, global_Items
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  mov [SP+2], R1
  call __function_AddSprite
__if_11422_end:
__for_11413_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_11413_start
__for_11413_end:
  mov R0, 0
  mov [BP-1], R0
__for_11439_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_11439_end
__if_11448_start:
  mov R1, global_Projectiles
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  cib R0
  jf R0, __if_11448_end
  mov R1, [BP-1]
  iadd R1, 200
  mov [SP], R1
  mov R2, global_Projectiles
  mov R3, [BP-1]
  imul R3, 8
  iadd R2, R3
  mov R1, [R2]
  mov [SP+1], R1
  mov R2, global_Projectiles
  mov R3, [BP-1]
  imul R3, 8
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  mov [SP+2], R1
  call __function_AddSprite
__if_11448_end:
__for_11439_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_11439_start
__for_11439_end:
  mov R0, 0
  mov [BP-1], R0
__for_11465_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_11465_end
__if_11474_start:
  mov R1, global_Bolts
  mov R2, [BP-1]
  imul R2, 8
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  cib R0
  jf R0, __if_11474_end
  mov R1, [BP-1]
  iadd R1, 300
  mov [SP], R1
  mov R2, global_Bolts
  mov R3, [BP-1]
  imul R3, 8
  iadd R2, R3
  mov R1, [R2]
  mov [SP+1], R1
  mov R2, global_Bolts
  mov R3, [BP-1]
  imul R3, 8
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  mov [SP+2], R1
  call __function_AddSprite
__if_11474_end:
__for_11465_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_11465_start
__for_11465_end:
  mov R0, 1
  mov [BP-1], R0
__for_11491_start:
  mov R0, [BP-1]
  mov R1, [global_SpriteCount]
  ilt R0, R1
  jf R0, __for_11491_end
  mov R0, [BP-1]
  mov [BP-2], R0
__while_11504_start:
__while_11504_continue:
  mov R0, [BP-2]
  igt R0, 0
  jf R0, __LogicalAnd_ShortCircuit_11513
  mov R1, global_SortDepth
  mov R2, [BP-2]
  isub R2, 1
  iadd R1, R2
  mov R1, [R1]
  mov R2, global_SortDepth
  mov R3, [BP-2]
  iadd R2, R3
  mov R2, [R2]
  flt R1, R2
  and R0, R1
__LogicalAnd_ShortCircuit_11513:
  jf R0, __while_11504_end
  mov R0, global_SortDepth
  mov R1, [BP-2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-3], R0
  mov R0, global_SortDepth
  mov R1, [BP-2]
  isub R1, 1
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_SortDepth
  mov R2, [BP-2]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP-3]
  mov R1, global_SortDepth
  mov R2, [BP-2]
  isub R2, 1
  iadd R1, R2
  mov [R1], R0
  mov R0, global_DrawOrder
  mov R1, [BP-2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-4], R0
  mov R0, global_DrawOrder
  mov R1, [BP-2]
  isub R1, 1
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_DrawOrder
  mov R2, [BP-2]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP-4]
  mov R1, global_DrawOrder
  mov R2, [BP-2]
  isub R2, 1
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP-2]
  mov R1, R0
  isub R1, 1
  mov [BP-2], R1
  jmp __while_11504_start
__while_11504_end:
__for_11491_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_11491_start
__for_11491_end:
  mov R0, 0
  mov [BP-1], R0
__for_11563_start:
  mov R0, [BP-1]
  mov R1, [global_SpriteCount]
  ilt R0, R1
  jf R0, __for_11563_end
  mov R0, global_DrawOrder
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
__if_11578_start:
  mov R0, [BP-2]
  ilt R0, 100
  jf R0, __if_11578_else
  mov R1, global_Enemies
  mov R2, [BP-2]
  imul R2, 11
  iadd R1, R2
  iadd R1, 2
  mov R0, [R1]
  mov [BP-3], R0
  mov R1, [BP-2]
  mov [SP], R1
  call __function_EnemyFrame
  mov [BP-4], R0
__if_11593_start:
  mov R0, [BP-3]
  ieq R0, 4
  jf R0, __if_11593_else
  mov R2, global_Enemies
  mov R3, [BP-2]
  imul R3, 11
  iadd R2, R3
  mov R1, [R2]
  mov [SP], R1
  mov R2, global_Enemies
  mov R3, [BP-2]
  imul R3, 11
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  mov [SP+1], R1
  mov R1, [BP-4]
  imul R1, 128
  iadd R1, 2560
  mov [SP+2], R1
  mov R1, 128
  mov [SP+3], R1
  mov R1, global_TypeScale
  mov R2, [BP-3]
  iadd R1, R2
  mov R1, [R1]
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 0
  mov [SP+6], R1
  call __function_DrawSprite
  jmp __if_11593_end
__if_11593_else:
  mov R0, 0.000000
  mov [BP-5], R0
__if_11621_start:
  mov R0, [BP-3]
  ieq R0, 1
  jf R0, __LogicalAnd_ShortCircuit_11629
  mov R2, global_Enemies
  mov R3, [BP-2]
  imul R3, 11
  iadd R2, R3
  iadd R2, 4
  mov R1, [R2]
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_11629:
  jf R0, __if_11621_end
  mov R3, global_Enemies
  mov R4, [BP-2]
  imul R4, 11
  iadd R3, R4
  iadd R3, 8
  mov R2, [R3]
  cif R2
  fmul R2, 0.100000
  mov [SP], R2
  call __function_sin
  mov R1, R0
  fmul R1, 0.040000
  fadd R1, 0.300000
  mov [BP-5], R1
  mov R0, R1
__if_11621_end:
  mov R2, global_Enemies
  mov R3, [BP-2]
  imul R3, 11
  iadd R2, R3
  mov R1, [R2]
  mov [SP], R1
  mov R2, global_Enemies
  mov R3, [BP-2]
  imul R3, 11
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  mov [SP+1], R1
  mov R1, [BP-4]
  imul R1, 64
  iadd R1, 512
  mov [SP+2], R1
  mov R1, 64
  mov [SP+3], R1
  mov R1, global_TypeScale
  mov R2, [BP-3]
  iadd R1, R2
  mov R1, [R1]
  mov [SP+4], R1
  mov R1, [BP-5]
  mov [SP+5], R1
  mov R1, 0
  mov [SP+6], R1
  call __function_DrawSprite
__if_11593_end:
  jmp __if_11578_end
__if_11578_else:
__if_11663_start:
  mov R0, [BP-2]
  ilt R0, 200
  jf R0, __if_11663_else
  mov R0, [BP-2]
  isub R0, 100
  mov [BP-3], R0
  mov R1, global_Items
  mov R2, [BP-3]
  imul R2, 5
  iadd R1, R2
  iadd R1, 2
  mov R0, [R1]
  mov [BP-4], R0
  mov R0, 0.000000
  mov [BP-5], R0
  mov R0, 0
  mov [BP-6], R0
__if_11685_start:
  mov R0, [BP-4]
  ieq R0, 7
  jt R0, __LogicalOr_ShortCircuit_11690
  mov R1, [BP-4]
  ieq R1, 8
  or R0, R1
__LogicalOr_ShortCircuit_11690:
  jf R0, __if_11685_end
  mov R2, [global_FrameCount]
  cif R2
  fmul R2, 0.080000
  mov [SP], R2
  call __function_sin
  mov R1, R0
  fmul R1, 0.040000
  fadd R1, 0.040000
  mov [BP-5], R1
  mov R0, R1
  mov R0, 1
  mov [BP-6], R0
__if_11685_end:
  mov R2, global_Items
  mov R3, [BP-3]
  imul R3, 5
  iadd R2, R3
  mov R1, [R2]
  mov [SP], R1
  mov R2, global_Items
  mov R3, [BP-3]
  imul R3, 5
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  mov [SP+1], R1
  mov R1, [BP-4]
  imul R1, 64
  iadd R1, 512
  mov [SP+2], R1
  mov R1, 64
  mov [SP+3], R1
  mov R1, 0.500000
  mov [SP+4], R1
  mov R1, [BP-5]
  mov [SP+5], R1
  mov R1, [BP-6]
  mov [SP+6], R1
  call __function_DrawSprite
  jmp __if_11663_end
__if_11663_else:
__if_11725_start:
  mov R0, [BP-2]
  ilt R0, 300
  jf R0, __if_11725_else
  mov R0, [BP-2]
  isub R0, 200
  mov [BP-3], R0
  mov R2, global_Projectiles
  mov R3, [BP-3]
  imul R3, 8
  iadd R2, R3
  mov R1, [R2]
  mov [SP], R1
  mov R2, global_Projectiles
  mov R3, [BP-3]
  imul R3, 8
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  mov [SP+1], R1
  mov R2, global_Projectiles
  mov R3, [BP-3]
  imul R3, 8
  iadd R2, R3
  iadd R2, 5
  mov R1, [R2]
  imul R1, 64
  iadd R1, 512
  mov [SP+2], R1
  mov R1, 64
  mov [SP+3], R1
  mov R1, 0.300000
  mov [SP+4], R1
  mov R1, 0.320000
  mov [SP+5], R1
  mov R1, 1
  mov [SP+6], R1
  call __function_DrawSprite
  jmp __if_11725_end
__if_11725_else:
  mov R0, [BP-2]
  isub R0, 300
  mov [BP-3], R0
  mov R2, global_Bolts
  mov R3, [BP-3]
  imul R3, 8
  iadd R2, R3
  mov R1, [R2]
  mov [SP], R1
  mov R2, global_Bolts
  mov R3, [BP-3]
  imul R3, 8
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  mov [SP+1], R1
  mov R1, 2368
  mov [SP+2], R1
  mov R1, 64
  mov [SP+3], R1
  mov R1, 0.200000
  mov [SP+4], R1
  mov R1, 0.360000
  mov [SP+5], R1
  mov R1, 1
  mov [SP+6], R1
  call __function_DrawSprite
__if_11725_end:
__if_11663_end:
__if_11578_end:
__for_11563_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_11563_start
__for_11563_end:
__function_DrawSprites_return:
  mov SP, BP
  pop BP
  ret

__function_DrawWeapon:
  push BP
  mov BP, SP
  isub SP, 7
  mov R1, [global_WalkPhase]
  cif R1
  fmul R1, 0.180000
  mov [SP], R1
  call __function_sin
  mov [BP-1], R0
  mov R0, [BP-1]
  fmul R0, 14.000000
  cfi R0
  iadd R0, 320
  mov [BP-2], R0
  mov R2, [BP-1]
  mov [SP], R2
  call __function_fabs
  mov R1, R0
  fmul R1, 10.000000
  cfi R1
  iadd R1, 362
  mov R0, R1
  mov [BP-3], R0
  mov R0, [global_FlashTimer]
  igt R0, 0
  mov [BP-4], R0
__if_11811_start:
  mov R0, [BP-4]
  cib R0
  jf R0, __if_11811_end
  mov R0, [BP-3]
  iadd R0, 10
  mov [BP-3], R0
__if_11811_end:
__if_11816_start:
  mov R0, [BP-4]
  cib R0
  jf R0, __LogicalAnd_ShortCircuit_11818
  mov R1, [global_Weapon]
  ieq R1, 1
  and R0, R1
__LogicalAnd_ShortCircuit_11818:
  jf R0, __if_11816_end
  mov R0, [BP-3]
  iadd R0, 8
  mov [BP-3], R0
__if_11816_end:
  mov R1, -1
  mov [SP], R1
  call __function_set_multiply_color
  mov R0, 3100
  mov [BP-5], R0
__if_11830_start:
  mov R0, [global_Weapon]
  ieq R0, 1
  jf R0, __if_11830_end
  mov R0, 3103
  mov [BP-5], R0
__if_11830_end:
__if_11837_start:
  mov R0, [global_Weapon]
  ieq R0, 2
  jf R0, __if_11837_end
  mov R0, 3105
  mov [BP-5], R0
__if_11837_end:
__if_11844_start:
  mov R0, [BP-4]
  cib R0
  jf R0, __if_11844_end
  mov R0, [BP-5]
  mov R1, R0
  iadd R1, 1
  mov [BP-5], R1
__if_11844_end:
  mov R1, [BP-5]
  mov [SP], R1
  call __function_select_region
  mov R1, 2.000000
  mov [SP], R1
  mov R1, 2.000000
  mov [SP+1], R1
  call __function_set_drawing_scale
  mov R1, [BP-2]
  mov [SP], R1
  mov R1, [BP-3]
  mov [SP+1], R1
  call __function_draw_region_zoomed_at
__function_DrawWeapon_return:
  mov SP, BP
  pop BP
  ret

__function_DrawMinimap:
  push BP
  mov BP, SP
  isub SP, 17
  mov R0, 4
  mov [BP-1], R0
  mov R0, [BP-1]
  imul R0, 32
  isgn R0
  iadd R0, 640
  isub R0, 10
  mov [BP-2], R0
  mov R0, 10
  mov [BP-3], R0
  mov R2, 0
  mov [SP], R2
  mov R2, 0
  mov [SP+1], R2
  mov R2, 0
  mov [SP+2], R2
  mov R2, 170
  mov [SP+3], R2
  call __function_make_color_rgba
  mov R1, R0
  mov [BP-12], R1
  mov R1, [BP-2]
  isub R1, 2
  mov [SP], R1
  mov R1, [BP-3]
  isub R1, 2
  mov [SP+1], R1
  mov R1, [BP-1]
  imul R1, 32
  iadd R1, 4
  mov [SP+2], R1
  mov R1, [BP-1]
  imul R1, 32
  iadd R1, 4
  mov [SP+3], R1
  mov R1, [BP-12]
  mov [SP+4], R1
  call __function_DrawRect
  mov R1, 150
  mov [SP], R1
  mov R1, 150
  mov [SP+1], R1
  mov R1, 170
  mov [SP+2], R1
  mov R1, 210
  mov [SP+3], R1
  call __function_make_color_rgba
  mov [BP-4], R0
  mov R0, 0
  mov [BP-7], R0
__for_11901_start:
  mov R0, [BP-7]
  ilt R0, 32
  jf R0, __for_11901_end
  mov R0, -1
  mov [BP-8], R0
  mov R0, 0
  mov [BP-9], R0
__for_11915_start:
  mov R0, [BP-9]
  ile R0, 32
  jf R0, __for_11915_end
  mov R0, 0
  mov [BP-10], R0
__if_11928_start:
  mov R0, [BP-9]
  ilt R0, 32
  jf R0, __if_11928_end
  mov R0, global_Map
  mov R2, [BP-7]
  imul R2, 32
  iadd R0, R2
  mov R1, [BP-9]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-11], R0
  mov R0, [BP-11]
  ige R0, 1
  jf R0, __LogicalAnd_ShortCircuit_11947
  mov R1, [BP-11]
  ile R1, 5
  and R0, R1
__LogicalAnd_ShortCircuit_11947:
  jt R0, __LogicalOr_ShortCircuit_11951
  mov R1, [BP-11]
  ige R1, 11
  or R0, R1
__LogicalOr_ShortCircuit_11951:
  mov [BP-10], R0
__if_11928_end:
__if_11954_start:
  mov R0, [BP-10]
  cib R0
  jf R0, __LogicalAnd_ShortCircuit_11956
  mov R1, [BP-8]
  ilt R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_11956:
  jf R0, __if_11954_end
  mov R0, [BP-9]
  mov [BP-8], R0
__if_11954_end:
__if_11963_start:
  mov R0, [BP-10]
  bnot R0
  jf R0, __LogicalAnd_ShortCircuit_11966
  mov R1, [BP-8]
  ige R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_11966:
  jf R0, __if_11963_end
  mov R1, [BP-2]
  mov R2, [BP-8]
  mov R3, [BP-1]
  imul R2, R3
  iadd R1, R2
  mov [SP], R1
  mov R1, [BP-3]
  mov R2, [BP-7]
  mov R3, [BP-1]
  imul R2, R3
  iadd R1, R2
  mov [SP+1], R1
  mov R1, [BP-9]
  mov R2, [BP-8]
  isub R1, R2
  mov R2, [BP-1]
  imul R1, R2
  mov [SP+2], R1
  mov R1, [BP-1]
  mov [SP+3], R1
  mov R1, [BP-4]
  mov [SP+4], R1
  call __function_DrawRect
  mov R0, -1
  mov [BP-8], R0
__if_11963_end:
__for_11915_continue:
  mov R0, [BP-9]
  mov R1, R0
  iadd R1, 1
  mov [BP-9], R1
  jmp __for_11915_start
__for_11915_end:
__for_11901_continue:
  mov R0, [BP-7]
  mov R1, R0
  iadd R1, 1
  mov [BP-7], R1
  jmp __for_11901_start
__for_11901_end:
  mov R0, 0
  mov [BP-7], R0
__for_11994_start:
  mov R0, [BP-7]
  mov R1, [global_DoorCount]
  ilt R0, R1
  jf R0, __for_11994_end
__if_12004_start:
  mov R1, global_Doors
  mov R2, [BP-7]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  fge R0, 1.000000
  jf R0, __if_12004_end
  jmp __for_11994_continue
__if_12004_end:
  mov R1, 230
  mov [SP], R1
  mov R1, 200
  mov [SP+1], R1
  mov R1, 60
  mov [SP+2], R1
  call __function_make_color_rgb
  mov [BP-8], R0
__if_12018_start:
  mov R1, global_Doors
  mov R2, [BP-7]
  imul R2, 5
  iadd R1, R2
  iadd R1, 2
  mov R0, [R1]
  ieq R0, 1
  jf R0, __if_12018_end
  mov R2, 230
  mov [SP], R2
  mov R2, 50
  mov [SP+1], R2
  mov R2, 50
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-8], R1
  mov R0, R1
__if_12018_end:
__if_12031_start:
  mov R1, global_Doors
  mov R2, [BP-7]
  imul R2, 5
  iadd R1, R2
  iadd R1, 2
  mov R0, [R1]
  ieq R0, 2
  jf R0, __if_12031_end
  mov R2, 70
  mov [SP], R2
  mov R2, 120
  mov [SP+1], R2
  mov R2, 255
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-8], R1
  mov R0, R1
__if_12031_end:
  mov R1, [BP-2]
  mov R3, global_Doors
  mov R4, [BP-7]
  imul R4, 5
  iadd R3, R4
  mov R2, [R3]
  mov R3, [BP-1]
  imul R2, R3
  iadd R1, R2
  mov [SP], R1
  mov R1, [BP-3]
  mov R3, global_Doors
  mov R4, [BP-7]
  imul R4, 5
  iadd R3, R4
  iadd R3, 1
  mov R2, [R3]
  mov R3, [BP-1]
  imul R2, R3
  iadd R1, R2
  mov [SP+1], R1
  mov R1, [BP-1]
  mov [SP+2], R1
  mov R1, [BP-1]
  mov [SP+3], R1
  mov R1, [BP-8]
  mov [SP+4], R1
  call __function_DrawRect
__for_11994_continue:
  mov R0, [BP-7]
  mov R1, R0
  iadd R1, 1
  mov [BP-7], R1
  jmp __for_11994_start
__for_11994_end:
  mov R0, 0
  mov [BP-7], R0
__for_12064_start:
  mov R0, [BP-7]
  ilt R0, 24
  jf R0, __for_12064_end
__if_12073_start:
  mov R1, global_Enemies
  mov R2, [BP-7]
  imul R2, 11
  iadd R1, R2
  iadd R1, 2
  mov R0, [R1]
  ige R0, 0
  jf R0, __LogicalAnd_ShortCircuit_12084
  mov R2, global_Enemies
  mov R3, [BP-7]
  imul R3, 11
  iadd R2, R3
  iadd R2, 4
  mov R1, [R2]
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_12084:
  jf R0, __if_12073_end
  mov R1, [BP-2]
  mov R3, global_Enemies
  mov R4, [BP-7]
  imul R4, 11
  iadd R3, R4
  mov R2, [R3]
  mov R3, [BP-1]
  cif R3
  fmul R2, R3
  cfi R2
  iadd R1, R2
  isub R1, 1
  mov [SP], R1
  mov R1, [BP-3]
  mov R3, global_Enemies
  mov R4, [BP-7]
  imul R4, 11
  iadd R3, R4
  iadd R3, 1
  mov R2, [R3]
  mov R3, [BP-1]
  cif R3
  fmul R2, R3
  cfi R2
  iadd R1, R2
  isub R1, 1
  mov [SP+1], R1
  mov R1, 3
  mov [SP+2], R1
  mov R1, 3
  mov [SP+3], R1
  mov R1, -16776961
  mov [SP+4], R1
  call __function_DrawRect
__if_12073_end:
__for_12064_continue:
  mov R0, [BP-7]
  mov R1, R0
  iadd R1, 1
  mov [BP-7], R1
  jmp __for_12064_start
__for_12064_end:
  mov R0, [BP-2]
  mov R1, [global_PlayerX]
  mov R2, [BP-1]
  cif R2
  fmul R1, R2
  cfi R1
  iadd R0, R1
  mov [BP-5], R0
  mov R0, [BP-3]
  mov R1, [global_PlayerY]
  mov R2, [BP-1]
  cif R2
  fmul R1, R2
  cfi R1
  iadd R0, R1
  mov [BP-6], R0
  mov R1, [BP-5]
  isub R1, 2
  mov [SP], R1
  mov R1, [BP-6]
  isub R1, 2
  mov [SP+1], R1
  mov R1, 4
  mov [SP+2], R1
  mov R1, 4
  mov [SP+3], R1
  mov R1, -16711936
  mov [SP+4], R1
  call __function_DrawRect
  mov R1, [BP-5]
  mov R2, [global_DirX]
  fmul R2, 5.000000
  cfi R2
  iadd R1, R2
  isub R1, 1
  mov [SP], R1
  mov R1, [BP-6]
  mov R2, [global_DirY]
  fmul R2, 5.000000
  cfi R2
  iadd R1, R2
  isub R1, 1
  mov [SP+1], R1
  mov R1, 2
  mov [SP+2], R1
  mov R1, 2
  mov [SP+3], R1
  mov R1, -16711681
  mov [SP+4], R1
  call __function_DrawRect
__function_DrawMinimap_return:
  mov SP, BP
  pop BP
  ret

__function_DrawHUD:
  push BP
  mov BP, SP
  isub SP, 10
  mov R1, 255
  mov [SP], R1
  mov R1, 255
  mov [SP+1], R1
  mov R1, 255
  mov [SP+2], R1
  mov R1, 180
  mov [SP+3], R1
  call __function_make_color_rgba
  mov [BP-1], R0
  mov R1, 318
  mov [SP], R1
  mov R1, 170
  mov [SP+1], R1
  mov R1, 4
  mov [SP+2], R1
  mov R1, 7
  mov [SP+3], R1
  mov R1, [BP-1]
  mov [SP+4], R1
  call __function_DrawRect
  mov R1, 318
  mov [SP], R1
  mov R1, 183
  mov [SP+1], R1
  mov R1, 4
  mov [SP+2], R1
  mov R1, 7
  mov [SP+3], R1
  mov R1, [BP-1]
  mov [SP+4], R1
  call __function_DrawRect
  mov R1, 308
  mov [SP], R1
  mov R1, 178
  mov [SP+1], R1
  mov R1, 7
  mov [SP+2], R1
  mov R1, 4
  mov [SP+3], R1
  mov R1, [BP-1]
  mov [SP+4], R1
  call __function_DrawRect
  mov R1, 325
  mov [SP], R1
  mov R1, 178
  mov [SP+1], R1
  mov R1, 7
  mov [SP+2], R1
  mov R1, 4
  mov [SP+3], R1
  mov R1, [BP-1]
  mov [SP+4], R1
  call __function_DrawRect
__if_12195_start:
  mov R0, [global_DamageFlash]
  igt R0, 0
  jf R0, __if_12195_end
  mov R2, 255
  mov [SP], R2
  mov R2, 0
  mov [SP+1], R2
  mov R2, 0
  mov [SP+2], R2
  mov R2, [global_DamageFlash]
  imul R2, 8
  mov [SP+3], R2
  call __function_make_color_rgba
  mov R1, R0
  mov [BP-5], R1
  mov R1, 0
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 640
  mov [SP+2], R1
  mov R1, 360
  mov [SP+3], R1
  mov R1, [BP-5]
  mov [SP+4], R1
  call __function_DrawRect
__if_12195_end:
__if_12211_start:
  mov R0, [global_PickupFlash]
  igt R0, 0
  jf R0, __if_12211_end
  mov R2, 255
  mov [SP], R2
  mov R2, 255
  mov [SP+1], R2
  mov R2, 120
  mov [SP+2], R2
  mov R2, [global_PickupFlash]
  imul R2, 5
  mov [SP+3], R2
  call __function_make_color_rgba
  mov R1, R0
  mov [BP-5], R1
  mov R1, 0
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 640
  mov [SP+2], R1
  mov R1, 360
  mov [SP+3], R1
  mov R1, [BP-5]
  mov [SP+4], R1
  call __function_DrawRect
__if_12211_end:
__if_12227_start:
  mov R0, [global_BossDeathTimer]
  igt R0, 0
  jf R0, __LogicalAnd_ShortCircuit_12235
  mov R1, [global_BossDeathTimer]
  idiv R1, 6
  imod R1, 2
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_12235:
  jf R0, __if_12227_end
  mov R2, 255
  mov [SP], R2
  mov R2, 255
  mov [SP+1], R2
  mov R2, 255
  mov [SP+2], R2
  mov R2, 60
  mov [SP+3], R2
  call __function_make_color_rgba
  mov R1, R0
  mov [BP-5], R1
  mov R1, 0
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 640
  mov [SP+2], R1
  mov R1, 360
  mov [SP+3], R1
  mov R1, [BP-5]
  mov [SP+4], R1
  call __function_DrawRect
__if_12227_end:
  mov R2, 0
  mov [SP], R2
  mov R2, 0
  mov [SP+1], R2
  mov R2, 0
  mov [SP+2], R2
  mov R2, 170
  mov [SP+3], R2
  call __function_make_color_rgba
  mov R1, R0
  mov [BP-5], R1
  mov R1, 10
  mov [SP], R1
  mov R1, 326
  mov [SP+1], R1
  mov R1, 164
  mov [SP+2], R1
  mov R1, 24
  mov [SP+3], R1
  mov R1, [BP-5]
  mov [SP+4], R1
  call __function_DrawRect
  mov R2, 0
  mov [SP], R2
  mov R2, [global_Health]
  mov [SP+1], R2
  call __function_max
  mov R1, R0
  imul R1, 160
  idiv R1, 100
  mov R0, R1
  mov [BP-2], R0
  mov R1, 30
  mov [SP], R1
  mov R1, 150
  mov [SP+1], R1
  mov R1, 60
  mov [SP+2], R1
  call __function_make_color_rgb
  mov [BP-3], R0
__if_12273_start:
  mov R0, [global_Health]
  ilt R0, 60
  jf R0, __if_12273_end
  mov R2, 180
  mov [SP], R2
  mov R2, 140
  mov [SP+1], R2
  mov R2, 20
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-3], R1
  mov R0, R1
__if_12273_end:
__if_12283_start:
  mov R0, [global_Health]
  ilt R0, 30
  jf R0, __if_12283_end
  mov R2, 190
  mov [SP], R2
  mov R2, 30
  mov [SP+1], R2
  mov R2, 30
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-3], R1
  mov R0, R1
__if_12283_end:
  mov R1, 12
  mov [SP], R1
  mov R1, 328
  mov [SP+1], R1
  mov R1, [BP-2]
  mov [SP+2], R1
  mov R1, 20
  mov [SP+3], R1
  mov R1, [BP-3]
  mov [SP+4], R1
  call __function_DrawRect
  mov R1, -1
  mov [SP], R1
  call __function_set_multiply_color
  mov R2, 0
  mov [SP], R2
  mov R2, [global_Health]
  mov [SP+1], R2
  call __function_max
  mov R1, R0
  mov [BP-5], R1
  mov R1, 20
  mov [SP], R1
  mov R1, 328
  mov [SP+1], R1
  mov R1, __literal_string_12304
  mov [SP+2], R1
  mov R1, [BP-5]
  mov [SP+3], R1
  call __function_PrintNumber
  mov R2, 0
  mov [SP], R2
  mov R2, 0
  mov [SP+1], R2
  mov R2, 0
  mov [SP+2], R2
  mov R2, 170
  mov [SP+3], R2
  call __function_make_color_rgba
  mov R1, R0
  mov [BP-5], R1
  mov R1, 466
  mov [SP], R1
  mov R1, 326
  mov [SP+1], R1
  mov R1, 164
  mov [SP+2], R1
  mov R1, 24
  mov [SP+3], R1
  mov R1, [BP-5]
  mov [SP+4], R1
  call __function_DrawRect
  mov R1, -1
  mov [SP], R1
  call __function_set_multiply_color
__if_12320_start:
  mov R0, [global_Weapon]
  ieq R0, 1
  jf R0, __if_12320_else
  mov R1, 476
  mov [SP], R1
  mov R1, 328
  mov [SP+1], R1
  mov R1, __literal_string_12327
  mov [SP+2], R1
  mov R1, [global_Shells]
  mov [SP+3], R1
  call __function_PrintNumber
  jmp __if_12320_end
__if_12320_else:
__if_12329_start:
  mov R0, [global_Weapon]
  ieq R0, 2
  jf R0, __if_12329_else
  mov R1, 476
  mov [SP], R1
  mov R1, 328
  mov [SP+1], R1
  mov R1, __literal_string_12336
  mov [SP+2], R1
  mov R1, [global_Cells]
  mov [SP+3], R1
  call __function_PrintNumber
  jmp __if_12329_end
__if_12329_else:
  mov R1, 476
  mov [SP], R1
  mov R1, 328
  mov [SP+1], R1
  mov R1, __literal_string_12341
  mov [SP+2], R1
  mov R1, [global_Ammo]
  mov [SP+3], R1
  call __function_PrintNumber
__if_12329_end:
__if_12320_end:
  mov R2, 150
  mov [SP], R2
  mov R2, 160
  mov [SP+1], R2
  mov R2, 175
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-5], R1
  mov R1, [BP-5]
  mov [SP], R1
  call __function_set_multiply_color
__if_12348_start:
  mov R0, [global_Weapon]
  ieq R0, 1
  jf R0, __if_12348_else
  mov R1, 470
  mov [SP], R1
  mov R1, 304
  mov [SP+1], R1
  mov R1, __literal_string_12355
  mov [SP+2], R1
  call __function_print_at
  jmp __if_12348_end
__if_12348_else:
__if_12356_start:
  mov R0, [global_Weapon]
  ieq R0, 2
  jf R0, __if_12356_else
  mov R1, 470
  mov [SP], R1
  mov R1, 304
  mov [SP+1], R1
  mov R1, __literal_string_12363
  mov [SP+2], R1
  call __function_print_at
  jmp __if_12356_end
__if_12356_else:
  mov R1, 470
  mov [SP], R1
  mov R1, 304
  mov [SP+1], R1
  mov R1, __literal_string_12367
  mov [SP+2], R1
  call __function_print_at
__if_12356_end:
__if_12348_end:
__if_12368_start:
  mov R0, [global_HasRedKey]
  cib R0
  jf R0, __if_12368_end
  mov R2, 220
  mov [SP], R2
  mov R2, 40
  mov [SP+1], R2
  mov R2, 40
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-5], R1
  mov R1, 588
  mov [SP], R1
  mov R1, 329
  mov [SP+1], R1
  mov R1, 12
  mov [SP+2], R1
  mov R1, 18
  mov [SP+3], R1
  mov R1, [BP-5]
  mov [SP+4], R1
  call __function_DrawRect
  mov R1, 591
  mov [SP], R1
  mov R1, 332
  mov [SP+1], R1
  mov R1, 6
  mov [SP+2], R1
  mov R1, 4
  mov [SP+3], R1
  mov R1, -1
  mov [SP+4], R1
  call __function_DrawRect
__if_12368_end:
__if_12386_start:
  mov R0, [global_HasBlueKey]
  cib R0
  jf R0, __if_12386_end
  mov R2, 50
  mov [SP], R2
  mov R2, 110
  mov [SP+1], R2
  mov R2, 240
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-5], R1
  mov R1, 608
  mov [SP], R1
  mov R1, 329
  mov [SP+1], R1
  mov R1, 12
  mov [SP+2], R1
  mov R1, 18
  mov [SP+3], R1
  mov R1, [BP-5]
  mov [SP+4], R1
  call __function_DrawRect
  mov R1, 611
  mov [SP], R1
  mov R1, 332
  mov [SP+1], R1
  mov R1, 6
  mov [SP+2], R1
  mov R1, 4
  mov [SP+3], R1
  mov R1, -1
  mov [SP+4], R1
  call __function_DrawRect
__if_12386_end:
  mov R1, -1
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 10
  mov [SP], R1
  mov R1, 10
  mov [SP+1], R1
  mov R1, __literal_string_12409
  mov [SP+2], R1
  mov R1, [global_EnemiesTotal]
  mov R2, [global_Kills]
  isub R1, R2
  mov [SP+3], R1
  call __function_PrintNumber
__if_12413_start:
  mov R0, [global_BossActive]
  cib R0
  jf R0, __LogicalAnd_ShortCircuit_12415
  mov R1, [global_BossIndex]
  ige R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_12415:
  jf R0, __LogicalAnd_ShortCircuit_12423
  mov R2, global_Enemies
  mov R3, [global_BossIndex]
  imul R3, 11
  iadd R2, R3
  iadd R2, 4
  mov R1, [R2]
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_12423:
  jf R0, __if_12413_end
  mov R2, 0
  mov [SP], R2
  mov R2, 0
  mov [SP+1], R2
  mov R2, 0
  mov [SP+2], R2
  mov R2, 190
  mov [SP+3], R2
  call __function_make_color_rgba
  mov R1, R0
  mov [BP-5], R1
  mov R1, 168
  mov [SP], R1
  mov R1, 38
  mov [SP+1], R1
  mov R1, 304
  mov [SP+2], R1
  mov R1, 14
  mov [SP+3], R1
  mov R1, [BP-5]
  mov [SP+4], R1
  call __function_DrawRect
  mov R1, global_Enemies
  mov R2, [global_BossIndex]
  imul R2, 11
  iadd R1, R2
  iadd R1, 3
  mov R0, [R1]
  imul R0, 300
  mov R1, [4691]
  idiv R0, R1
  mov [BP-4], R0
  mov R2, 200
  mov [SP], R2
  mov R2, 40
  mov [SP+1], R2
  mov R2, 220
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-5], R1
  mov R1, 170
  mov [SP], R1
  mov R1, 40
  mov [SP+1], R1
  mov R1, [BP-4]
  mov [SP+2], R1
  mov R1, 10
  mov [SP+3], R1
  mov R1, [BP-5]
  mov [SP+4], R1
  call __function_DrawRect
  mov R2, 230
  mov [SP], R2
  mov R2, 160
  mov [SP+1], R2
  mov R2, 255
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-5], R1
  mov R1, [BP-5]
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 14
  mov [SP], R1
  mov R1, __literal_string_12463
  mov [SP+1], R1
  call __function_PrintCentered
__if_12413_end:
__if_12464_start:
  mov R0, [global_MessageTimer]
  igt R0, 0
  jf R0, __if_12464_else
  mov R1, -16711681
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 70
  mov [SP], R1
  mov R1, global_MessageText
  mov [SP+1], R1
  call __function_PrintCentered
  jmp __if_12464_end
__if_12464_else:
__if_12474_start:
  mov R2, [global_Weapon]
  mov [SP], R2
  call __function_WeaponAmmo
  mov R1, R0
  ieq R1, 0
  mov R0, R1
  jf R0, __if_12474_end
  mov R1, -16744193
  mov [SP], R1
  call __function_set_multiply_color
__if_12482_start:
  mov R0, [global_Ammo]
  igt R0, 0
  jt R0, __LogicalOr_ShortCircuit_12492
  mov R1, [global_HasShotgun]
  cib R1
  jf R1, __LogicalAnd_ShortCircuit_12488
  mov R2, [global_Shells]
  igt R2, 0
  and R1, R2
__LogicalAnd_ShortCircuit_12488:
  or R0, R1
__LogicalOr_ShortCircuit_12492:
  jt R0, __LogicalOr_ShortCircuit_12499
  mov R1, [global_HasRifle]
  cib R1
  jf R1, __LogicalAnd_ShortCircuit_12495
  mov R2, [global_Cells]
  igt R2, 0
  and R1, R2
__LogicalAnd_ShortCircuit_12495:
  or R0, R1
__LogicalOr_ShortCircuit_12499:
  jf R0, __if_12482_else
  mov R1, 220
  mov [SP], R1
  mov R1, __literal_string_12502
  mov [SP+1], R1
  call __function_PrintCentered
  jmp __if_12482_end
__if_12482_else:
  mov R1, 220
  mov [SP], R1
  mov R1, __literal_string_12505
  mov [SP+1], R1
  call __function_PrintCentered
__if_12482_end:
__if_12474_end:
__if_12464_end:
__if_12506_start:
  call __function_FacingExit
  cib R0
  jf R0, __if_12506_end
  mov R2, 0
  mov [SP], R2
  mov R2, 0
  mov [SP+1], R2
  mov R2, 0
  mov [SP+2], R2
  mov R2, 180
  mov [SP+3], R2
  call __function_make_color_rgba
  mov R1, R0
  mov [BP-5], R1
  mov R1, 230
  mov [SP], R1
  mov R1, 262
  mov [SP+1], R1
  mov R1, 180
  mov [SP+2], R1
  mov R1, 26
  mov [SP+3], R1
  mov R1, [BP-5]
  mov [SP+4], R1
  call __function_DrawRect
  mov R2, 100
  mov [SP], R2
  mov R2, 255
  mov [SP+1], R2
  mov R2, 130
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-5], R1
  mov R1, [BP-5]
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 265
  mov [SP], R1
  mov R1, __literal_string_12526
  mov [SP+1], R1
  call __function_PrintCentered
__if_12506_end:
  mov R1, -1
  mov [SP], R1
  call __function_set_multiply_color
__function_DrawHUD_return:
  mov SP, BP
  pop BP
  ret

__function_DrawWorld:
  push BP
  mov BP, SP
  call __function_DrawFloorAndCeiling
  call __function_DrawWalls
  call __function_DrawSprites
__function_DrawWorld_return:
  mov SP, BP
  pop BP
  ret

__function_DrawPanel:
  push BP
  mov BP, SP
  isub SP, 5
  mov R1, 0
  mov [SP], R1
  mov R1, [BP+2]
  mov [SP+1], R1
  mov R1, 640
  mov [SP+2], R1
  mov R1, [BP+3]
  mov [SP+3], R1
  mov R1, [BP+4]
  mov [SP+4], R1
  call __function_DrawRect
  mov R1, -1
  mov [SP], R1
  call __function_set_multiply_color
__function_DrawPanel_return:
  mov SP, BP
  pop BP
  ret

__function_PrintTime:
  push BP
  mov BP, SP
  isub SP, 4
  mov R0, [BP+3]
  idiv R0, 60
  mov [BP-1], R0
  mov R1, global_TextBuffer
  mov [SP], R1
  mov R1, __literal_string_12555
  mov [SP+1], R1
  call __function_strcpy
  mov R1, [BP-1]
  idiv R1, 60
  mov [SP], R1
  mov R1, global_NumberBuffer
  mov [SP+1], R1
  mov R1, 10
  mov [SP+2], R1
  call __function_itoa
  mov R1, global_TextBuffer
  mov [SP], R1
  mov R1, global_NumberBuffer
  mov [SP+1], R1
  call __function_strcat
  mov R1, global_TextBuffer
  mov [SP], R1
  mov R1, __literal_string_12567
  mov [SP+1], R1
  call __function_strcat
__if_12568_start:
  mov R0, [BP-1]
  imod R0, 60
  ilt R0, 10
  jf R0, __if_12568_end
  mov R1, global_TextBuffer
  mov [SP], R1
  mov R1, __literal_string_12577
  mov [SP+1], R1
  call __function_strcat
__if_12568_end:
  mov R1, [BP-1]
  imod R1, 60
  mov [SP], R1
  mov R1, global_NumberBuffer
  mov [SP+1], R1
  mov R1, 10
  mov [SP+2], R1
  call __function_itoa
  mov R1, global_TextBuffer
  mov [SP], R1
  mov R1, global_NumberBuffer
  mov [SP+1], R1
  call __function_strcat
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, global_TextBuffer
  mov [SP+1], R1
  call __function_PrintCentered
__function_PrintTime_return:
  mov SP, BP
  pop BP
  ret

__function_main:
  push BP
  mov BP, SP
  isub SP, 6
  call __function_DefineRegions
  call __function_NewGame
  mov R0, 0
  mov [global_GameState], R0
  mov R0, 0
  mov [global_StateTimer], R0
  mov R0, 0
  mov [global_ShowMap], R0
__while_12602_start:
__while_12602_continue:
  mov R0, 1
  jf R0, __while_12602_end
  mov R1, 0
  mov [SP], R1
  call __function_select_gamepad
  mov R1, 0
  mov [SP], R1
  call __function_select_texture
  mov R0, [global_StateTimer]
  mov R1, R0
  iadd R1, 1
  mov [global_StateTimer], R1
  mov R0, [global_FrameCount]
  mov R1, R0
  iadd R1, 1
  mov [global_FrameCount], R1
__if_12613_start:
  mov R0, [global_GameState]
  ieq R0, 0
  jf R0, __if_12613_else
  mov R1, 0.004000
  mov [SP], R1
  call __function_RotatePlayer
  call __function_DrawWorld
  mov R2, 0
  mov [SP], R2
  mov R2, 0
  mov [SP+1], R2
  mov R2, 0
  mov [SP+2], R2
  mov R2, 170
  mov [SP+3], R2
  call __function_make_color_rgba
  mov R1, R0
  mov [BP-1], R1
  mov R1, 80
  mov [SP], R1
  mov R1, 190
  mov [SP+1], R1
  mov R1, [BP-1]
  mov [SP+2], R1
  call __function_DrawPanel
  mov R1, -16744193
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 96
  mov [SP], R1
  mov R1, __literal_string_12633
  mov [SP+1], R1
  call __function_PrintCentered
  mov R1, -1
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, global_TextBuffer
  mov [SP], R1
  mov R1, __literal_string_12638
  mov [SP+1], R1
  call __function_strcpy
  mov R1, 4
  mov [SP], R1
  mov R1, global_NumberBuffer
  mov [SP+1], R1
  mov R1, 10
  mov [SP+2], R1
  call __function_itoa
  mov R1, global_TextBuffer
  mov [SP], R1
  mov R1, global_NumberBuffer
  mov [SP+1], R1
  call __function_strcat
  mov R1, global_TextBuffer
  mov [SP], R1
  mov R1, __literal_string_12648
  mov [SP+1], R1
  call __function_strcat
  mov R1, 136
  mov [SP], R1
  mov R1, global_TextBuffer
  mov [SP+1], R1
  call __function_PrintCentered
  mov R1, 166
  mov [SP], R1
  mov R1, __literal_string_12654
  mov [SP+1], R1
  call __function_PrintCentered
  mov R1, 190
  mov [SP], R1
  mov R1, __literal_string_12657
  mov [SP+1], R1
  call __function_PrintCentered
__if_12658_start:
  mov R0, [global_StateTimer]
  idiv R0, 30
  imod R0, 2
  cib R0
  jf R0, __if_12658_end
  mov R1, 230
  mov [SP], R1
  mov R1, __literal_string_12667
  mov [SP+1], R1
  call __function_PrintCentered
__if_12658_end:
__if_12668_start:
  call __function_gamepad_button_start
  mov R1, R0
  ieq R1, 1
  mov R0, R1
  jf R0, __if_12668_end
  call __function_NewGame
  mov R1, 5
  mov [SP], R1
  mov R1, 0.800000
  mov [SP+1], R1
  mov R1, 0.800000
  mov [SP+2], R1
  call __function_PlaySfx
  mov R0, 1
  mov [global_GameState], R0
  mov R0, 0
  mov [global_StateTimer], R0
__if_12668_end:
  jmp __if_12613_end
__if_12613_else:
__if_12684_start:
  mov R0, [global_GameState]
  ieq R0, 1
  jf R0, __if_12684_else
  call __function_DrawWorld
  mov R2, 0
  mov [SP], R2
  mov R2, 0
  mov [SP+1], R2
  mov R2, 0
  mov [SP+2], R2
  mov R2, 190
  mov [SP+3], R2
  call __function_make_color_rgba
  mov R1, R0
  mov [BP-1], R1
  mov R1, 120
  mov [SP], R1
  mov R1, 110
  mov [SP+1], R1
  mov R1, [BP-1]
  mov [SP+2], R1
  call __function_DrawPanel
  mov R1, -16744193
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 285
  mov [SP], R1
  mov R1, 140
  mov [SP+1], R1
  mov R1, __literal_string_12703
  mov [SP+2], R1
  mov R1, [global_CurrentLevel]
  iadd R1, 1
  mov [SP+3], R1
  call __function_PrintNumber
  mov R1, -1
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 175
  mov [SP], R1
  mov R1, global_LevelName
  mov [SP+1], R1
  call __function_PrintCentered
__if_12712_start:
  mov R1, [global_StateTimer]
  igt R1, 150
  jt R1, __LogicalOr_ShortCircuit_12724
  mov R2, [global_StateTimer]
  igt R2, 20
  jf R2, __LogicalAnd_ShortCircuit_12721
  call __function_gamepad_button_start
  mov R3, R0
  ieq R3, 1
  and R2, R3
__LogicalAnd_ShortCircuit_12721:
  or R1, R2
__LogicalOr_ShortCircuit_12724:
  mov R0, R1
  jf R0, __if_12712_end
  mov R0, 2
  mov [global_GameState], R0
  mov R0, 0
  mov [global_StateTimer], R0
__if_12712_end:
  jmp __if_12684_end
__if_12684_else:
__if_12732_start:
  mov R0, [global_GameState]
  ieq R0, 2
  jf R0, __if_12732_else
  mov R0, [global_LevelFrames]
  mov R1, R0
  iadd R1, 1
  mov [global_LevelFrames], R1
  call __function_UpdatePlayer
__if_12740_start:
  mov R0, [global_GameState]
  ieq R0, 2
  jf R0, __if_12740_else
  call __function_UpdateDoors
  call __function_UpdateEnemies
  call __function_UpdateProjectiles
  call __function_UpdateBolts
  call __function_DrawWorld
  call __function_DrawWeapon
__if_12751_start:
  mov R0, [global_ShowMap]
  cib R0
  jf R0, __if_12751_end
  call __function_DrawMinimap
__if_12751_end:
  call __function_DrawHUD
  jmp __if_12740_end
__if_12740_else:
  call __function_DrawWorld
__if_12740_end:
__if_12756_start:
  mov R0, [global_BossDeathTimer]
  igt R0, 0
  jf R0, __if_12756_end
  mov R0, [global_BossDeathTimer]
  mov R1, R0
  isub R1, 1
  mov [global_BossDeathTimer], R1
__if_12763_start:
  mov R0, [global_BossDeathTimer]
  imod R0, 30
  ieq R0, 0
  jf R0, __if_12763_end
  mov R2, 40
  mov [SP], R2
  call __function_RandomInt
  mov R1, R0
  cif R1
  fdiv R1, 100.000000
  fadd R1, 0.600000
  mov [BP-1], R1
  mov R1, 12
  mov [SP], R1
  mov R1, 1.000000
  mov [SP+1], R1
  mov R1, [BP-1]
  mov [SP+2], R1
  call __function_PlaySfx
__if_12763_end:
__if_12779_start:
  mov R0, [global_BossDeathTimer]
  ieq R0, 0
  jf R0, __if_12779_end
  mov R0, [global_TotalKills]
  mov R1, [global_Kills]
  iadd R0, R1
  mov [global_TotalKills], R0
  mov R0, [global_TotalEnemies]
  mov R1, [global_EnemiesTotal]
  iadd R0, R1
  mov [global_TotalEnemies], R0
  mov R0, [global_TotalSecrets]
  mov R1, [global_SecretsFound]
  iadd R0, R1
  mov [global_TotalSecrets], R0
  mov R0, [global_TotalSecretsAvailable]
  mov R1, [global_SecretsTotal]
  iadd R0, R1
  mov [global_TotalSecretsAvailable], R0
  call __function_stop_all_channels
  mov R1, 8
  mov [SP], R1
  mov R1, 1.000000
  mov [SP+1], R1
  mov R1, 1.000000
  mov [SP+2], R1
  call __function_PlaySfx
  mov R0, 5
  mov [global_GameState], R0
  mov R0, 0
  mov [global_StateTimer], R0
__if_12779_end:
__if_12756_end:
__if_12807_start:
  mov R0, [global_GameState]
  ieq R0, 2
  jf R0, __LogicalAnd_ShortCircuit_12812
  mov R1, [global_Health]
  ile R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_12812:
  jf R0, __if_12807_end
  call __function_stop_all_channels
  mov R1, 7
  mov [SP], R1
  mov R1, 1.000000
  mov [SP+1], R1
  mov R1, 1.000000
  mov [SP+2], R1
  call __function_PlaySfx
  mov R0, 4
  mov [global_GameState], R0
  mov R0, 0
  mov [global_StateTimer], R0
__if_12807_end:
  jmp __if_12732_end
__if_12732_else:
__if_12827_start:
  mov R0, [global_GameState]
  ieq R0, 3
  jf R0, __if_12827_else
  call __function_DrawWorld
  mov R2, 0
  mov [SP], R2
  mov R2, 0
  mov [SP+1], R2
  mov R2, 0
  mov [SP+2], R2
  mov R2, 190
  mov [SP+3], R2
  call __function_make_color_rgba
  mov R1, R0
  mov [BP-1], R1
  mov R1, 70
  mov [SP], R1
  mov R1, 220
  mov [SP+1], R1
  mov R1, [BP-1]
  mov [SP+2], R1
  call __function_DrawPanel
  mov R2, 100
  mov [SP], R2
  mov R2, 255
  mov [SP+1], R2
  mov R2, 130
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-1], R1
  mov R1, [BP-1]
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 90
  mov [SP], R1
  mov R1, __literal_string_12848
  mov [SP+1], R1
  call __function_PrintCentered
  mov R1, -1
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 120
  mov [SP], R1
  mov R1, global_LevelName
  mov [SP+1], R1
  call __function_PrintCentered
  mov R1, 160
  mov [SP], R1
  mov R1, __literal_string_12856
  mov [SP+1], R1
  mov R1, [global_Kills]
  mov [SP+2], R1
  mov R1, [global_EnemiesTotal]
  mov [SP+3], R1
  call __function_PrintRatio
  mov R1, 185
  mov [SP], R1
  mov R1, __literal_string_12861
  mov [SP+1], R1
  mov R1, [global_SecretsFound]
  mov [SP+2], R1
  mov R1, [global_SecretsTotal]
  mov [SP+3], R1
  call __function_PrintRatio
  mov R1, 210
  mov [SP], R1
  mov R1, [global_LevelFrames]
  mov [SP+1], R1
  call __function_PrintTime
__if_12867_start:
  mov R0, [global_StateTimer]
  igt R0, 60
  jf R0, __LogicalAnd_ShortCircuit_12875
  mov R1, [global_StateTimer]
  idiv R1, 30
  imod R1, 2
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_12875:
  jf R0, __if_12867_end
  mov R1, 250
  mov [SP], R1
  mov R1, __literal_string_12880
  mov [SP+1], R1
  call __function_PrintCentered
__if_12867_end:
__if_12881_start:
  mov R1, [global_StateTimer]
  igt R1, 60
  jf R1, __LogicalAnd_ShortCircuit_12886
  call __function_gamepad_button_start
  mov R2, R0
  ieq R2, 1
  and R1, R2
__LogicalAnd_ShortCircuit_12886:
  mov R0, R1
  jf R0, __if_12881_end
  mov R0, [global_CurrentLevel]
  mov R1, R0
  iadd R1, 1
  mov [global_CurrentLevel], R1
  mov R1, [global_CurrentLevel]
  mov [SP], R1
  call __function_LoadLevel
  mov R0, 1
  mov [global_GameState], R0
  mov R0, 0
  mov [global_StateTimer], R0
__if_12881_end:
  jmp __if_12827_end
__if_12827_else:
__if_12900_start:
  mov R0, [global_GameState]
  ieq R0, 4
  jf R0, __if_12900_else
  call __function_DrawWorld
  mov R2, 120
  mov [SP], R2
  mov R2, 0
  mov [SP+1], R2
  mov R2, 0
  mov [SP+2], R2
  mov R2, 170
  mov [SP+3], R2
  call __function_make_color_rgba
  mov R1, R0
  mov [BP-1], R1
  mov R1, 0
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 640
  mov [SP+2], R1
  mov R1, 360
  mov [SP+3], R1
  mov R1, [BP-1]
  mov [SP+4], R1
  call __function_DrawRect
  mov R1, -1
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 140
  mov [SP], R1
  mov R1, __literal_string_12920
  mov [SP+1], R1
  call __function_PrintCentered
  mov R1, 175
  mov [SP], R1
  mov R1, __literal_string_12923
  mov [SP+1], R1
  call __function_PrintCentered
__if_12924_start:
  mov R0, [global_StateTimer]
  igt R0, 60
  jf R0, __LogicalAnd_ShortCircuit_12932
  mov R1, [global_StateTimer]
  idiv R1, 30
  imod R1, 2
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_12932:
  jf R0, __if_12924_end
  mov R1, 230
  mov [SP], R1
  mov R1, __literal_string_12937
  mov [SP+1], R1
  call __function_PrintCentered
__if_12924_end:
__if_12938_start:
  mov R1, [global_StateTimer]
  igt R1, 60
  jf R1, __LogicalAnd_ShortCircuit_12943
  call __function_gamepad_button_start
  mov R2, R0
  ieq R2, 1
  and R1, R2
__LogicalAnd_ShortCircuit_12943:
  mov R0, R1
  jf R0, __if_12938_end
  mov R0, 100
  mov [global_Health], R0
  mov R2, [global_LevelStartAmmo]
  mov [SP], R2
  mov R2, 30
  mov [SP+1], R2
  call __function_max
  mov R1, R0
  mov [global_Ammo], R1
  mov R0, R1
  mov R0, [global_LevelStartShells]
  mov [global_Shells], R0
  mov R0, [global_LevelStartCells]
  mov [global_Cells], R0
  mov R0, [global_LevelStartShotgun]
  mov [global_HasShotgun], R0
  mov R0, [global_LevelStartRifle]
  mov [global_HasRifle], R0
__if_12967_start:
  mov R2, [global_Weapon]
  mov [SP], R2
  call __function_OwnsWeapon
  mov R1, R0
  bnot R1
  mov R0, R1
  jf R0, __if_12967_end
  mov R0, 0
  mov [global_Weapon], R0
__if_12967_end:
  mov R1, [global_CurrentLevel]
  mov [SP], R1
  call __function_LoadLevel
  mov R0, 1
  mov [global_GameState], R0
  mov R0, 0
  mov [global_StateTimer], R0
__if_12938_end:
  jmp __if_12900_end
__if_12900_else:
  call __function_DrawWorld
  mov R2, 0
  mov [SP], R2
  mov R2, 0
  mov [SP+1], R2
  mov R2, 0
  mov [SP+2], R2
  mov R2, 190
  mov [SP+3], R2
  call __function_make_color_rgba
  mov R1, R0
  mov [BP-1], R1
  mov R1, 60
  mov [SP], R1
  mov R1, 240
  mov [SP+1], R1
  mov R1, [BP-1]
  mov [SP+2], R1
  call __function_DrawPanel
  mov R1, -16744193
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 80
  mov [SP], R1
  mov R1, __literal_string_12996
  mov [SP+1], R1
  call __function_PrintCentered
  mov R1, -1
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 110
  mov [SP], R1
  mov R1, __literal_string_13001
  mov [SP+1], R1
  call __function_PrintCentered
  mov R1, 160
  mov [SP], R1
  mov R1, __literal_string_13004
  mov [SP+1], R1
  mov R1, [global_TotalKills]
  mov [SP+2], R1
  mov R1, [global_TotalEnemies]
  mov [SP+3], R1
  call __function_PrintRatio
  mov R1, 185
  mov [SP], R1
  mov R1, __literal_string_13009
  mov [SP+1], R1
  mov R1, [global_TotalSecrets]
  mov [SP+2], R1
  mov R1, [global_TotalSecretsAvailable]
  mov [SP+3], R1
  call __function_PrintRatio
__if_13012_start:
  mov R0, [global_StateTimer]
  igt R0, 90
  jf R0, __LogicalAnd_ShortCircuit_13020
  mov R1, [global_StateTimer]
  idiv R1, 30
  imod R1, 2
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_13020:
  jf R0, __if_13012_end
  mov R1, 250
  mov [SP], R1
  mov R1, __literal_string_13025
  mov [SP+1], R1
  call __function_PrintCentered
__if_13012_end:
__if_13026_start:
  mov R1, [global_StateTimer]
  igt R1, 90
  jf R1, __LogicalAnd_ShortCircuit_13031
  call __function_gamepad_button_start
  mov R2, R0
  ieq R2, 1
  and R1, R2
__LogicalAnd_ShortCircuit_13031:
  mov R0, R1
  jf R0, __if_13026_end
  call __function_NewGame
  mov R0, 0
  mov [global_GameState], R0
  mov R0, 0
  mov [global_StateTimer], R0
__if_13026_end:
__if_12900_end:
__if_12827_end:
__if_12732_end:
__if_12684_end:
__if_12613_end:
  call __function_end_frame
  jmp __while_12602_start
__while_12602_end:
__function_main_return:
  mov SP, BP
  pop BP
  ret

__literal_string_1539:
  string "0123456789ABCDEF"
__literal_string_1576:
  string "-2147483648"
__literal_string_6797:
  string "OUTER DEPOT"
__literal_string_6804:
  string "INNER DEPOT"
__literal_string_6811:
  string "PROCESSING PLANT"
__literal_string_6818:
  string "THE CORE"
__literal_string_7466:
  string " / "
__literal_string_8340:
  string "THE WARDEN IS FALLING!"
__literal_string_8444:
  string "THE WARDEN IS ENRAGED!"
__literal_string_9134:
  string "SECRET AREA FOUND!"
__literal_string_9537:
  string "SHOTGUN ACQUIRED  -  X TO SWITCH"
__literal_string_9564:
  string "PLASMA RIFLE ACQUIRED  -  X TO SWITCH"
__literal_string_9579:
  string "RED KEYCARD ACQUIRED"
__literal_string_9585:
  string "BLUE KEYCARD ACQUIRED"
__literal_string_9751:
  string "RED KEYCARD REQUIRED"
__literal_string_9753:
  string "BLUE KEYCARD REQUIRED"
__literal_string_10171:
  string "THE WARDEN AWAKENS"
__literal_string_12304:
  string "HP "
__literal_string_12327:
  string "SHELLS "
__literal_string_12336:
  string "CELLS "
__literal_string_12341:
  string "AMMO "
__literal_string_12355:
  string "SHOTGUN"
__literal_string_12363:
  string "PLASMA RIFLE"
__literal_string_12367:
  string "BLASTER"
__literal_string_12409:
  string "ROBOTS LEFT "
__literal_string_12463:
  string "THE WARDEN"
__literal_string_12502:
  string "EMPTY - PRESS X TO SWITCH WEAPON"
__literal_string_12505:
  string "OUT OF AMMO - FIND A CRATE"
__literal_string_12526:
  string "PRESS B TO EXIT"
__literal_string_12555:
  string "TIME "
__literal_string_12567:
  string ":"
__literal_string_12577:
  string "0"
__literal_string_12633:
  string "S E N T R Y   S W E E P"
__literal_string_12638:
  string "Fight through "
__literal_string_12648:
  string " levels of hostile robots"
__literal_string_12654:
  string "D-PAD move/turn   L/R strafe   A fire"
__literal_string_12657:
  string "X switch weapon   B use/exit   Y map"
__literal_string_12667:
  string "PRESS START"
__literal_string_12703:
  string "LEVEL "
__literal_string_12848:
  string "LEVEL COMPLETE"
__literal_string_12856:
  string "ROBOTS "
__literal_string_12861:
  string "SECRETS "
__literal_string_12880:
  string "PRESS START"
__literal_string_12920:
  string "YOU WERE DESTROYED"
__literal_string_12923:
  string "Retry this level with full health"
__literal_string_12937:
  string "PRESS START"
__literal_string_12996:
  string "THE WARDEN IS DESTROYED"
__literal_string_13001:
  string "The Core has gone quiet. Sector cleared!"
__literal_string_13004:
  string "TOTAL ROBOTS "
__literal_string_13009:
  string "TOTAL SECRETS "
__literal_string_13025:
  string "PRESS START"
