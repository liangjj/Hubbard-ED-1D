function test_suite = test_unequal_time_gf_6_sites
initTestSuite;
end

function inp = setup
inp.in_t = 1;
inp.in_U = 4;
inp.in_noOfSites = 6;
inp.in_noOfUp = 3;
inp.in_noOfDn = 5;
end

function teardown(inp)
% do nothing
end

function test_unqual_time_gf_0_0(inp)
in_tau = 0;
[ out_spinUpGreenFunction, out_spinDnGreenFunction ] = unequalTimeGF( inp.in_t, inp.in_U, in_tau, inp.in_noOfSites, inp.in_noOfUp, inp.in_noOfDn );

assertElementsAlmostEqual(out_spinUpGreenFunction,...
   [0.5 -0.30905 -0.0020652 0.14017 -0.0020652 -0.30905;...
    -0.30905 0.5 -0.30905 -0.0020652 0.14017 -0.0020652;...
    -0.0020652 -0.30905 0.5 -0.30905 -0.0020652 0.14017;...
    0.14017 -0.0020652 -0.30905 0.5 -0.30905 -0.0020652;...
    -0.0020652 0.14017 -0.0020652 -0.30905 0.5 -0.30905;...
    -0.30905 -0.0020652 0.14017 -0.0020652 -0.30905 0.5],...
   'relative', 0.001);

assertElementsAlmostEqual(out_spinDnGreenFunction,...
   [0.16667 -0.14549 0.14151 -0.13749 0.14151 -0.14549;...
    -0.14549 0.16667 -0.14549 0.14151 -0.13749 0.14151;...
    0.14151 -0.14549 0.16667 -0.14549 0.14151 -0.13749;...
    -0.13749 0.14151 -0.14549 0.16667 -0.14549 0.14151;...
    0.14151 -0.13749 0.14151 -0.14549 0.16667 -0.14549;...
    -0.14549 0.14151 -0.13749 0.14151 -0.14549 0.16667],...
    'relative', 0.001);
end

function test_unqual_time_gf_0_5(inp)
in_tau = 0.5;
[ out_spinUpGreenFunction, out_spinDnGreenFunction ] = unequalTimeGF( inp.in_t, inp.in_U, in_tau, inp.in_noOfSites, inp.in_noOfUp, inp.in_noOfDn );

assertElementsAlmostEqual(out_spinUpGreenFunction,...
   [0.044281 -0.02624 -0.0062332 0.021172 -0.0062332 -0.02624;...
    -0.02624 0.044281 -0.02624 -0.0062332 0.021172 -0.0062332;...
    -0.0062332 -0.02624 0.044281 -0.02624 -0.0062332 0.021172;...
    0.021172 -0.0062332 -0.02624 0.044281 -0.02624 -0.0062332;...
    -0.0062332 0.021172 -0.0062332 -0.02624 0.044281 -0.02624;...
    -0.02624 -0.0062332 0.021172 -0.0062332 -0.02624 0.044281],...
   'relative', 0.001);

assertElementsAlmostEqual(out_spinDnGreenFunction,...
   [0.014575 -0.013986 0.013812 -0.013588 0.013812 -0.013986;...
    -0.013986 0.014575 -0.013986 0.013812 -0.013588 0.013812;...
    0.013812 -0.013986 0.014575 -0.013986 0.013812 -0.013588;...
    -0.013588 0.013812 -0.013986 0.014575 -0.013986 0.013812;...
    0.013812 -0.013588 0.013812 -0.013986 0.014575 -0.013986;...
    -0.013986 0.013812 -0.013588 0.013812 -0.013986 0.014575],...
    'relative', 0.001);
end

function test_unqual_time_gf_1_0(inp)
in_tau = 1.0;
[ out_spinUpGreenFunction, out_spinDnGreenFunction ] = unequalTimeGF( inp.in_t, inp.in_U, in_tau, inp.in_noOfSites, inp.in_noOfUp, inp.in_noOfDn );

assertElementsAlmostEqual(out_spinUpGreenFunction,...
   [0.0043129 -0.0024579 -0.0010315 0.0026811 -0.0010315 -0.0024579;...
    -0.0024579 0.0043129 -0.0024579 -0.0010315 0.0026811 -0.0010315;...
    -0.0010315 -0.0024579 0.0043129 -0.0024579 -0.0010315 0.0026811;...
    0.0026811 -0.0010315 -0.0024579 0.0043129 -0.0024579 -0.0010315;...
    -0.0010315 0.0026811 -0.0010315 -0.0024579 0.0043129 -0.0024579;...
    -0.0024579 -0.0010315 0.0026811 -0.0010315 -0.0024579 0.0043129],...
   'relative', 0.001);

assertElementsAlmostEqual(out_spinDnGreenFunction,...
   [0.001352 -0.0013343 0.0013278 -0.0013178 0.0013278 -0.0013343;...
    -0.0013343 0.001352 -0.0013343 0.0013278 -0.0013178 0.0013278;...
    0.0013278 -0.0013343 0.001352 -0.0013343 0.0013278 -0.0013178;...
    -0.0013178 0.0013278 -0.0013343 0.001352 -0.0013343 0.0013278;...
    0.0013278 -0.0013178 0.0013278 -0.0013343 0.001352 -0.0013343;...
    -0.0013343 0.0013278 -0.0013178 0.0013278 -0.0013343 0.001352],...
    'relative', 0.001);
end