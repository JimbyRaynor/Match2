function LoadCardSprites(){
// can have any order for cardsprites array now ... but current listing seems best
if (global.level == 1)
{
global.cardsprites = [spr1,spr2,spr3,spr4,spr5,spr6,spr7,spr8,spr1ans,spr2ans,spr3ans,spr4ans,spr5ans,spr6ans,spr7ans,spr8ans]
global.cardans[0] = [spr1ans, spr5ans]  // answers for spr1
global.cardans[1] = [spr2ans]                   // answers for spr2
global.cardans[2] = [spr3ans,spr4ans]  // answers for spr3
global.cardans[3] = [spr4ans,spr3ans]  // answers for spr4
global.cardans[4] = [spr5ans,spr1ans]  // answers for spr5
global.cardans[5] = [spr6ans]                  // answers for spr6
global.cardans[6] = [spr7ans]                  // answers for spr7
global.cardans[7] = [spr8ans]                  // answers for spr8
// answer cards  ... same pattern as above :) // could write a function for this ...
global.cardans[8] = [spr1, spr5]              // answers for spr1ans
global.cardans[9] = [spr2]                         // answers for spr2ans
global.cardans[10] = [spr3,spr4]             // answers for spr3ans
global.cardans[11] = [spr4,spr3]            // answers for spr4ans
global.cardans[12] = [spr5,spr1]            // answers for spr5ans
global.cardans[13] = [spr6]                     // answers for spr6ans
global.cardans[14] = [spr7]                     // answers for spr7ans
global.cardans[15] = [spr8]                    // answers for spr8ans
}

if (global.level == 2)
{
global.cardsprites = [spr1L2,spr2L2,spr3L2,spr4L2,spr5L2,spr6L2,spr7L2,spr8L2,spr1ansL2,spr2ansL2,spr3ansL2,spr4ansL2,spr5ansL2,spr6ansL2,spr7ansL2,spr8ansL2]
global.cardans[0] = [spr1ansL2, spr5ansL2]  // answers for spr1
global.cardans[1] = [spr2ansL2]                   // answers for spr2
global.cardans[2] = [spr3ansL2,spr4ansL2]  // answers for spr3
global.cardans[3] = [spr4ansL2,spr3ansL2]  // answers for spr4
global.cardans[4] = [spr5ansL2,spr1ansL2]  // answers for spr5
global.cardans[5] = [spr6ansL2]                  // answers for spr6
global.cardans[6] = [spr7ansL2]                  // answers for spr7
global.cardans[7] = [spr8ansL2]                  // answers for spr8
// answer cards  ... same pattern as above :) // could write a function for this ...
global.cardans[8] = [spr1L2, spr5L2]              // answers for spr1ans
global.cardans[9] = [spr2L2]                         // answers for spr2ans
global.cardans[10] = [spr3L2,spr4L2]             // answers for spr3ans
global.cardans[11] = [spr4L2,spr3L2]            // answers for spr4ans
global.cardans[12] = [spr5L2,spr1L2]            // answers for spr5ans
global.cardans[13] = [spr6L2]                     // answers for spr6ans
global.cardans[14] = [spr7L2]                     // answers for spr7ans
global.cardans[15] = [spr8L2]                    // answers for spr8ans
}


}