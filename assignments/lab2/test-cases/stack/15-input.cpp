
    #include "catch.hpp"
    #include "MyStackImpl.h"
    #include <stack>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test stack with (capacity, len_cmd) = (48,317)") {

    stack<int> ref;
    MyStackImpl<int> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(5628);
    ref.push(5628);

//len_list: 1
//==============================


//==============================
    submit.push(6685);
    ref.push(6685);

//len_list: 2
//==============================


//==============================
    submit.push(6254);
    ref.push(6254);

//len_list: 3
//==============================


//==============================
    submit.push(5739);
    ref.push(5739);

//len_list: 4
//==============================


//==============================
    submit.push(5148);
    ref.push(5148);

//len_list: 5
//==============================


//==============================
    submit.push(2261);
    ref.push(2261);

//len_list: 6
//==============================


//==============================
    submit.push(7590);
    ref.push(7590);

//len_list: 7
//==============================


//==============================
    submit.push(1867);
    ref.push(1867);

//len_list: 8
//==============================


//==============================
    submit.push(1208);
    ref.push(1208);

//len_list: 9
//==============================


//==============================
    submit.push(4888);
    ref.push(4888);

//len_list: 10
//==============================


//==============================
    submit.push(541);
    ref.push(541);

//len_list: 11
//==============================


//==============================
    submit.push(3712);
    ref.push(3712);

//len_list: 12
//==============================


//==============================
    submit.push(3652);
    ref.push(3652);

//len_list: 13
//==============================


//==============================
    submit.push(7573);
    ref.push(7573);

//len_list: 14
//==============================


//==============================
    submit.push(2212);
    ref.push(2212);

//len_list: 15
//==============================


//==============================
    submit.push(6384);
    ref.push(6384);

//len_list: 16
//==============================


//==============================
    submit.push(6866);
    ref.push(6866);

//len_list: 17
//==============================


//==============================
    submit.push(7882);
    ref.push(7882);

//len_list: 18
//==============================


//==============================
    submit.push(1675);
    ref.push(1675);

//len_list: 19
//==============================


//==============================
    submit.push(1456);
    ref.push(1456);

//len_list: 20
//==============================


//==============================
    submit.push(5433);
    ref.push(5433);

//len_list: 21
//==============================


//==============================
    submit.push(1907);
    ref.push(1907);

//len_list: 22
//==============================


//==============================
    submit.push(963);
    ref.push(963);

//len_list: 23
//==============================


//==============================
    submit.push(2759);
    ref.push(2759);

//len_list: 24
//==============================


//==============================
    submit.push(4188);
    ref.push(4188);

//len_list: 25
//==============================


//==============================
    submit.push(4964);
    ref.push(4964);

//len_list: 26
//==============================


//==============================
    submit.push(6298);
    ref.push(6298);

//len_list: 27
//==============================


//==============================
    submit.push(7226);
    ref.push(7226);

//len_list: 28
//==============================


//==============================
    submit.push(8386);
    ref.push(8386);

//len_list: 29
//==============================


//==============================
    submit.push(83);
    ref.push(83);

//len_list: 30
//==============================


//==============================
    submit.push(3770);
    ref.push(3770);

//len_list: 31
//==============================


//==============================
    submit.push(1850);
    ref.push(1850);

//len_list: 32
//==============================


//==============================
    submit.push(2768);
    ref.push(2768);

//len_list: 33
//==============================


//==============================
    submit.push(6950);
    ref.push(6950);

//len_list: 34
//==============================


//==============================
    submit.push(3627);
    ref.push(3627);

//len_list: 35
//==============================


//==============================
    submit.push(9648);
    ref.push(9648);

//len_list: 36
//==============================


//==============================
    submit.push(5957);
    ref.push(5957);

//len_list: 37
//==============================


//==============================
    submit.push(5313);
    ref.push(5313);

//len_list: 38
//==============================


//==============================
    submit.push(2230);
    ref.push(2230);

//len_list: 39
//==============================


//==============================
    submit.push(7318);
    ref.push(7318);

//len_list: 40
//==============================


//==============================
    submit.push(985);
    ref.push(985);

//len_list: 41
//==============================


//==============================
    submit.push(1372);
    ref.push(1372);

//len_list: 42
//==============================


//==============================
    submit.push(7856);
    ref.push(7856);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(8584);
    ref.push(8584);

//len_list: 44
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    submit.push(1849);
    ref.push(1849);

//len_list: 43
//==============================


//==============================
    submit.push(8534);
    ref.push(8534);

//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.push(5636);
    ref.push(5636);

//len_list: 45
//==============================


//==============================
    submit.push(1477);
    ref.push(1477);

//len_list: 46
//==============================


//==============================
    submit.push(9799);
    ref.push(9799);

//len_list: 47
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 44
//==============================


//==============================
    submit.push(6699);
    ref.push(6699);

//len_list: 45
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 44
//==============================


//==============================
    submit.push(6681);
    ref.push(6681);

//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 44
//==============================


//==============================
    submit.push(6609);
    ref.push(6609);

//len_list: 45
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(3709);
    ref.push(3709);

//len_list: 44
//==============================


//==============================
    submit.push(9784);
    ref.push(9784);

//len_list: 45
//==============================


//==============================
    submit.push(8428);
    ref.push(8428);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.push(9598);
    ref.push(9598);

//len_list: 47
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    submit.push(6776);
    ref.push(6776);

//len_list: 48
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(3440);
    ref.push(3440);

//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 47
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    submit.push(7624);
    ref.push(7624);

//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(9360);
    ref.push(9360);

//len_list: 49
//==============================


//==============================
    submit.push(7858);
    ref.push(7858);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.push(5969);
    ref.push(5969);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.push(468);
    ref.push(468);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(39);
    ref.push(39);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(5889);
    ref.push(5889);

//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 47
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    submit.push(7201);
    ref.push(7201);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    submit.push(5911);
    ref.push(5911);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.push(1897);
    ref.push(1897);

//len_list: 47
//==============================


//==============================
    submit.push(1541);
    ref.push(1541);

//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(2370);
    ref.push(2370);

//len_list: 49
//==============================


//==============================
    submit.push(7297);
    ref.push(7297);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.push(709);
    ref.push(709);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(2438);
    ref.push(2438);

//len_list: 52
//==============================


//==============================
    submit.push(4130);
    ref.push(4130);

//len_list: 53
//==============================


//==============================
    submit.push(3265);
    ref.push(3265);

//len_list: 54
//==============================


//==============================
    submit.push(3658);
    ref.push(3658);

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.push(3577);
    ref.push(3577);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(2014);
    ref.push(2014);

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(2879);
    ref.push(2879);

//len_list: 55
//==============================


//==============================
    submit.push(9350);
    ref.push(9350);

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(4290);
    ref.push(4290);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(7954);
    ref.push(7954);

//len_list: 56
//==============================


//==============================
    submit.push(3991);
    ref.push(3991);

//len_list: 57
//==============================


//==============================
    submit.push(9548);
    ref.push(9548);

//len_list: 58
//==============================


//==============================
    submit.push(7972);
    ref.push(7972);

//len_list: 59
//==============================


//==============================
    submit.push(5231);
    ref.push(5231);

//len_list: 60
//==============================


//==============================
    submit.push(9901);
    ref.push(9901);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(9145);
    ref.push(9145);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(164);
    ref.push(164);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.push(5352);
    ref.push(5352);

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(9111);
    ref.push(9111);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(1848);
    ref.push(1848);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(4856);
    ref.push(4856);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(8954);
    ref.push(8954);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.push(2810);
    ref.push(2810);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    submit.push(9511);
    ref.push(9511);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    submit.push(5615);
    ref.push(5615);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(5901);
    ref.push(5901);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.push(1396);
    ref.push(1396);

//len_list: 57
//==============================


//==============================
    submit.push(124);
    ref.push(124);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.push(6264);
    ref.push(6264);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(6591);
    ref.push(6591);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(1310);
    ref.push(1310);

//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(8551);
    ref.push(8551);

//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(9772);
    ref.push(9772);

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(3988);
    ref.push(3988);

//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.push(8556);
    ref.push(8556);

//len_list: 55
//==============================


//==============================
    submit.push(66);
    ref.push(66);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(6252);
    ref.push(6252);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(4372);
    ref.push(4372);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(9742);
    ref.push(9742);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(7963);
    ref.push(7963);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.push(4989);
    ref.push(4989);

//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.push(2990);
    ref.push(2990);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.push(5919);
    ref.push(5919);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(725);
    ref.push(725);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(8885);
    ref.push(8885);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(2058);
    ref.push(2058);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.push(3707);
    ref.push(3707);

//len_list: 62
//==============================


//==============================
    submit.push(5009);
    ref.push(5009);

//len_list: 63
//==============================


//==============================
    submit.push(3689);
    ref.push(3689);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(6933);
    ref.push(6933);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


}
