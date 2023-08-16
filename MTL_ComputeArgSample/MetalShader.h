//
//  MetalShader.h
//  MTL_ComputeArgSample
//
//  Created by 63rabbits goodman on 2023/08/16.
//

#ifndef MetalShader_h
#define MetalShader_h



#include <simd/simd.h>

enum {
    // Compute Shader Argument Table
    // Buffer index
    kCATBindex_smallArg = 0,
    kCATBindex_largeArg = 1,
    kCATBindex_result   = 2
};

struct ShaderSmallArg {
    float   bias;
    float   scale;
};

struct ShaderLargeArg {
    float   A;
    float   B;
};



#endif /* MetalShader_h */
