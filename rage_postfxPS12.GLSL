#version 450

layout(constant_id = 1258) const uint boolConstants = 0u;
layout(constant_id = 1259) const uint s_fetch4 = 0u;
layout(constant_id = 4) const bool s0_useColor = true;
layout(constant_id = 5) const bool s0_useShadow = true;
layout(constant_id = 6) const bool s1_useColor = true;
layout(constant_id = 7) const bool s1_useShadow = true;
layout(constant_id = 8) const bool s2_useColor = true;
layout(constant_id = 9) const bool s2_useShadow = true;
layout(constant_id = 10) const bool s3_useColor = true;
layout(constant_id = 11) const bool s3_useShadow = true;
layout(constant_id = 12) const bool s4_useColor = true;
layout(constant_id = 13) const bool s4_useShadow = true;
layout(constant_id = 14) const bool s5_useColor = true;
layout(constant_id = 15) const bool s5_useShadow = true;
layout(constant_id = 16) const bool s6_useColor = true;
layout(constant_id = 17) const bool s6_useShadow = true;
layout(constant_id = 1255) const uint point_mode = 0u;
layout(constant_id = 1249) const bool alpha_test = false;
layout(constant_id = 1250) const uint alpha_func = 7u;

layout(set = 0, binding = 2, std140) uniform cbuffer_t
{
    vec4 f[224];
    ivec4 i[16];
} c;

layout(set = 0, binding = 3, std140) uniform D3D9SharedPS
{
    vec4 _m0;
    vec2 _m1;
    vec2 _m2;
    float _m3;
    float _m4;
    vec4 _m5;
    vec2 _m6;
    vec2 _m7;
    float _m8;
    float _m9;
    vec4 _m10;
    vec2 _m11;
    vec2 _m12;
    float _m13;
    float _m14;
    vec4 _m15;
    vec2 _m16;
    vec2 _m17;
    float _m18;
    float _m19;
    vec4 _m20;
    vec2 _m21;
    vec2 _m22;
    float _m23;
    float _m24;
    vec4 _m25;
    vec2 _m26;
    vec2 _m27;
    float _m28;
    float _m29;
    vec4 _m30;
    vec2 _m31;
    vec2 _m32;
    float _m33;
    float _m34;
    vec4 _m35;
    vec2 _m36;
    vec2 _m37;
    float _m38;
    float _m39;
} D3D9SharedPS_1;

layout(push_constant, std430) uniform render_state_t
{
    vec3 fog_color;
    float fog_scale;
    float fog_end;
    float fog_density;
    float alpha_ref;
} render_state;

layout(set = 0, binding = 4) uniform sampler2D s0_2d;
layout(set = 0, binding = 5) uniform sampler2DShadow s0_2d_shadow;
layout(set = 0, binding = 6) uniform sampler2D s1_2d;
layout(set = 0, binding = 7) uniform sampler2DShadow s1_2d_shadow;
layout(set = 0, binding = 8) uniform sampler2D s2_2d;
layout(set = 0, binding = 9) uniform sampler2DShadow s2_2d_shadow;
layout(set = 0, binding = 10) uniform sampler2D s3_2d;
layout(set = 0, binding = 11) uniform sampler2DShadow s3_2d_shadow;
layout(set = 0, binding = 12) uniform sampler2D s4_2d;
layout(set = 0, binding = 13) uniform sampler2DShadow s4_2d_shadow;
layout(set = 0, binding = 14) uniform sampler2D s5_2d;
layout(set = 0, binding = 15) uniform sampler2DShadow s5_2d_shadow;
layout(set = 0, binding = 16) uniform sampler2D s6_2d;
layout(set = 0, binding = 17) uniform sampler2DShadow s6_2d_shadow;

layout(location = 0, index = 0) out vec4 oC0;
layout(location = 0) in vec4 in_Texcoord0;
vec4 v[16];
vec4 r0 = vec4(0.0);
vec4 r1 = vec4(0.0);
vec4 r2 = vec4(0.0);
vec4 r3 = vec4(0.0);
vec4 r4 = vec4(0.0);
vec4 r5 = vec4(0.0);
vec4 r6 = vec4(0.0);
vec4 r7 = vec4(0.0);
vec4 r8 = vec4(0.0);
vec4 r9 = vec4(0.0);
vec4 r10 = vec4(0.0);
int iter;
const vec4 _1575_init = vec4(0.0);

void ps_main(){
    r0 = texture(s1_2d, v[0].xy);
    vec4 _148 = r0;    _148.y = (-c.f[77].x) + c.f[77].y;    r0 = _148;
    float _152 = 1.0 / r0.y;    vec4 _155 = r0;    _155.y = _152;    r0 = _155;
    vec4 _163 = r0;
    _163.z = r0.y * c.f[77].y;
    r0 = _163;
    vec4 _172 = r0;
    _172.z = r0.z * (-c.f[77].x);
    r0 = _172;
    vec4 _183 = r0;
    _183.x = fma(c.f[77].y, -r0.y, r0.x);
    r0 = _183;
    float _187 = 1.0 / r0.x;
    vec4 _189 = r0;
    _189.x = isnan(3.4028234663852885981170418348452e+38) ? _187 : (isnan(_187) ? 3.4028234663852885981170418348452e+38 : min(_187, 3.4028234663852885981170418348452e+38));
    r0 = _189;
    vec4 _196 = r0;
    _196.y = r0.z * r0.x;
    r0 = _196;
    r1 = texture(s2_2d, v[0].xy);
    r2 = texture(s3_2d, v[0].xy);
    vec4 _264 = r0;
    _264.w = abs(c.f[79].w);
    r0 = _264;
    r3 = vec4(-0.5, -1.5, 1.5, 0.5);
    vec2 _277 = fma(c.f[76].xy, r3.xy, v[0].xy);
    r4 = vec4(_277.x, _277.y, r4.z, r4.w);
    vec4 _280 = r4;
    r4 = texture(s2_2d, _280.xy); 
    vec2 _317 = fma(c.f[76].xy, r3.zx, v[0].xy);
    r5 = vec4(_317.x, _317.y, r5.z, r5.w);
    vec4 _320 = r5;
    r5 = texture(s2_2d, _320.xy); 
    vec2 _356 = fma(c.f[76].xy, r3.wz, v[0].xy);
    r3 = vec4(_356.x, r3.y, _356.y, r3.w);
    r6 = texture(s2_2d, r3.xzzw.xy); 
    vec2 _397 = fma(c.f[76].xy, r3.yw, v[0].xy);
    r3 = vec4(_397.x, _397.y, r3.z, r3.w);
    r7 = texture(s2_2d, r3.xy); 
    vec4 _434 = r1;
    _434.w = dot(r4.xyz, r4.xyz);
    r1 = _434;
    float _438 = 1.0 / r1.w;
    vec4 _440 = r1;
    _440.w = isnan(3.4028234663852885981170418348452e+38) ? _438 : (isnan(_438) ? 3.4028234663852885981170418348452e+38 : min(_438, 3.4028234663852885981170418348452e+38));
    r1 = _440;
    vec3 _452 = mix(r4.xyz, vec4(0.0, 0.2125000059604644775390625, 0.7153999805450439453125, 0.07209999859333038330078125).xxx, greaterThanEqual(-abs(r1.www), vec3(0.0)));
    r3 = vec4(_452.x, _452.y, _452.z, r3.w);
    vec4 _460 = r1;
    _460.w = dot(r5.xyz, r5.xyz);
    r1 = _460;
    float _464 = 1.0 / r1.w;
    vec4 _466 = r1;
    _466.w = isnan(3.4028234663852885981170418348452e+38) ? _464 : (isnan(_464) ? 3.4028234663852885981170418348452e+38 : min(_464, 3.4028234663852885981170418348452e+38));
    r1 = _466;
    vec3 _476 = mix(r5.xyz, vec4(0.0, 0.2125000059604644775390625, 0.7153999805450439453125, 0.07209999859333038330078125).xxx, greaterThanEqual(-abs(r1.www), vec3(0.0)));
    r4 = vec4(_476.x, _476.y, _476.z, r4.w);
    vec4 _484 = r1;
    _484.w = dot(r6.xyz, r6.xyz);
    r1 = _484;
    float _488 = 1.0 / r1.w;
    vec4 _490 = r1;
    _490.w = isnan(3.4028234663852885981170418348452e+38) ? _488 : (isnan(_488) ? 3.4028234663852885981170418348452e+38 : min(_488, 3.4028234663852885981170418348452e+38));
    r1 = _490;
    vec3 _500 = mix(r6.xyz, vec4(0.0, 0.2125000059604644775390625, 0.7153999805450439453125, 0.07209999859333038330078125).xxx, greaterThanEqual(-abs(r1.www), vec3(0.0)));
    r5 = vec4(_500.x, _500.y, _500.z, r5.w);
    vec4 _508 = r1;
    _508.w = dot(r7.xyz, r7.xyz);
    r1 = _508;
    float _512 = 1.0 / r1.w;
    vec4 _514 = r1;
    _514.w = isnan(3.4028234663852885981170418348452e+38) ? _512 : (isnan(_512) ? 3.4028234663852885981170418348452e+38 : min(_512, 3.4028234663852885981170418348452e+38));
    r1 = _514;
    vec3 _524 = mix(r7.xyz, vec4(0.0, 0.2125000059604644775390625, 0.7153999805450439453125, 0.07209999859333038330078125).xxx, greaterThanEqual(-abs(r1.www), vec3(0.0)));
    r6 = vec4(_524.x, _524.y, _524.z, r6.w);
    vec4 _532 = r1;
    _532.w = dot(r1.xyz, r1.xyz);
    r1 = _532;
    float _536 = 1.0 / r1.w;
    vec4 _538 = r1;
    _538.w = isnan(3.4028234663852885981170418348452e+38) ? _536 : (isnan(_536) ? 3.4028234663852885981170418348452e+38 : min(_536, 3.4028234663852885981170418348452e+38));
    r1 = _538;
    vec3 _548 = mix(r1.xyz, vec4(0.0, 0.2125000059604644775390625, 0.7153999805450439453125, 0.07209999859333038330078125).xxx, greaterThanEqual(-abs(r1.www), vec3(0.0)));
    r7 = vec4(_548.x, _548.y, _548.z, r7.w);
    vec4 _561 = r0;
    _561.x = fma(r0.z, r0.x, -c.f[78].w);
    r0 = _561;
    vec4 _572 = r0;
    _572.x = fma(c.f[78].y, -r3.w, r0.x);
    r0 = _572;
    vec4 _578 = r1;
    _578.w = max(r0.x, 0.0);
    r1 = _578;
    float _583 = 1.0 / c.f[78].z;
    vec4 _585 = r0;
    _585.x = isnan(3.4028234663852885981170418348452e+38) ? _583 : (isnan(_583) ? 3.4028234663852885981170418348452e+38 : min(_583, 3.4028234663852885981170418348452e+38));
    r0 = _585;
    vec4 _592 = r0;
    _592.x = r1.w * r0.x;
    r0 = _592;
    vec4 _603 = r1;
    _603.w = mix(c.f[79].y, c.f[79].z, r0.x);
    r1 = _603;
    vec4 _611 = r0;
    _611.x = min(c.f[79].z, r1.w);
    r0 = _611;
    vec4 _617 = r0;
    _617.z = dot(r7.xyz, vec4(0.0, 0.2125000059604644775390625, 0.7153999805450439453125, 0.07209999859333038330078125).yzw);
    r0 = _617;
    vec4 _624 = r8;
    _624.x = dot(r3.xyz, vec4(0.0, 0.2125000059604644775390625, 0.7153999805450439453125, 0.07209999859333038330078125).yzw);
    r8 = _624;
    vec4 _630 = r8;
    _630.y = dot(r4.xyz, vec4(0.0, 0.2125000059604644775390625, 0.7153999805450439453125, 0.07209999859333038330078125).yzw);
    r8 = _630;
    vec4 _636 = r8;
    _636.z = dot(r5.xyz, vec4(0.0, 0.2125000059604644775390625, 0.7153999805450439453125, 0.07209999859333038330078125).yzw);
    r8 = _636;
    vec4 _642 = r8;
    _642.w = dot(r6.xyz, vec4(0.0, 0.2125000059604644775390625, 0.7153999805450439453125, 0.07209999859333038330078125).yzw);
    r8 = _642;
    vec4 _647 = r1;
    _647.w = dot(r8, vec4(0.25, 1.0, 256.0, 0.0).xxxx);
    r1 = _647;
    r8 += (-r1.wwww);
    vec4 _657 = r2;
    _657.w = dot(r8, r8);
    r2 = _657;
    vec4 _665 = r0;
    _665.z = r0.z + (-r1.w);
    r0 = _665;
    vec4 _675 = r0;
    _675.z = fma(r0.z, r0.z, -r2.w);
    r0 = _675;
    vec4 _682 = r0;
    _682.x = r0.x * r0.x;
    r0 = _682;
    vec4 _691 = r0;
    _691.x = (r0.z >= 0.0) ? 1.0 : r0.x;
    r0 = _691;
    r8 = texture(s0_2d, v[0].xy); 
    r8 = vec4(r8.x, vec4(0.25, 1.0, 256.0, 0.0).yz.x, vec4(0.25, 1.0, 256.0, 0.0).yz.y, r8.w);
    r9 = fma(r8.wwww, -r8.zzzz, vec4(0.0, 2.0, 4.0, 8.0));
    r9 = mix(vec4(0.25, 1.0, 256.0, 0.0).wwww, vec4(0.25, 1.0, 256.0, 0.0).yyyy, greaterThanEqual(r9, vec4(0.0)));
    r10 = fma(r8.wwww, -vec4(256.0, 2.0, 4.0, 8.0).xxxx, vec4(256.0, 2.0, 4.0, 8.0).yzwx);
    r10 = mix(-vec4(0.25, 1.0, 256.0, 0.0).wwww, -vec4(0.25, 1.0, 256.0, 0.0).yyyy, greaterThanEqual(r10, vec4(0.0)));
    r9 += r10;
    r9 *= vec4(-0.5, -1.5, 1.5, 0.5).xxxx;
    vec4 _760 = r0;
    _760.z = dot(r9, vec4(0.25, 1.0, 256.0, 0.0).yyyy);
    r0 = _760;
    vec4 _766 = r0;
    _766.z = r0.z + 0.5;
    r0 = _766;
    float _770 = 1.0 / r0.z;
    vec4 _772 = r0;
    _772.z = isnan(3.4028234663852885981170418348452e+38) ? _770 : (isnan(_770) ? 3.4028234663852885981170418348452e+38 : min(_770, 3.4028234663852885981170418348452e+38));
    r0 = _772;
    vec3 _778 = r3.xyz * r9.xxx;
    r8 = vec4(_778.x, r8.y, _778.y, _778.z);
    vec3 _786 = fma(r7.xyz, vec4(-0.5, -1.5, 1.5, 0.5).www, r8.xzw);
    r7 = vec4(_786.x, _786.y, _786.z, r7.w);
    vec3 _795 = fma(r4.xyz, r9.yyy, r7.xyz);
    r7 = vec4(_795.x, _795.y, _795.z, r7.w);
    vec3 _804 = fma(r5.xyz, r9.zzz, r7.xyz);
    r7 = vec4(_804.x, _804.y, _804.z, r7.w);
    vec3 _813 = fma(r6.xyz, r9.www, r7.xyz);
    r7 = vec4(_813.x, _813.y, _813.z, r7.w);
    vec3 _820 = r0.zzz * r7.xyz;
    r7 = vec4(_820.x, _820.y, _820.z, r7.w);
    vec4 _828 = r0;
    _828.z = (-r0.x) + 1.0;
    r0 = _828;
    vec4 _834 = r1;
    _834.w = r0.x * 0.25;
    r1 = _834;
    vec3 _840 = r3.xyz * r1.www;
    r3 = vec4(_840.x, _840.y, _840.z, r3.w);
    vec3 _849 = fma(r7.xyz, r0.zzz, r3.xyz);
    r3 = vec4(_849.x, _849.y, _849.z, r3.w);
    vec3 _858 = fma(r4.xyz, r1.www, r3.xyz);
    r3 = vec4(_858.x, _858.y, _858.z, r3.w);
    vec3 _867 = fma(r5.xyz, r1.www, r3.xyz);
    r3 = vec4(_867.x, _867.y, _867.z, r3.w);
    vec3 _876 = fma(r6.xyz, r1.www, r3.xyz);
    r3 = vec4(_876.x, _876.y, _876.z, r3.w);
    vec3 _884 = fma(v[0].yxy, vec4(2.0, -1.0, 0.125, 0.0).xxx, vec4(2.0, -1.0, 0.125, 0.0).yyy);
    r4 = vec4(_884.x, _884.y, _884.z, r4.w);
    vec4 _893 = r0;
    _893.z = r4.y * c.f[77].z;
    r0 = _893;
    vec4 _900 = r0;
    _900.z = r0.y * r0.z;
    r0 = _900;
    vec4 _909 = r1;
    _909.w = (-r4.x) * c.f[77].w;
    r1 = _909;
    vec4 _916 = r1;
    _916.w = r0.y * r1.w;
    r1 = _916;
    vec3 _924 = r1.www * c.f[73].xyz;
    r5 = vec4(_924.x, _924.y, _924.z, r5.w);
    vec3 _935 = fma(r0.zzz, c.f[72].xyz, r5.xyz);
    r5 = vec4(_935.x, _935.y, _935.z, r5.w);
    vec3 _947 = fma(-r0.yyy, c.f[74].xyz, r5.xyz);
    r5 = vec4(_947.x, _947.y, _947.z, r5.w);
    vec3 _956 = r5.xyz + c.f[75].xyz;
    r5 = vec4(_956.x, _956.y, _956.z, r5.w);
    vec4 _966 = r0;
    _966.y = (-r5.z) * c.f[77].z;
    r0 = _966;
    float _970 = 1.0 / r0.y;
    vec4 _972 = r0;
    _972.y = isnan(3.4028234663852885981170418348452e+38) ? _970 : (isnan(_970) ? 3.4028234663852885981170418348452e+38 : min(_970, 3.4028234663852885981170418348452e+38));
    r0 = _972;
    vec4 _979 = r6;
    _979.x = r5.x * r0.y;
    r6 = _979;
    vec4 _987 = r0;
    _987.y = r5.z * c.f[77].w;
    r0 = _987;
    float _991 = 1.0 / r0.y;
    vec4 _993 = r0;
    _993.y = isnan(3.4028234663852885981170418348452e+38) ? _991 : (isnan(_991) ? 3.4028234663852885981170418348452e+38 : min(_991, 3.4028234663852885981170418348452e+38));
    r0 = _993;
    vec4 _1000 = r6;
    _1000.y = r5.y * r0.y;
    r6 = _1000;
    vec2 _1007 = (-r4.yz) + r6.xy;
    r0 = vec4(r0.x, _1007.x, _1007.y, r0.w);
    vec2 _1016 = r0.yz * c.f[80].xx;
    r0 = vec4(r0.x, _1016.x, _1016.y, r0.w);
    vec2 _1022 = r0.yz * vec4(2.0, -1.0, 0.125, 0.0).zz;
    r4 = vec4(_1022.x, _1022.y, r4.z, r4.w);
    r5 = texture(s6_2d, v[0].xy); 
    vec4 _1063 = r1;
    _1063.w = r5.x + (-c.f[85].x);
    r1 = _1063;
    vec2 _1068 = r3.xy * vec4(0.0, 2.0, 4.0, 8.0).ww;
    r4 = vec4(r4.x, r4.y, _1068.x, _1068.y);
    vec2 _1077 = fma(v[0].xy, vec4(58.16400146484375, 47.130001068115234375, 0.0, 0.0).xy, r4.zw);
    r4 = vec4(r4.x, r4.y, _1077.x, _1077.y);
    r5 = texture(s5_2d, r4.zwzw.xy); 
    vec4 _1114 = r2;
    _1114.w = r5.x + (-0.5);
    r2 = _1114;
    vec2 _1123 = fma(r4.xy, r2.ww, v[0].xy);
    r4 = vec4(r4.x, r4.y, _1123.x, _1123.y);
    r5 = vec4(r3.xyz.x, r3.xyz.y, r3.xyz.z, r5.w);
    vec4 _1131 = r2;
    _1131.w = 1.0;
    r2 = _1131;
    vec4 _1134 = r3;
    _1134.w = 1.0;
    r3 = _1134;
    iter = 7;
    for (;;)
    {
        if (iter == 0)
        {
            break;
        }
        iter--;
        vec2 _1154 = fma(r4.xy, r3.ww, r4.zw);
        r6 = vec4(_1154.x, _1154.y, r6.z, r6.w);
        r7 = texture(s6_2d, r6.xy); 
        vec4 _1192 = r5;
        _1192.w = r7.x + (-c.f[85].x);
        r5 = _1192;
        vec4 _1200 = r5;
        _1200.w = (r5.w >= 0.0) ? 0.0 : 1.0;
        r5 = _1200;
        vec4 _1202 = r6;
        r6 = texture(s2_2d, _1202.xy); 
        vec3 _1236 = fma(r6.xyz, r5.www, r5.xyz);
        r5 = vec4(_1236.x, _1236.y, _1236.z, r5.w);
        vec4 _1244 = r2;
        _1244.w = r2.w + r5.w;
        r2 = _1244;
        vec4 _1250 = r3;
        _1250.w = r3.w + 1.0;
        r3 = _1250;
        continue;
    }
    float _1254 = 1.0 / r2.w;
    vec4 _1256 = r2;
    _1256.w = isnan(3.4028234663852885981170418348452e+38) ? _1254 : (isnan(_1254) ? 3.4028234663852885981170418348452e+38 : min(_1254, 3.4028234663852885981170418348452e+38));
    r2 = _1256;
    vec2 _1264 = r0.yz * c.f[44].xy;
    r0 = vec4(r0.x, _1264.x, _1264.y, r0.w);
    vec4 _1274 = r0;
    _1274.y = dot(r0.yz, r0.yz) + 0.0;
    r0 = _1274;
    float _1279 = inversesqrt(abs(r0.y));
    vec4 _1281 = r0;
    _1281.y = isnan(3.4028234663852885981170418348452e+38) ? _1279 : (isnan(_1279) ? 3.4028234663852885981170418348452e+38 : min(_1279, 3.4028234663852885981170418348452e+38));
    r0 = _1281;
    float _1285 = 1.0 / r0.y;
    vec4 _1287 = r0;
    _1287.y = isnan(3.4028234663852885981170418348452e+38) ? _1285 : (isnan(_1285) ? 3.4028234663852885981170418348452e+38 : min(_1285, 3.4028234663852885981170418348452e+38));
    r0 = _1287;
    vec4 _1293 = r0;
    _1293.y = r0.y * 0.5;
    r0 = _1293;
    vec4 _1299 = r0;
    _1299.x = r0.x + 1.0;
    r0 = _1299;
    float _1303 = 1.0 / r0.x;
    vec4 _1305 = r0;
    _1305.x = isnan(3.4028234663852885981170418348452e+38) ? _1303 : (isnan(_1303) ? 3.4028234663852885981170418348452e+38 : min(_1303, 3.4028234663852885981170418348452e+38));
    r0 = _1305;
    float _1311 = r0.y * r0.x;
    float _1711 = isnan(0.0) ? _1311 : (isnan(_1311) ? 0.0 : max(_1311, 0.0));
    vec4 _1313 = r0;
    _1313.x = isnan(1.0) ? _1711 : (isnan(_1711) ? 1.0 : min(_1711, 1.0));
    r0 = _1313;
    vec3 _1322 = fma(r5.xyz, r2.www, -r3.xyz);
    r4 = vec4(_1322.x, _1322.y, _1322.z, r4.w);
    vec3 _1331 = fma(r0.xxx, r4.xyz, r3.xyz);
    r0 = vec4(_1331.x, _1331.y, _1331.z, r0.w);
    vec3 _1341 = mix(r0.xyz, r3.xyz, greaterThanEqual(r1.www, vec3(0.0)));
    r0 = vec4(_1341.x, _1341.y, _1341.z, r0.w);
    vec3 _1352 = mix(r1.xyz, r0.xyz, greaterThanEqual(-r0.www, vec3(0.0)));
    r0 = vec4(_1352.x, _1352.y, _1352.z, r0.w);
    r1 = texture(s4_2d, vec4(0.0, 0.2125000059604644775390625, 0.7153999805450439453125, 0.07209999859333038330078125).xxxx.xy); 
    float _1386 = 1.0 / r1.x;
    vec4 _1388 = r0;
    _1388.w = isnan(3.4028234663852885981170418348452e+38) ? _1386 : (isnan(_1386) ? 3.4028234663852885981170418348452e+38 : min(_1386, 3.4028234663852885981170418348452e+38));
    r0 = _1388;
    vec4 _1397 = r0;
    _1397.w = r0.w * c.f[81].y;
    r0 = _1397;
    float _1401 = 1.0 / r0.w;
    vec4 _1403 = r1;
    _1403.x = isnan(3.4028234663852885981170418348452e+38) ? _1401 : (isnan(_1401) ? 3.4028234663852885981170418348452e+38 : min(_1401, 3.4028234663852885981170418348452e+38));
    r1 = _1403;
    vec4 _1411 = r1;
    _1411.x = r1.x * c.f[81].x;
    r1 = _1411;
    vec3 _1422 = fma(r2.xyz, c.f[66].xxx, -r1.xxx);
    r1 = vec4(_1422.x, _1422.y, _1422.z, r1.w);
    vec3 _1430 = r1.xyz * c.f[81].zzz;
    r2 = vec4(_1430.x, _1430.y, _1430.z, r2.w);
    vec3 _1436 = r2.xyz * vec4(0.25, 1.0, 256.0, 0.0).xxx;
    r2 = vec4(_1436.x, _1436.y, _1436.z, r2.w);
    vec3 _1445 = mix(vec4(0.0, 0.2125000059604644775390625, 0.7153999805450439453125, 0.07209999859333038330078125).xxx, r2.xyz, greaterThanEqual(r1.xyz, vec3(0.0)));
    r1 = vec4(_1445.x, _1445.y, _1445.z, r1.w);
    vec3 _1455 = fma(r0.xyz, c.f[66].xxx, r1.xyz);
    r0 = vec4(_1455.x, _1455.y, _1455.z, r0.w);
    vec3 _1462 = r0.www * r0.xyz;
    r1 = vec4(_1462.x, _1462.y, _1462.z, r1.w);
    vec4 _1469 = r1;
    _1469.x = dot(r1.xyz, vec4(0.0, 0.2125000059604644775390625, 0.7153999805450439453125, 0.07209999859333038330078125).yzw);
    r1 = _1469;
    vec3 _1478 = fma(r0.xyz, r0.www, -r1.xxx);
    r0 = vec4(_1478.x, _1478.y, _1478.z, r0.w);
    vec3 _1489 = fma(c.f[82].xxx, r0.xyz, r1.xxx);
    r0 = vec4(_1489.x, _1489.y, _1489.z, r0.w);
    vec4 _1499 = r0;
    _1499.w = r1.x * c.f[84].w;
    r0 = _1499;
    vec3 _1506 = r0.www * c.f[84].xyz;
    r1 = vec4(r1.x, _1506.x, _1506.y, _1506.z);
    float _1732 = isnan(0.0) ? r0.w : (isnan(r0.w) ? 0.0 : max(r0.w, 0.0));
    vec4 _1512 = r2;
    _1512.x = isnan(1.0) ? _1732 : (isnan(_1732) ? 1.0 : min(_1732, 1.0));
    r2 = _1512;
    vec3 _1522 = fma(c.f[84].xyz, -r0.www, r0.xyz);
    r0 = vec4(_1522.x, _1522.y, _1522.z, r0.w);
    vec3 _1531 = fma(r2.xxx, r0.xyz, r1.yzw);
    r0 = vec4(_1531.x, _1531.y, _1531.z, r0.w);
    vec3 _1540 = r0.xyz * c.f[83].xyz;
    r0 = vec4(_1540.x, _1540.y, _1540.z, r0.w);
    vec3 _1547 = r0.xyz + r0.xyz;
    r0 = vec4(_1547.x, _1547.y, _1547.z, r0.w);
    float _1743 = isnan(0.0) ? r1.x : (isnan(r1.x) ? 0.0 : max(r1.x, 0.0));
    vec4 _1553 = r1;
    _1553.x = isnan(1.0) ? _1743 : (isnan(_1743) ? 1.0 : min(_1743, 1.0));
    r1 = _1553;
    vec4 _1562 = r0;
    _1562.w = (-r8.y) + c.f[82].z;
    r0 = _1562;
    vec4 _1572 = r2;
    _1572.x = (r0.w == 0.0) ? 1.0 : pow(abs(r1.x), r0.w);
    r2 = _1572;
    vec3 _1580 = r0.xyz * r2.xxx;
    oC0 = vec4(_1580.x, _1580.y, _1580.z, oC0.w);
    vec4 _1584 = oC0;
    _1584.w = 1.0;
    oC0 = _1584;
}

void main(){
    oC0 = _1575_init;
    oC0 = _1575_init;
    v[0u] = mix(vec4(in_Texcoord0.x, in_Texcoord0.y, vec4(0.0).z, vec4(0.0).w), vec4(gl_PointCoord, 0.0, 0.0), bvec4(bitfieldExtract(point_mode, 1, 1) == 1u));
    ps_main();
    if (alpha_test)
    {
        bool _1633;
        switch (alpha_func)
        {
            case 0u:
            {
                _1633 = false;
                break;
            }
            case 1u:
            {
                _1633 = oC0.w < render_state.alpha_ref;
                break;
            }
            case 2u:
            {
                _1633 = oC0.w == render_state.alpha_ref;
                break;
            }
            case 3u:
            {
                _1633 = oC0.w <= render_state.alpha_ref;
                break;
            }
            case 4u:
            {
                _1633 = oC0.w > render_state.alpha_ref;
                break;
            }
            case 5u:
            {
                _1633 = oC0.w != render_state.alpha_ref;
                break;
            }
            case 6u:
            {
                _1633 = oC0.w >= render_state.alpha_ref;
                break;
            }
            default:
            {
                _1633 = true;
                break;
            }
        }
        if (!_1633)
        {
            discard;
        }
    }
}

