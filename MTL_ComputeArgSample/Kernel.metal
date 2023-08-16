//
//  Kernel.metal
//  MTL_ComputeArgSample
//
//  Created by 63rabbits goodman on 2023/08/16.
//

#include <metal_stdlib>
#include "MetalShader.h"

using namespace metal;


kernel void computeShader(uint                      index   [[ thread_position_in_grid ]],
                          constant  ShaderSmallArg  *s      [[ buffer( kCATBindex_smallArg ) ]],
                          constant  ShaderLargeArg  *l      [[ buffer( kCATBindex_largeArg ) ]],
                          device    float           *result [[ buffer( kCATBindex_result ) ]]
                          ) {

    result[index] = ( l[index].A + l[index].B + s->bias ) * s->scale;
}
