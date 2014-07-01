#version 400
#extension GL_ARB_shader_bit_encoding : require
struct vec1 {
	float x;
};
struct uvec1 {
	uint x;
};
struct ivec1 {
	int x;
};
subroutine void SubroutineType();
uniform sampler3D TextureBase;
uniform sampler3D TextureDetail;
 in  vec4 VtxGeoOutput0;
vec4 Input0;
layout(location = 0) out  vec4 PixOutput0;
#define Output0 PixOutput0
layout(location = 1) out  vec4 PixOutput1;
#define Output1 PixOutput1
layout(location = 2) out  vec4 PixOutput2;
#define Output2 PixOutput2
vec4 Temp[2];
ivec4 Temp_int[2];
uvec4 Temp_uint[2];
void main()
{
    //--- Start Early Main ---
    Input0 = VtxGeoOutput0;
    //--- End Early Main ---
    //Instruction 0
    //SAMPLE
    Temp_int[0] = floatBitsToInt(texture(TextureBase, Input0.xyz));
    //Instruction 1
    //SAMPLE
    Temp_int[1] = floatBitsToInt(textureOffset(TextureDetail, Input0.xyz, ivec3(1, 2, 3)));
    //Instruction 2
    //MUL
    Output0 = (intBitsToFloat(Temp_int[0]) * intBitsToFloat(Temp_int[1]));
    //Instruction 3
    //SAMPLE_D
    Temp_int[0] = floatBitsToInt(textureGradOffset(TextureBase, Input0.xyz, vec4(vec4(0.300000, 0.300000, 0.300000, 0.000000)).xyz, vec4(vec4(0.400000, 0.400000, 0.400000, 0.000000)).xyz, ivec3(4, 4, 4)));
    //Instruction 4
    //SAMPLE_D
    Temp_int[1] = floatBitsToInt(textureGradOffset(TextureDetail, Input0.xyz, vec4(vec4(0.300000, 0.300000, 0.300000, 0.000000)).xyz, vec4(vec4(0.400000, 0.400000, 0.400000, 0.000000)).xyz, ivec3(0, 3, 1)));
    //Instruction 5
    //MUL
    Output1 = (intBitsToFloat(Temp_int[0]) * intBitsToFloat(Temp_int[1]));
    //Instruction 6
    //SAMPLE_B
    Temp_int[0] = floatBitsToInt(texture(TextureBase, Input0.xyz, 0.200000));
    //Instruction 7
    //SAMPLE_B
    Temp_int[1] = floatBitsToInt(textureOffset(TextureDetail, Input0.xyz, ivec3(1, 2, -3), 0.200000));
    //Instruction 8
    //MUL
    Output2 = (intBitsToFloat(Temp_int[0]) * intBitsToFloat(Temp_int[1]));
    //Instruction 9
    //RET
    return;
}
